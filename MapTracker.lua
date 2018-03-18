-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local LibStub = _G.LibStub
local RareScanner = LibStub("AceAddon-3.0"):GetAddon("RareScanner")
local ADDON_NAME, private = ...

-- Locales
local AL = LibStub("AceLocale-3.0"):GetLocale("RareScanner");

-- Tooltips
local RareScannerMapTooltip = LibStub('LibQTip-1.0')

-- Zones ignored
local BROKEN_SHORE_MAPID = 1021
local GROUND_LEVEL = 0 -- TODO: Might add support for different levels
local ETERNAL_DEATH = -1
local TOOLTIP_MAX_WIDTH = 200
local RELOCATED = 1
local NOT_RELOCATED = 0

-- Map details frame
local rsMapTrackerFrame = WorldMapDetailFrame
rsMapTrackerFrame.buttons = {}
rsMapTrackerFrame.questTitles = {}

-- Map events
--local WorldMapFrame_CurrentUpdate = WorldMapFrame:GetScript("OnUpdate") or function() end
rsMapTrackerFrame:RegisterEvent("WORLD_MAP_UPDATE")
rsMapTrackerFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
rsMapTrackerFrame:RegisterEvent("PLAYER_REGEN_ENABLED")

local forzeReload = nil

rsMapTrackerFrame:SetScript('OnEvent', function(_, event) 
	if (event == "WORLD_MAP_UPDATE") then
		RareScanner:ReloadIcons()
	elseif (event == "PLAYER_ENTERING_WORLD") then
		SetMapToCurrentZone()
	elseif (event == "PLAYER_REGEN_ENABLED") then
		if (forzeReload) then
			RareScanner:ReloadIcons(true)
			forzeReload = nil
		end
	end
end)

function RareScanner:ReloadIcons(forze)
	-- If in combat do nothing
	if (InCombatLockdown()) then
		forzeReload = true
		return
	end
	
	-- if forze dump all data and reload
	if (forze) then
		rsMapTrackerFrame.currentZoneID = nil
	end

	-- ignore map settings if disabled
	if (not private.db.map.displayMapIcons) then
		RareScanner:ResetMapIcons()
		return
	end

	-- get current zone id
	local zoneID = GetCurrentMapAreaID();
	local level = DungeonUsesTerrainMap() and GetCurrentMapDungeonLevel() - 1 or GetCurrentMapDungeonLevel()
	
	-- ignore zones with own icons
	if (zoneID == BROKEN_SHORE_MAPID or level ~= GROUND_LEVEL) then
		RareScanner:ResetMapIcons()
		return
	end
	
	-- load icons if there are some available
	if (not rsMapTrackerFrame.currentZoneID or rsMapTrackerFrame.currentZoneID ~= zoneID) then
		rsMapTrackerFrame.currentZoneID = zoneID
		RS_LoadMapIcons(zoneID)
	end
end

function RareScanner:ResetMapIcons()
	for k, v in pairs (rsMapTrackerFrame.buttons) do
		if (not InCombatLockdown()) then
			v:Hide()
		else
			forzeReload = true
			return
		end
	end
end

function RS_LoadMapIcons(zoneID)	
	-- If in combat do nothing
	if (InCombatLockdown()) then
		forzeReload = true
		return
	end
	
	-- Hide buttons if shown
	RareScanner:ResetMapIcons()
	
	-- ignore filtered zones
	if (private.db.general.filteredZones[zoneID] == false) then
		return
	end
	
	-- Extract world quest in the area
	local quests = C_TaskQuest.GetQuestsForPlayerByMapID(zoneID)
	rsMapTrackerFrame.questTitles = {}
	if (quests) then
		for i, quest  in ipairs (quests) do
			if (HaveQuestData(quest.questId)) then
				local title, _, _ = C_TaskQuest.GetQuestInfoByQuestID(quest.questId)
				table.insert(rsMapTrackerFrame.questTitles, title)
			end
		end
	end
	
	-- Show new zone buttons
	if (private.db.global.rares_found) then
		rsMapTrackerFrame.currentIndex = 1
		for npcID, npcInfo in pairs (private.db.global.rares_found) do
			if (npcInfo.mapID == zoneID) then
				-- ignore if world quest
				RS_AddMapIcon(npcID, npcInfo, true)
			end
		end
	end
end

function RS_UpdateMapIcon(npcID)
	-- If in combat do nothing
	if (InCombatLockdown()) then
		forzeReload = true
		return
	end
	
	-- ignore filtered zones
	if (RareScanner:ZoneFiltered(npcID)) then
		return
	end
	
	-- If killed temporally or ethernal dead hides it
	if (private.db.char.rares_killed[npcID] and (private.db.char.rares_killed[npcID] == ETERNAL_DEATH or not private.db.map.keepShowingAfterDead)) then
		for k, button in pairs (rsMapTrackerFrame.buttons) do
			if (button.npcID == npcID) then
				button:Hide()
				return
			end
		end
		
		return
	end

	-- Otherwise add it
	RS_AddMapIcon(npcID, private.db.global.rares_found[npcID])
end

function RS_AddMapIcon(npcID, npcData, forzed) 
	-- If in combat do nothing
	if (InCombatLockdown()) then
		forzeReload = true
		return
	end

	-- If not in our database ignore it
	local npcName = RareScanner:NpcIdToName(npcID)
	if (not npcName) then
		-- and delete it
		private.db.global.rares_found[npcID] = nil
		RareScanner:PrintDebugMessage("DEBUG: Eliminado de la tabla de rares_found el NPC con ID "..npcID.." dado que no existe en nuestra base de datos")
		return
	end
	
	-- If coordinates not properly calculated ignore it
	if (not npcData or not npcData.coordX or not npcData.coordY or not npcData.mapID or not tonumber(npcData.coordY) or not tonumber(npcData.coordX)) then
		-- and delete it
		private.db.global.rares_found[npcID] = nil
		RareScanner:PrintDebugMessage("DEBUG: Eliminado de la tabla de rares_found el NPC con ID "..npcID.." dado que alguna de sus coordenadas se ha grabado incorrectamente")
		return
	end
	
	-- If world quest ignore it
	if (RS_tContains(rsMapTrackerFrame.questTitles, npcName)) then
		return
	end
	
	-- If killed ignore it
	if (private.db.char.rares_killed[npcID] and (private.db.char.rares_killed[npcID] == ETERNAL_DEATH or not private.db.map.keepShowingAfterDead)) then
		return
	end
	
	-- If its been seen after our max show time
	if (private.db.map.maxSeenTime ~= 0 and time() - npcData.foundTime > private.db.map.maxSeenTime * 3600) then
		return
	end
	
	-- If filtered we dont show either
	if (next(private.db.general.filteredRares) ~= nil and private.db.general.filteredRares[npcID] == false) then
		return
	end
	
	-- If the NPC has been reported and you aren't at the same place, then ignore it
	local currentPlayerMapID = GetCurrentMapAreaID()
	if (currentPlayerMapID and npcData.mapID ~= currentPlayerMapID) then
		return
	end

	-- If not forzed is an update or a new rare found
	local buttonUpdated = false
	if (not forzed) then
		for k, button in pairs (rsMapTrackerFrame.buttons) do
			if (button.npcID == npcID) then
				buttonUpdated = RS_SetupMapIcon(button, npcID, npcData, npcName)
			end
		end
	end
	
	if (buttonUpdated) then
		return
	end
	
	-- Updates index
	if (not rsMapTrackerFrame.currentIndex) then
		rsMapTrackerFrame.currentIndex = 1
	else
		rsMapTrackerFrame.currentIndex = rsMapTrackerFrame.currentIndex + 1
	end
	
	local index = rsMapTrackerFrame.currentIndex
	
	-- Reuse button
	local button
	if (rsMapTrackerFrame.buttons[index]) then
		button = rsMapTrackerFrame.buttons[index]
	-- Creates a new one
	else
		button = CreateFrame("Button", "RSIconMap"..index, rsMapTrackerFrame, "RSIconMapTemplate");
	end
	
	-- Setup button
	RS_SetupMapIcon(button, npcID, npcData, npcName)
	button:SetFrameLevel(601)
    button:Show()
	
	rsMapTrackerFrame.buttons[index] = button
end

function RS_SetupMapIcon(button, npcID, npcData, npcName)
	-- Adapt coordinates to pixel coordinates
    local x = ( npcData.coordX / 100) * WorldMapDetailFrame:GetWidth();
    local y = (1 - npcData.coordY / 100) * WorldMapDetailFrame:GetHeight();

	-- Loads information
	button.npcID = npcID
	button.name = npcName
	button.foundTime = npcData.foundTime
	button.killed = private.db.char.rares_killed[npcID]
	button:SetPoint("CENTER", "WorldMapDetailFrame", "BOTTOMLEFT", x, y);
	
	-- Eternal death
	if ((private.ZONE_IDS[npcID] and RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID)) or RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, npcData.mapID)) then
		button.killable = true
	else
		button.killable = false
	end
	
	-- Reset position
	if (npcData.relocated == RELOCATED) then
		button.relocatable = true
	else
		button.relocatable = false
	end
	
	return true;
end

-- Buttons mixin
RSIconMapMixin = { };

local rstoolTipLineFont = CreateFont("RSToolTipContent")
rstoolTipLineFont:SetFont(GameTooltipText:GetFont(), 10)

-- Mixin controls
function RSIconMapMixin:OnEnter() 
	self.IconHighLightTexture:Show()
	
	local tooltip = RareScannerMapTooltip:Acquire("RsMapToolTip", 2, "LEFT", "RIGHT")
	self.tooltipParent = tooltip:GetParent()
	tooltip:SetParent(rsMapTrackerFrame)
	self.tooltip = tooltip 
	tooltip:SetFrameLevel(2000)

	tooltip:SetFont(rstoolTipLineFont)
	
	-- NPC name
	line = tooltip:AddLine()
	tooltip:SetCell(line, 1, RS_TextColor(self.name, "3399FF"))
	
	-- Last time seen
	line = tooltip:AddLine()
	tooltip:SetCell(line, 1, AL["MAP_TOOLTIP_SEEN"])
	tooltip:SetCell(line, 2, RS_TextColor(Rs_TimeStampToClock(self.foundTime), "FF8000"))
	
	-- Separator
	line = tooltip:AddSeparator(1, 1)
	
	-- Footer
	-- Lfg
	line = tooltip:AddLine()
	tooltip:SetCell(line, 1, RS_TextColor(AL["MAP_TOOLTIP_LFG"], "00FF00"), nil, nil, 2, RareScannerMapTooltip.LabelProvider, nil, nil, TOOLTIP_MAX_WIDTH)
	
	-- Eternal death
	if (self.killable) then		
		line = tooltip:AddLine()
		tooltip:SetCell(line, 1, RS_TextColor(AL["MAP_TOOLTIP_KILLED"], "00FF00"), nil, nil, 2, RareScannerMapTooltip.LabelProvider, nil, nil, TOOLTIP_MAX_WIDTH)
	end
	
	-- Reset position
	if (self.relocatable) then		
		line = tooltip:AddLine()
		tooltip:SetCell(line, 1, RS_TextColor(AL["MAP_TOOLTIP_RELOCATE"], "00FF00"), nil, nil, 2, RareScannerMapTooltip.LabelProvider, nil, nil, TOOLTIP_MAX_WIDTH)
	end
	
	tooltip:SmartAnchorTo(self)
	tooltip:Show()
end

function RS_TextColor(text, color)
   return string.format("|cff%s%s|r", color, text)
end

function Rs_TimeStampToClock(seconds)
	local seconds = tonumber(time() - seconds)

	if seconds <= 0 then
		return "00:00:00";
	else
		local minutes = math.floor(seconds / 60);
		local hours = math.floor(minutes / 60);
		local days = math.floor(hours / 24);
		return days.." "..AL["MAP_TOOLTIP_DAYS"].." "..string.format("%02.f", hours%24)..":"..string.format("%02.f", minutes%60)..":"..string.format("%02.f", seconds%60)
	end
end

function RSIconMapMixin:OnLeave() 
	self.IconHighLightTexture:Hide()
	-- Release the tooltip
	RareScannerMapTooltip:Release(self.tooltip)
	self.tooltip:SetParent(self.tooltipParent)
	self.tooltipParent = nil
	self.tooltip = nil
end

function RSIconMapMixin:OnMouseDown(button) 
	-- Killed
	if (button == "LeftButton" and IsShiftKeyDown() and self.killable) then
		private.db.char.rares_killed[self.npcID] = ETERNAL_DEATH
		RS_UpdateMapIcon(self.npcID)
		self.killable = false
	-- Reset relocated
	elseif (button == "LeftButton" and IsControlKeyDown() and self.relocatable) then
		private.db.global.rares_found[self.npcID].relocated = NOT_RELOCATED
		self.relocatable = false
		RS_UpdateMapIcon(self.npcID)
		RareScanner:PrintMessage(AL["MAP_NPC_RESTORED_LOCATION1"].." "..self.name..AL["MAP_NPC_RESTORED_LOCATION2"]) 
	-- LFG
	elseif (button == private.db.lfg.buttonCreateGroup) then
		RareScanner:CreateGroup(self.npcID, RareScanner:NpcIdToEnName(self.npcID), true)
	elseif (button == private.db.lfg.buttonJoinCreateGroup) then
		RareScanner:SearchGroup(self.npcID)
	end
end