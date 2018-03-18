-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local LibStub = _G.LibStub
local RareScanner = LibStub("AceAddon-3.0"):NewAddon("RareScanner", "AceComm-3.0")

local ADDON_NAME, private = ...
local GARRISON_MAP_ID_HORDE = { 976, 980, 981, 982, 990 }
local GARRISON_MAP_ID_ALLIANCE = { 971, 973, 974, 975, 991 }
local DRAENOR_MAP_ID = 962
local NPC_VIGNETTE = 4733
local NPC_LEGION_VIGNETTE = 5639
local CONTAINER_VIGNETTE = 4715
local EVENT_VIGNETTE = 4716
local MAX_ITEMS_LOOT_BAR = 9
local REJOIN_TIME_DELAY = 6; -- 7 sec
local RELOCATE_NPC_TIME_DELAY = 120; -- 2 minutes to rescan for the same NPC
local REJOIN_APP_TIME_DELAY = 360; -- 6 minutes to rejoin same app ID

-- Communications
local COMM_PREFIX = "CommRS"
local EVENT_NPC_FOUND = "RsNpcFound"
local EVENT_REQUEST_DATA = "RsRequestData"
local EVENT_SEND_DATA = "RsResponseData"
local CHANNEL_GUILD = "GUILD"
local CHANNEL_PARTY = "PARTY"
local CHANNEL_RAID = "RAID"
local NOT_RELOCATED = 0
local RELOCATED = 1
local RESPAWN_DEATH = 0
local ETERNAL_DEATH = -1

-- Timers
local SEND_DATA_PARTY_TIMER
local SEND_DATA_DELAY = 20
local CLEAN_RARES_FOUND_TIMER
local CLEAN_RARES_FOUND_DELAY = 120
local SEND_DATA_COOLDOWN = 0
local SEND_DATA_COOLDOWN_DELAY = 10
local RETRY_CHECK_RANGE
local _30_MINUTES = 1800 -- 30min * 60sec

-- Debug
local DEBUG_MODE = false

-- Locales
local AL = LibStub("AceLocale-3.0"):GetLocale("RareScanner");

-- Range
local LRC = LibStub("LibRangeCheck-2.0")

-- Settings
local PROFILE_DEFAULTS = {
	profile = {
		general = {
			scanRares = true,
			scanContainers = true,
			scanEvents = true,
			scanGarrison = false,
			scanInstances = true,
			filteredRares = {},
			filteredZones = {}
		},
		sound = {
			soundPlayed = "Horn",
			soundObjectPlayed = "PVP Horde",
			soundDisabled = false
		},
		display = {
			displayButton = true,
			displayMiniature = true,
			displayButtonContainers = true,
			displayLFGButton = true,
			autoHideButton = 0,
			displayLoot = true,
			lootTooltipPosition = "ANCHOR_LEFT",
			displayChatMessage = true,
			lootMinQuality = 3
		},
		rareFilters = {
			filtersToggled = true
		},
		zoneFilters = {
			filtersToggled = true
		},
		lfg = {
			titleInClientsLocale = false,
			searchInClientsLocale = false,
			searchAgain = false,
			displayLeaveGroupDialog = true,
			displayLFGButton = true,
			buttonCreateGroup = "LeftButton",
			buttonJoinCreateGroup = "RightButton",
			displayLogWindow = true,
			autoHideLogger = 4
		},
		map = {
			displayMapIcons = true,
			keepShowingAfterDead = false,
			maxSeenTime = 1
		}
	}
}

-- Main button
local scanner_button = _G.CreateFrame("Button", "scanner_button", UIParent, "SecureActionButtonTemplate")
scanner_button:Hide();
scanner_button:SetFrameStrata("FULLSCREEN")
scanner_button:SetSize(200, 50)
scanner_button:SetScale(1.25)
scanner_button:SetAttribute("type", "macro")
scanner_button:SetNormalTexture([[Interface\AchievementFrame\UI-Achievement-Parchment-Horizontal-Desaturated]])
scanner_button:SetBackdrop({ tile = true, edgeSize = 16, edgeFile = [[Interface\Tooltips\UI-Tooltip-Border]] })
scanner_button:SetBackdropBorderColor(0, 0, 0)
scanner_button:SetPoint("BOTTOM", UIParent, 0, 128)
scanner_button:SetMovable(true)
scanner_button:SetUserPlaced(true)
scanner_button:SetClampedToScreen(true)
scanner_button:RegisterForDrag("LeftButton")

scanner_button:SetScript("OnDragStart", scanner_button.StartMoving)
scanner_button:SetScript("OnDragStop", scanner_button.StopMovingOrSizing)
scanner_button:SetScript("OnEnter", function(self)
	self:SetBackdropBorderColor(0.9, 0.9, 0.9)
end)
scanner_button:SetScript("OnLeave", function(self)
	self:SetBackdropBorderColor(0, 0, 0)
end)
scanner_button:SetScript("OnHide", function(self)
	self.npcID = nil
	self.name = nil
end)

-- Model view
scanner_button.ModelView = _G.CreateFrame("PlayerModel", "mxpplayermodel", scanner_button)
scanner_button.ModelView:SetPoint("BOTTOMLEFT", scanner_button, "TOPLEFT", 0, -2) -- bottom left corner 2px separation from scanner_button's top left corner
scanner_button.ModelView:SetPoint("RIGHT")
scanner_button.ModelView:SetHeight(120)
scanner_button.ModelView:SetScale(1.25)

local Background = scanner_button:GetNormalTexture()
Background:SetDrawLayer("BACKGROUND")
Background:ClearAllPoints()
Background:SetPoint("BOTTOMLEFT", 3, 3)
Background:SetPoint("TOPRIGHT", -3, -3)
Background:SetTexCoord(0, 1, 0, 0.25)

-- Title
local TitleBackground = scanner_button:CreateTexture(nil, "BORDER")
TitleBackground:SetTexture([[Interface\AchievementFrame\UI-Achievement-RecentHeader]])
TitleBackground:SetPoint("TOPRIGHT", -5, -7)
TitleBackground:SetPoint("LEFT", 5, 0)
TitleBackground:SetSize(180, 10)
TitleBackground:SetTexCoord(0, 1, 0, 1)
TitleBackground:SetAlpha(0.8)

scanner_button.Title = scanner_button:CreateFontString(nil, "OVERLAY", "GameFontNormal", 1)
scanner_button.Title:SetNonSpaceWrap(true)
scanner_button.Title:SetPoint("TOPLEFT", TitleBackground, 0, 0)
scanner_button.Title:SetPoint("RIGHT", TitleBackground)
scanner_button.Title:SetTextColor(1, 1, 1, 1)
scanner_button:SetFontString(scanner_button.Title)

local Description = scanner_button:CreateFontString(nil, "OVERLAY", "SystemFont_Tiny")
Description:SetPoint("BOTTOMLEFT", TitleBackground, 0, -12)
Description:SetPoint("RIGHT", -8, 0)
Description:SetTextHeight(6)
Description:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)

scanner_button.Description_text = scanner_button:CreateFontString(nil, "OVERLAY", "GameFontWhiteTiny")
scanner_button.Description_text:SetPoint("TOPLEFT", Description, "BOTTOMLEFT", 0, -4)
scanner_button.Description_text:SetPoint("RIGHT", Description)

-- Close button
scanner_button.CloseButton = _G.CreateFrame("Button", "CloseButton", scanner_button, "UIPanelCloseButton")
scanner_button.CloseButton:SetPoint("BOTTOMRIGHT")
scanner_button.CloseButton:SetSize(32, 32)
scanner_button.CloseButton:SetScale(0.8)
scanner_button.CloseButton:SetHitRectInsets(8, 8, 8, 8)

-- Filter disabled button
scanner_button.FilterDisabledButton = _G.CreateFrame("Button", "FilterDisabledButton", scanner_button, "GameMenuButtonTemplate")
scanner_button.FilterDisabledButton:SetPoint("BOTTOMLEFT", 5, 5)
scanner_button.FilterDisabledButton:SetSize(16, 16)
scanner_button.FilterDisabledButton:SetNormalTexture([[Interface\WorldMap\Dash_64]])
scanner_button.FilterDisabledButton:SetScript("OnClick", function(self)
	npcID = RareScanner:NameToNpc(self:GetParent().Title:GetText())
	if (npcID) then
		private.db.general.filteredRares[npcID] = false
		RareScanner:PrintMessage(AL["DISABLED_SEARCHING_RARE"]..self:GetParent().Title:GetText())
		self:Hide()
		self:GetParent().FilterEnabledButton:Show()
	end
end)
scanner_button.FilterDisabledButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
	GameTooltip:SetText(AL["DISABLE_SEARCHING_RARE_TOOLTIP"])
	GameTooltip:Show()
end)

scanner_button.FilterDisabledButton:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

-- Filter enabled button
scanner_button.FilterEnabledButton = _G.CreateFrame("Button", "FilterEnabledButton", scanner_button, "GameMenuButtonTemplate")
scanner_button.FilterEnabledButton:SetPoint("BOTTOMLEFT", 5, 5)
scanner_button.FilterEnabledButton:SetSize(16, 16)
scanner_button.FilterEnabledButton:SetScript("OnClick", function(self)
	npcID = RareScanner:NameToNpc(self:GetParent().Title:GetText())
	if (npcID) then
		private.db.general.filteredRares[npcID] = true
		RareScanner:PrintMessage(AL["ENABLED_SEARCHING_RARE"]..self:GetParent().Title:GetText())
		self:Hide()
		self:GetParent().FilterDisabledButton:Show()
	end
end)
scanner_button.FilterEnabledButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
	GameTooltip:SetText(AL["ENABLE_SEARCHING_RARE_TOOLTIP"])
	GameTooltip:Show()
end)

scanner_button.FilterEnabledButton:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

scanner_button.FilterEnabledTexture = scanner_button.FilterEnabledButton:CreateTexture()
scanner_button.FilterEnabledTexture:SetTexture([[Interface\WorldMap\Skull_64]])
scanner_button.FilterEnabledTexture:SetSize(12, 12)
scanner_button.FilterEnabledTexture:SetTexCoord(0,0.5,0,0.5)
scanner_button.FilterEnabledTexture:SetPoint("CENTER")
scanner_button.FilterEnabledButton:SetNormalTexture(scanner_button.FilterEnabledTexture)
scanner_button.FilterEnabledButton:Hide()

-- Loot bar
scanner_button.LootBar = _G.CreateFrame("Frame", "LootBar", scanner_button)
scanner_button.LootBar:SetSize(200, 20)
scanner_button.LootBar:SetPoint("TOPLEFT", scanner_button, "BOTTOMLEFT", 7, -3)

-- Loot tooltip
scanner_button.LootBar.LootBarToolTip = _G.CreateFrame("GameTooltip", "LootBarToolTip", nil, "GameTooltipTemplate")

-- Group finder icon
scanner_button.GroupFinderIcon = _G.CreateFrame("Button", "GroupFinderIcon", scanner_button, "SecureActionButtonTemplate")
scanner_button.GroupFinderIcon:SetSize(30, 30)
scanner_button.GroupFinderIcon:SetPoint("TOPLEFT", scanner_button, "TOPRIGHT", 0, 2)
scanner_button.GroupFinderIcon:SetNormalTexture([[Interface\Buttons\UI-SquareButton-Up]])
scanner_button.GroupFinderIcon:SetPushedTexture([[Interface\Buttons\UI-SquareButton-Down]])
scanner_button.GroupFinderIcon:SetDisabledTexture([[Interface\Buttons\UI-SquareButton-Disabled]])
scanner_button.GroupFinderIcon:SetHighlightTexture([[Interface\Buttons\UI-Common-MouseHilight]])
scanner_button.GroupFinderIcon:RegisterForClicks("LeftButtonDown", "RightButtonDown", "MiddleButtonDown")
scanner_button.GroupFinderIcon:SetScript("OnMouseUp", function(self)
	if self:IsEnabled() then
		self.Texture:SetPoint("CENTER", self, "CENTER", -1, 0);
	end
end)
scanner_button.GroupFinderIcon:SetScript("OnMouseDown", function(self)
	if self:IsEnabled() then
		self.Texture:SetPoint("CENTER", self, "CENTER", -2, -1);
	end
end)
scanner_button.GroupFinderIcon:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self);
	GameTooltip:AddLine(AL["LFG_BUTTON_TOOLTIP"]);
	GameTooltip:Show();
end)
scanner_button.GroupFinderIcon:SetScript("OnLeave", function(self)
	GameTooltip:Hide();
end)
scanner_button.GroupFinderIcon:SetScript("OnClick", function(self, button)
	npcID = RareScanner:NameToNpc(self:GetParent().Title:GetText())
	if (npcID) then
		-- Reset previous cleared apps
		self:GetParent().clearedApplicationIds = {}
		
		if (button == private.db.lfg.buttonCreateGroup) then
			RareScanner:CreateGroup(npcID, RareScanner:NpcIdToEnName(npcID), true)
		elseif (button == private.db.lfg.buttonJoinCreateGroup) then
			RareScanner:SearchGroup(npcID)
		end
	end
end)
scanner_button.GroupFinderIcon:Hide()

scanner_button.GroupFinderIcon.Texture = scanner_button.GroupFinderIcon:CreateTexture("$GroupFinderIconTexture", "ARTWORK", nil, 5)
scanner_button.GroupFinderIcon.Texture:SetAtlas("socialqueuing-icon-eye", false)
scanner_button.GroupFinderIcon.Texture:SetSize(13, 13)
scanner_button.GroupFinderIcon.Texture:SetPoint("CENTER", scanner_button.GroupFinderIcon, -1, 0)

-- Loot items
local itemFrames = {}
for i=1, MAX_ITEMS_LOOT_BAR do 
	local itemFrame = _G.CreateFrame("Frame", "LootBarItem"..i, scanner_button.LootBar)
	itemFrame:SetSize(20, 20)
	itemFrame:SetPoint("LEFT", (5+16)* (i-1), 0)
	-- icon
	itemFrame.texture = itemFrame:CreateTexture()
	itemFrame.texture:SetAllPoints(itemFrame)
	-- tooltip
	itemFrame:SetScript("OnEnter", function(self)
		if self.link then
			scanner_button.LootBar.LootBarToolTip:SetOwner(scanner_button, private.db.display.lootTooltipPosition)
			scanner_button.LootBar.LootBarToolTip:SetHyperlink(self.link)
			scanner_button.LootBar.LootBarToolTip:SetParent(self)
			scanner_button.LootBar.LootBarToolTip:Show()
		end
	end)
	itemFrame:SetScript("OnLeave", function(self)
		if self.link then
			scanner_button.LootBar.LootBarToolTip:Hide()
		end
	end)
					
	itemFrames[i] = itemFrame
end

-- Vignette events
scanner_button:RegisterEvent("VIGNETTE_ADDED")

-- Group finder events
scanner_button:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
scanner_button:RegisterEvent("LFG_LIST_APPLICATION_STATUS_UPDATED");
scanner_button:RegisterEvent("GROUP_ROSTER_UPDATE")
scanner_button:RegisterEvent("GROUP_JOINED")
scanner_button:RegisterEvent("PLAYER_TARGET_CHANGED")
scanner_button:RegisterEvent("GUILD_ROSTER_UPDATE")

-- Out of combat events
scanner_button:RegisterEvent("PLAYER_REGEN_ENABLED")

-- Items events
local pendingItemIdInfo = {}
scanner_button:RegisterEvent("GET_ITEM_INFO_RECEIVED")

-- Captures all events
local already_joined = {}
local deadTargets = {}
local guildiesNames = nil
scanner_button:SetScript("OnEvent", function(self, event, ...)
	if (event == "VIGNETTE_ADDED") then
		self:CheckNotificationCache(self, ...)
	elseif (event == "PLAYER_REGEN_ENABLED") then
		if (self.pendingToShow) then
			self.pendingToShow = nil
			self.pendingToHide = nil -- just in case it was pending too
			self:ShowButton()
		elseif (self.pendingToHide) then
			self.pendingToHide = nil
			self:HideButton()
		end
	elseif (event == "GET_ITEM_INFO_RECEIVED") then
		local itemId = ...
		if (pendingItemIdInfo[itemId]) then
			self:LoadItemFrame(itemId, pendingItemIdInfo[itemId])
			pendingItemIdInfo[itemId] = nil;
		end
	elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		local timestamp, eventType, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
		if (eventType == "PARTY_KILL") then
			local _, _, _, _, _, id = strsplit("-", destGUID)
			local npcID = id and tonumber(id) or nil
			self:ProcessKill(npcID)
		elseif (eventType == "UNIT_DIED") then
			-- It needs to find the target dead in order to mark it as dead, otherwise it could be a fake
			local _, _, _, _, _, id = strsplit("-", destGUID)
			local npcID = id and tonumber(id) or nil
			if (npcID and private.db.global.rares_found[npcID]) then
				if (UnitExists("target") and destGUID == UnitGUID("target")) then
					local unitClassification = UnitClassification("target")
					if (unitClassification ~= "rare" and unitClassification ~= "rareelite") then
						-- properly killed
						RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto por medio de UNIT_DIED")
						self:ProcessKill(npcID)
					else
						RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC muerto por medio de UNIT_DIED que no hemos matado nosotros")
					end
				else
					-- registers just in case killed by party pet
					deadTargets[destGUID] = time()
					if (not CHECK_FAKE_KILLS_TIMER) then
						CHECK_FAKE_KILLS_TIMER = C_Timer.NewTicker(30, function()
							for unitGuid, timeStamp in pairs(deadTargets) do
								if (timeStamp + 60 > time()) then
									deadTargets[unitGuid] = nil
								end
							end
						end)
					end
				end
			end
		end
	elseif (event == "PLAYER_TARGET_CHANGED") then
		if (UnitExists("target")) then
			local targetUid = UnitGUID("target")
			local unitClassification = UnitClassification("target")
			local _, _, _, _, _, id = strsplit("-", targetUid)
			local npcID = id and tonumber(id) or nil
			
			if (npcID) then
				-- check if killed
				for unitGuid, timeStamp in pairs(deadTargets) do
					if (targetUid == unitGuid) then
						deadTargets[unitGuid] = nil
						if (unitClassification ~= "rare" and unitClassification ~= "rareelite") then
							-- properly killed
							RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto por medio de UNIT_DIED")
							self:ProcessKill(npcID)
						else
							RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto por medio de UNIT_DIED que no hemos matado nosotros")
						end
						
						return
					end
				end
				
				-- check range
				if (RETRY_CHECK_RANGE) then
					RETRY_CHECK_RANGE:Cancel()
				end
				self:CheckTargetRange(npcID)
			end
		end
	elseif (event == "LFG_LIST_APPLICATION_STATUS_UPDATED") then
		local applicationID, status = ...
		if (status == "invited") then
			if (RETRY_TIMER) then 
				RETRY_TIMER:Cancel()
			end
		elseif (status == "inviteaccepted") then
			local _,_,name,_,_,_,_,_,_,_,_,_,author,_,_ = C_LFGList.GetSearchResultInfo(applicationID)
			
			-- avoid rejoining the same group once you leave it
			if (author) then
				if (not already_joined[author]) then
					already_joined[author] = {}
				end
				already_joined[author][name] = true
				
				-- probably not necesary, but just in case
				C_Timer.After(REJOIN_APP_TIME_DELAY, function() 
					already_joined[author][name] = false
				end)
			end
	
			scanner_button.groupNpcID = scanner_button.joinNpcID
			scanner_button.joinNpcID = nil
		elseif (status == "invitedeclined") then
			scanner_button.groupNpcID = nil
			scanner_button.joinNpcID = nil
		end
	elseif (event == "GROUP_JOINED") then
		self.numPlayers = GetNumGroupMembers()
		self:RequestGroupDataOnChange()
	elseif (event == "GROUP_ROSTER_UPDATE") then
		-- checks if new player joined
		if (IsInGroup()) then
			if (IsInInstance()) then
				RareScanner:PrintDebugMessage("DEBUG: Estas en una estancia, no enviamos mensajes")
				return
			end
			self:RequestGroupDataOnChange()
		else
			self.numPlayers = 0
			if (SEND_DATA_PARTY_TIMER) then
				SEND_DATA_PARTY_TIMER:Cancel()
			end
		end
	elseif (event == "GUILD_ROSTER_UPDATE") then
		RareScanner:PrintDebugMessage("DEBUG: Informacion de la hermandad obtenida")
		
		if (not guildiesNames) then
			guildiesNames = {}
			local i = 1
			while (i <= GetNumGuildMembers()) do
				local name, _, _ = GetGuildRosterInfo(i)
				table.insert(guildiesNames, name)
				i = i + 1
			end
		end
		
		self:UnregisterEvent("GUILD_ROSTER_UPDATE")
	else
		return
	end
end)

function scanner_button:ProcessKill(npcID)
	-- Mark as killed
	if (npcID and private.db.global.rares_found[npcID]) then
		-- If its a world quest reseteable rare
		if (RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID) or RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.db.global.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado con ID "..npcID.." pertenece a una zona reseteable con las misiones del mundo")
			private.db.char.rares_killed[npcID] = time() + GetQuestResetTime()
			RS_UpdateMapIcon(npcID)
		-- If it wont ever be a rare anymore
		elseif (RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID) or RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.db.global.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado deja de ser rare eternamente")
			private.db.char.rares_killed[npcID] = ETERNAL_DEATH
			RS_UpdateMapIcon(npcID)
		end
		-- If it respawns after a while we dont need to keep track of death
	end

	-- Doesn't show the dialog if user doesn't want to
	if (not private.db.lfg.displayLeaveGroupDialog) then
		return
	end
	
	if (npcID and scanner_button.groupNpcID and scanner_button.groupNpcID == npcID and IsInGroup()) then
		scanner_button.groupNpcID = nil
		StaticPopupDialogs["RS_LEAVE_GROUP"] = {
			text = AL["LFG_NPC_DEAD"],
			button1 = AL["LFG_YES"],
			button2 = AL["LFG_NO"],
			OnAccept = function()
				-- delist if leader
				if (UnitIsGroupLeader("player")) then
					C_LFGList.RemoveListing()
				end
				LeaveParty()
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
			preferredIndex = 3,
		}
		StaticPopup_Show("RS_LEAVE_GROUP")
	end
end

function scanner_button:RequestGroupDataOnChange()
	if (self.numPlayers and GetNumGroupMembers() ~= 1 and self.numPlayers < GetNumGroupMembers() + 1) then
		-- share info
		if (not SEND_DATA_PARTY_TIMER or SEND_DATA_PARTY_TIMER._cancelled) then
			SEND_DATA_PARTY_TIMER = C_Timer.After(5, function()
				-- internally it avoids to resend until SEND_DATA_DELAY
				RareScanner:SendData(CHANNEL_RAID)
			end)
		end
	end
	
	self.numPlayers = GetNumGroupMembers()
end

function scanner_button:CheckTargetRange(id)
	if (private.db.global.rares_found[id] and private.db.global.rares_found[id].relocated == NOT_RELOCATED) then
		RareScanner:PrintDebugMessage("DEBUG: Encontrado rare en base de datos como NOT_RELOCATED")
		local minRange, maxRange = LRC:GetRange('target')
		RareScanner:PrintDebugMessage("DEBUG: minRange "..(minRange or ""))
		RareScanner:PrintDebugMessage("DEBUG: maxRange "..(maxRange or ""))
		if (not minRange or minRange > 10) then
			RareScanner:PrintDebugMessage("DEBUG: Estas demasiado lejos del objetivo como para sacar unas coordenadas ajustadas")
			if (not RETRY_CHECK_RANGE or RETRY_CHECK_RANGE._cancelled) then
				RETRY_CHECK_RANGE = C_Timer.NewTicker(5, function()
					self:CheckTargetRange(id)
				end, 10)
			end
		else
			RareScanner:PrintDebugMessage("DEBUG: Se han encontrado mejores coordenadas del bicho. ¡Reubicado!")
			if (RETRY_CHECK_RANGE) then
				RETRY_CHECK_RANGE:Cancel()
			end
			
			local x, y = GetPlayerMapPosition("player")
			if (x and y) then
				private.db.global.rares_found[id].coordX = string.sub(x*100,1,4)
				private.db.global.rares_found[id].coordY = string.sub(y*100,1,4)
				private.db.global.rares_found[id].relocated = RELOCATED
				RareScanner:PrintDebugMessage("DEBUG: X: "..private.db.global.rares_found[id].coordX)
				RareScanner:PrintDebugMessage("DEBUG: Y: "..private.db.global.rares_found[id].coordY)
				RS_UpdateMapIcon(id)
			end
		end
	end
end

-- Checks if the rare has been found already in the last 5 minutes
local already_notified = {}
function scanner_button:CheckNotificationCache(self, id)	
	-- Get viggnette data
	local x, y, name, iconid = C_Vignettes.GetVignetteInfoFromInstanceID(id)
	
	-- Extract NPC id from database
	local npcID, dbName
	if (name) then
		npcID, dbName = RareScanner:NameToNpc(name)
		if (npcID) then
			self:ReportRareFound(npcID)
		end
	end
	
	-- Options disabled/enabled
	if (iconid) then
		local zone_id = self:GetZoneID(self, id)
		-- disable ALL alerts in instances
		local isInstance, instanceType = IsInInstance()
		if (isInstance == true and not private.db.general.scanInstances) then
			return
		-- disable every iconid that is not treasure, event or rare
		elseif (iconid ~= CONTAINER_VIGNETTE and iconid ~= NPC_VIGNETTE and iconid ~= EVENT_VIGNETTE and iconid ~= NPC_LEGION_VIGNETTE) then
			return
		-- disable ALL alerts for containers
		elseif (iconid == CONTAINER_VIGNETTE and not private.db.general.scanContainers) then
			return
		-- disable alerts for rares NPCs
		elseif ((iconid == NPC_VIGNETTE or iconid == NPC_LEGION_VIGNETTE) and not private.db.general.scanRares) then
			return
		-- disable alerts for events
		elseif (iconid == EVENT_VIGNETTE and not private.db.general.scanEvents) then
			return
		-- disable zones alerts if the player is in that zone
		elseif (next(private.db.general.filteredZones) ~= nil and private.db.general.filteredZones[zone_id] == false) then
			return
		-- disable alerts for containers
		elseif (iconid == CONTAINER_VIGNETTE) then
			-- disable garrison container alert
			if (not private.db.general.scanGarrison) then
				-- check if the player is loading
				if (zone_id == DRAENOR_MAP_ID) then
					return
				end
				
				-- check if the player is at the horde/alliance garrison
				local found = false;
				if (RS_tContains(GARRISON_MAP_ID_HORDE, zone_id) or RS_tContains(GARRISON_MAP_ID_ALLIANCE, zone_id)) then
					return
				end
			end
			
			-- disable button alert for containers
			if (not private.db.display.displayButtonContainers) then
				if already_notified[id] then
					return
				else
					already_notified[id] = true
					self:PlaySoundAlert(iconid)
					self:DisplayMessages(name)
					return
				end
			end
		end
	else
		return
	end
	
	-- Check if we have found the NPC in the last 5 minutes
	if (already_notified[id]) then
		return
	else
		already_notified[id] = true
	end
	
	-- If name not found there's nothing to do
	-- This should never happend, if it does just let the player know
	if (not name) then
		RareScanner:PrintMessage(AL["UNKNOWN_TARGET"])
		return
	end
	
	-- Switch names if the viggnette didn't match the real name
	if (dbName) then
		name = dbName
	end
	
	-- Filters NPC by zone just in case it belong to a different are from the current player's position
	if (npcID and RareScanner:ZoneFiltered(npcID)) then
		return
	end
	
	-- Check if the NPC is filtered, in which case we don't show anything
	if (npcID and next(private.db.general.filteredRares) ~= nil and private.db.general.filteredRares[npcID] == false) then
		return
	end
	
	---------------------------------------
	-- log previous button if it was a NPC
	---------------------------------------
	if (self.npcID and self.npcID ~= npcID) then
		RareScanner:RegisterPreviousButton(self.npcID, self.name)
	end
	
	--------------------------------
	-- show messages and play alarm
	--------------------------------
	self:DisplayMessages(name)
	self:PlaySoundAlert(iconid)
	
	------------------------
	-- set up new button
	------------------------
	if (private.db.display.displayButton) then
		self.npcID = npcID
		self.name = name
		self.Title:SetText(name)
		
		-- If NPC identified properly load its model
		if (npcID) then			
			local displayID = private.NPC_DISPLAY_IDS[npcID]
			if (displayID and displayID ~= 0) then
				self.displayID = displayID
			end
		else
			self.displayID = nil
		end

		-- Show button / miniature / loot bar if not in combat
		if (not InCombatLockdown()) then	
			-- Wow API doesnt allow to call Show() (protected function) if you are under attack, so
			-- we check if this is the situation to avoid it and show the frames
			-- once the battle is over (pendingToShow)
			self:ShowButton()
		else
			-- Show hyperlink only for NPC
			if (iconid == NPC_VIGNETTE or iconid == NPC_LEGION_VIGNETTE) then
				RareScanner:PrintRareScannerLink(name)
			end
			
			-- Mark to show after combat
			self.pendingToShow = true
		end
	end
	
	-- timer to reset already found NPC
	C_Timer.After(RELOCATE_NPC_TIME_DELAY, function() 
		already_notified[id] = false 
	end)
end

function RareScanner:ZoneFiltered(npcID)
	if (not private.ZONE_IDS[npcID]) then
		RareScanner:PrintDebugMessage("DEBUG: Se ha detectado un NPC sin zona asignada "..npcID)
		return
	end
	if (next(private.db.general.filteredZones) ~= nil) then
		-- if the npc shows up in more than one place
		if (type(private.ZONE_IDS[npcID].zoneID) == "table") then
			local found = false;
			for i, v in ipairs(private.ZONE_IDS[npcID].zoneID) do
				if (private.db.general.filteredZones[v] == false) then
					found = true;
					break;
				end
			end
			
			if (found) then
				return true
			end
		-- if the npc shows up only in one place
		elseif (private.db.general.filteredZones[private.ZONE_IDS[npcID].zoneID] == false) then
			return true
		end
	end
	
	return false
end

function scanner_button:PlaySoundAlert(iconid)
	if (iconid == CONTAINER_VIGNETTE or iconid == EVENT_VIGNETTE) then
		if not private.db.sound.soundDisabled then --disabled
			PlaySoundFile(private.SOUNDS[private.db.sound.soundObjectPlayed], "Master")
		end
	else
		if (not private.db.sound.soundDisabled) then --disabled
			PlaySoundFile(private.SOUNDS[private.db.sound.soundPlayed], "Master")
		end
	end
end

function scanner_button:DisplayMessages(name)
	if (name) then
		RaidNotice_AddMessage(RaidWarningFrame, name..AL["JUST_SPAWNED"], ChatTypeInfo["RAID_WARNING"])
		
		-- Print message in chat if user wants
		if (private.db.display.displayChatMessage) then
			RareScanner:PrintMessage(name..AL["JUST_SPAWNED"].." "..AL["CHECK_MAP"])
		end
	else
		RaidNotice_AddMessage(RaidWarningFrame, AL["ALARM_MESSAGE"], ChatTypeInfo["RAID_WARNING"])
	end
end

function scanner_button:GetZoneID(self, id) 
	-- forze setting current map to the current zone
	-- if map is not loaded yet the coordinates of the player will be 0 0
	local x, y = GetPlayerMapPosition("player")
	
	-- if not loaded try again after 1 second
	if (x == 0 and y == 0) then
		C_Timer.After(1, function() self:CheckNotificationCache(self, id) end)
		return;
	end
	
	-- if map is loaded extract map ID
	SetMapToCurrentZone()
	local zone_id, _ = GetCurrentMapAreaID()
	return zone_id
end

-- Hide action
function scanner_button:HideButton() 
	if (not InCombatLockdown()) then
		GameTooltip:Hide()
		scanner_button.ModelView:ClearModel()
		scanner_button.ModelView:Hide()
		scanner_button:Hide()
	else
		scanner_button.pendingToHide = true
	end
end

-- Show action
function scanner_button:ShowButton()
	-- Show button, model and loot panel
	if (scanner_button.npcID) then
		scanner_button.Description_text:SetText(AL["CLICK_TARGET"])
		
		scanner_button:SetAttribute("macrotext", "/cleartarget\n/targetexact "..scanner_button.name.."\n/tm 8")
		
		-- show button
		scanner_button:Show()
	
		-- show model
		if (scanner_button.displayID and private.db.display.displayMiniature) then
			scanner_button.ModelView:SetDisplayInfo(scanner_button.displayID)
			scanner_button.ModelView:Show()
		else
			scanner_button.ModelView:Hide()
		end
		
		-- Hide reset filter if it was shown
		scanner_button.FilterEnabledButton:Hide()
				
		-- Show filter button
		scanner_button.FilterDisabledButton:Show()
		
		-- show loot bar
		if (private.db.display.displayLoot) then
			scanner_button:LoadLootBar()
		end
		
		-- show group finder button
		if (private.db.lfg.displayLFGButton) then
			scanner_button.GroupFinderIcon:Show()
		end
	else
		scanner_button.Description_text:SetText(AL["NOT_TARGETEABLE"])
		
		-- hide model if displayed
		scanner_button:SetAttribute("macrotext", private.macrotext)
		scanner_button.ModelView:ClearModel()
		scanner_button.ModelView:Hide()
		
		-- hide filter button if displayed
		scanner_button.FilterDisabledButton:Hide()
		scanner_button.FilterEnabledButton:Hide()
		
		-- hide loot items
		scanner_button:LoadLootBar()
		
		-- hide group finder icon
		scanner_button.GroupFinderIcon:Hide()
		
		-- show button
		scanner_button:Show()
	end
	
	-- set the time to auto hide
	scanner_button:StartHideTimer()
end

function scanner_button:StartHideTimer()
	if (private.db.display.autoHideButton ~= 0) then
		if (AUTOHIDING_TIMER) then
			AUTOHIDING_TIMER:Cancel()
		end
		AUTOHIDING_TIMER = C_Timer.NewTimer(private.db.display.autoHideButton, function() 
			RareScanner:RegisterPreviousButton(scanner_button.npcID, scanner_button.name)
			scanner_button:HideButton() 
		end)
	end
end

----------------------------------------------
-- Loot bar methods
----------------------------------------------
function scanner_button:LoadLootBar() 
	-- Hide every icon
	for i, itemFrame in ipairs(itemFrames) do
		if itemFrame:IsShown() then
			itemFrame:Hide()
		end
	end

	-- Extract NPC loot
	if (scanner_button.npcID) then
		local itemsIds = private.LOOT_TABLE_IDS[scanner_button.npcID]
		if itemsIds then
			for i, itemId in ipairs(itemsIds) do
				if (i <= MAX_ITEMS_LOOT_BAR) then
					scanner_button:LoadItemFrame(itemId, i)
				else 
					break
				end
			end
		end
	end
end

function scanner_button:LoadItemFrame(itemId, index)
	local _, itemLink, qualityId, _, _, _, _, _, _, itemTexture, _ = GetItemInfo(itemId)
	if (not itemTexture) then
		pendingItemIdInfo[itemId] = index
	elseif (qualityId >= tonumber(private.db.display.lootMinQuality)) then
		-- Set item icon
		itemFrames[index].texture:SetTexture(itemTexture)
		-- Set item hyperlink
		itemFrames[index].link = itemLink	
		itemFrames[index]:Show()
	end
end

----------------------------------------------
-- Communications
----------------------------------------------

local already_reported = {}
function scanner_button:ReportRareFound(npcID)
	-- avoid spaming the same npc while jumping to another realm
	if (already_reported[npcID]) then
		return
	end
	
	-- Register locally
	local currentMap
	local mapX
	local mapY
	
	-- If its already in our database, just update the timestamp and reuse the stored data
	if (private.db.global.rares_found[npcID]) then
		private.db.global.rares_found[npcID].foundTime = time()
		mapX = private.db.global.rares_found[npcID].coordX
		mapY = private.db.global.rares_found[npcID].coordY
		currentMap = private.db.global.rares_found[npcID].mapID
		RareScanner:PrintDebugMessage("DEBUG: Detectado NPC que ya habiamos localizado, se actualiza la fecha")
		RS_UpdateMapIcon(npcID)
	else
		local x, y = GetPlayerMapPosition("player") -- just in case we dont have its coords
		currentMap = GetCurrentMapAreaID() -- just in case we dont have its mapID
		
		-- sometimes this methods don't return values
		-- or they return x y = 0 0 when the game is still loading
		-- or the currentMap could be a continent map, in which case we should ignore
		if (not x or not y or not currentMap or private.CONTINENT_ZONE_IDS[tonumber(currentMap)] or (tonumber(x) == 0 and tonumber(y) == 0)) then
			RareScanner:PrintDebugMessage("DEBUG: GetPlayerMapPosition o GetCurrentMapAreaID no han devuelto datos con lo que se usan los de base de datos")
			if (private.ZONE_IDS[npcID] and private.ZONE_IDS[npcID].zoneID ~= 0 and type(private.ZONE_IDS[npcID].zoneID) == "number" and next(private.ZONE_IDS[npcID].coords) ~= nil) then
				RareScanner:PrintDebugMessage("DEBUG: Tenemos todos los datos en nuestra BD; se usan estos")
				mapX, mapY = strsplit("-", private.ZONE_IDS[npcID].coords[1])
				private.db.global.rares_found[npcID] = { mapID = private.ZONE_IDS[npcID].zoneID, coordX = mapX, coordY = mapY, relocated = NOT_RELOCATED, foundTime = time() }
				RS_UpdateMapIcon(npcID)
			else
				RareScanner:PrintDebugMessage("DEBUG: No tenemos todos los datos en nuestra BD; se ignora el NPC encontrado")
				return
			end
		else
			mapX = string.sub(x*100,1,4)
			mapY = string.sub(y*100,1,4)
				
			-- Extracts zoneID from database that its more accurate, just in case the players map didn't change properly
			if (private.ZONE_IDS[npcID] and private.ZONE_IDS[npcID].zoneID ~= 0 and type(private.ZONE_IDS[npcID].zoneID) == "number") then
				currentMap = private.ZONE_IDS[npcID].zoneID
			end
			
			private.db.global.rares_found[npcID] = { mapID = currentMap, coordX = mapX, coordY = mapY, relocated = NOT_RELOCATED, foundTime = time() }
			RareScanner:PrintDebugMessage("DEBUG: Guardado en private.db.global.rares_found (ID: "..npcID.." MAPID: "..currentMap.." COORDX: "..mapX.." COORDY: "..mapY.." REUBI: "..NOT_RELOCATED.." TIMESTAMP: "..time())
			RS_UpdateMapIcon(npcID)
		end
	end

	-- Report to the GUILD, PARTY or RAID
	if (IsInGuild()) then
		local data = LibStub("AceSerializer-3.0"):Serialize({EVENT_NPC_FOUND, npcID, currentMap, mapX, mapY, NOT_RELOCATED, time(), CHANNEL_GUILD, UnitName("player")})
		RareScanner:SendCommMessage(COMM_PREFIX, data, CHANNEL_GUILD)
	end
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) or IsInRaid(LE_PARTY_CATEGORY_HOME)) then
		local data = LibStub("AceSerializer-3.0"):Serialize({EVENT_NPC_FOUND, npcID, currentMap, mapX, mapY, NOT_RELOCATED, time(), IsInRaid(LE_PARTY_CATEGORY_HOME) and CHANNEL_RAID or CHANNEL_PARTY, UnitName("player")})
		RareScanner:SendCommMessage(COMM_PREFIX, data, IsInRaid(LE_PARTY_CATEGORY_HOME) and CHANNEL_RAID or CHANNEL_PARTY)
	end
	
	-- avoid reporting same rare
	already_reported[npcID] = true
	C_Timer.After(15, function() 
		already_reported[npcID] = nil
	end)
end

function RareScanner:DataReceived(_, data)
	local status, dataDeserialized = LibStub("AceSerializer-3.0"):Deserialize(data)
	if (status) then
		if (not RareScanner:ValidateReceivedData(dataDeserialized)) then
			return
		end
		
		local event = dataDeserialized[1]
		if (event == EVENT_NPC_FOUND) then
			RareScanner:PrintDebugMessage("DEBUG: Te han enviado informacion de un rare")
			local npcID = dataDeserialized[2]
			local currentMap = dataDeserialized[3]
			local x = dataDeserialized[4]
			local y = dataDeserialized[5] 
			local relocated = dataDeserialized[6] 
			local timeStamp = dataDeserialized[7]
			local sourceChannel = dataDeserialized[8]
			local requestOwner = dataDeserialized[9]
			
			-- just in case its myself
			if (requestOwner == UnitName("player")) then
				RareScanner:PrintDebugMessage("DEBUG: La solicitud recibida es tuya... ignorala")
				return
			end
			
			RareScanner:PrintDebugMessage("DEBUG: Rare recibido (ID: "..npcID.." MAPID: "..currentMap.." COORDX: "..x.." COORDY: "..y.." REUBI: "..relocated.." TIMESTAMP: "..timeStamp.." CHANNEL: "..sourceChannel.." USER: "..requestOwner)
			
			-- Add the rare to our found list
			if (not private.db.global.rares_found[npcID]) then
				-- only if not filtered
				if (next(private.db.general.filteredRares) ~= nil and private.db.general.filteredRares[npcID] == false) then
					RareScanner:PrintDebugMessage("DEBUG: Este raro lo estas filtrando por ID, se ignora")
				elseif (RareScanner:ZoneFiltered(npcID)) then
					RareScanner:PrintDebugMessage("DEBUG: Este raro lo estas filtrando por zona, se ignora")
				else
					RareScanner:PrintDebugMessage("DEBUG: No tenias a este raro, añadido a la base de datos")
					private.db.global.rares_found[npcID] = { mapID = currentMap, coordX = x, coordY = y, relocated = relocated, foundTime = timeStamp }
					RS_UpdateMapIcon(npcID)
				end
			-- If its not killed updates the found time if its superior
			else
				if (not private.db.char.rares_killed[npcID] and timeStamp > private.db.global.rares_found[npcID].foundTime) then
					RareScanner:PrintDebugMessage("DEBUG: Ya lo tenias pero con una hora mas vieja")
					private.db.global.rares_found[npcID].foundTime = timeStamp
					RS_UpdateMapIcon(npcID)
				end
				if (private.db.global.rares_found[npcID].relocated == NOT_RELOCATED and relocated == RELOCATED) then
					RareScanner:PrintDebugMessage("DEBUG: Ya lo tenias pero con unas coordenadas menos ajustadas")
					private.db.global.rares_found[npcID].relocated = relocated
					RS_UpdateMapIcon(npcID)
				end
				
			end
			-- Resend to other channels
			if (sourceChannel == CHANNEL_GUILD) then
				if (IsInGroup(LE_PARTY_CATEGORY_HOME) or IsInRaid(LE_PARTY_CATEGORY_HOME)) then
					-- Don't bother in dungeons/raids/pvp
					if (not IsInInstance()) then
						RareScanner:PrintDebugMessage("DEBUG: Enviado informacion del raro recien descubierto al grupo/raid")
						local newChannel = IsInRaid(LE_PARTY_CATEGORY_HOME) and CHANNEL_RAID or CHANNEL_PARTY
						local resendData = LibStub("AceSerializer-3.0"):Serialize({EVENT_NPC_FOUND, npcID, currentMap, x, y, relocated, timeStamp, newChannel, UnitName("player")})
						RareScanner:SendCommMessage(COMM_PREFIX, resendData, newChannel)
					end
				end
			elseif (sourceChannel == CHANNEL_PARTY or sourceChannel == CHANNEL_RAID) then
				if (IsInGuild()) then
					-- Important! avoid loop resending between group and guild if both 
					-- players from same guild share a group
					if (not RS_PlayerInGuild(requestOwner)) then
						RareScanner:PrintDebugMessage("DEBUG: Enviado informacion del raro recien descubierto a la hermandad")
						local resendData = LibStub("AceSerializer-3.0"):Serialize({EVENT_NPC_FOUND, npcID, currentMap, x, y, relocated, timeStamp, CHANNEL_GUILD, UnitName("player")})
						RareScanner:SendCommMessage(COMM_PREFIX, resendData, CHANNEL_GUILD)
					end
				end
			end
		elseif (event == EVENT_REQUEST_DATA) then
			RareScanner:PrintDebugMessage("DEBUG: Evento de solicitud de datos")
			local requestOwner = dataDeserialized[2]
			RareScanner:PrintDebugMessage("DEBUG: Solicitado por "..requestOwner)
			
			-- just in case its myself
			if (requestOwner == UnitName("player")) then
				RareScanner:PrintDebugMessage("DEBUG: La solicitud recibida es tuya... ignorala")
				return
			end
			
			-- otherwise send to the whole list
			RareScanner:SendData(CHANNEL_GUILD)
		elseif (event == EVENT_SEND_DATA) then
			RareScanner:PrintDebugMessage("DEBUG: Te han enviado una tabla de datos de raros")
			local responseData = dataDeserialized[2]
			local sourceChannel = dataDeserialized[3]
			RareScanner:PrintDebugMessage("DEBUG: Canal "..sourceChannel)
			local requestOwner = dataDeserialized[4]
			RareScanner:PrintDebugMessage("DEBUG: Lo envia "..requestOwner)
			
			-- avoid sending messages continuosly
			if (SEND_DATA_COOLDOWN and time() < SEND_DATA_COOLDOWN + SEND_DATA_COOLDOWN_DELAY) then
				RareScanner:PrintDebugMessage("DEBUG: Has enviado demasiados datos, no envia durante un rato")
				return
			end
			
			-- just in case its myself
			if (requestOwner == UnitName("player")) then
				RareScanner:PrintDebugMessage("DEBUG: La solicitud recibida es tuya... ignorala")
				return
			end
			
			-- dump the new data
			if (responseData) then
				for k, v in pairs (responseData) do
					RareScanner:PrintDebugMessage("NPC Recibido: "..k)
					if (not private.db.global.rares_found[k]) then
						private.db.global.rares_found[k] = { mapID = v.mapID, coordX = v.coordX, coordY = v.coordY, relocated = v.relocated, foundTime = v.foundTime }
						RS_UpdateMapIcon(k)
						
						-- Resend it to the guild
						if (IsInGuild() and SEND_DATA_GUILD_COOLDOWN and time() < SEND_DATA_GUILD_COOLDOWN + SEND_DATA_DELAY) then
							-- Important! avoid loop resending between group and guild if both 
							-- players are sharing guild and group / it shouldn't ever happend
							-- in this scenario, but just in case
							if ((sourceChannel == CHANNEL_PARTY or sourceChannel == CHANNEL_RAID) and not RS_PlayerInGuild(requestOwner)) then
								RareScanner:PrintDebugMessage("DEBUG: Enviado informacion del raro recien descubierto a la hermandad")
								local resendData = LibStub("AceSerializer-3.0"):Serialize({EVENT_NPC_FOUND, k, v.mapID, v.coordX, v.coordY, v.relocated, v.foundTime, CHANNEL_GUILD, UnitName("player")})
								RareScanner:SendCommMessage(COMM_PREFIX, resendData, CHANNEL_GUILD)
								SEND_DATA_COOLDOWN = time()
							else
								RareScanner:PrintDebugMessage("DEBUG: La persona que me ha pasado la informacion esta en mi grupo y es de mi hermandad. NO reenvio a la hermandad")
							end
						end
					elseif (private.db.global.rares_found[k] and not private.db.char.rares_killed[k] and private.db.global.rares_found[k].foundTime < v.foundTime) then
						RareScanner:PrintDebugMessage("DEBUG: Lo tenia pero con una hora mas vieja, la actualizo")
						private.db.global.rares_found[k].foundTime = v.foundTime
						RS_UpdateMapIcon(k)
					end
				end
			end
		end
	end
end
RareScanner:RegisterComm(COMM_PREFIX, "DataReceived")

function RareScanner:SendData(channel)
	if (channel == CHANNEL_GUILD) then
		if (not IsInGuild()) then
			RareScanner:PrintDebugMessage("DEBUG: No perteneces a una hermandad, no hay a quien enviar datos")
			return
		elseif (SEND_DATA_GUILD_COOLDOWN and time() < SEND_DATA_GUILD_COOLDOWN + SEND_DATA_DELAY) then
			RareScanner:PrintDebugMessage("DEBUG: No han pasado 30 segundos desde tu ultimo envio a la party, esperamos un poco")
			return
		end
	elseif (channel == CHANNEL_RAID) then
		if (not IsInGroup(LE_PARTY_CATEGORY_HOME) and not IsInRaid(LE_PARTY_CATEGORY_HOME)) then
			RareScanner:PrintDebugMessage("DEBUG: No estas en un grupo/raid creado manualmente, no se envian datos")
			return
		elseif (SEND_DATA_PARTY_COOLDOWN and time() < SEND_DATA_PARTY_COOLDOWN + SEND_DATA_DELAY) then
			RareScanner:PrintDebugMessage("DEBUG: No han pasado 30 segundos desde tu ultimo envio a la party, no se envian datos")
			return
		end
		local isInstance, instanceType = IsInInstance()
		
		-- don't bother in instances
		if (isInstance) then
			if (SEND_DATA_PARTY_TIMER) then
				RareScanner:PrintDebugMessage("DEBUG: En instancia, desactivo SPAM hasta que haya un cambio de la raid")
				SEND_DATA_PARTY_TIMER:Cancel()
				return
			end
		end
	end
	
	-- avoid sending messages continuosly
	if (SEND_DATA_COOLDOWN and time() < SEND_DATA_COOLDOWN + SEND_DATA_COOLDOWN_DELAY) then
		return
	end

	RareScanner:PrintDebugMessage("DEBUG: Enviado datos por el canal "..channel)
	if (next(private.db.global.rares_found) ~= nil) then
		RareScanner:PrintDebugMessage("DEBUG: Se han encontrado datos que enviar")
		
		local dataTable = {}
		for k, v in pairs(private.db.global.rares_found) do
			-- only takes into account rares found before 30 minutes
			if (time() - v.foundTime <= _30_MINUTES) then
				RareScanner:PrintDebugMessage("Empaquetando "..k.." que fue encontrado hace menos de 30 minutos")
				dataTable[k] = { mapID = v.mapID, coordX = v.coordX, coordY = v.coordY, relocated = v.relocated, foundTime = v.foundTime }
			end
		end
		
		if (channel == CHANNEL_RAID) then
			if (IsInGroup(LE_PARTY_CATEGORY_HOME) or IsInRaid(LE_PARTY_CATEGORY_HOME)) then
				RareScanner:PrintDebugMessage("DEBUG: Enviado mensaje a grupo/raid")
				local newChannel = IsInRaid(LE_PARTY_CATEGORY_HOME) and CHANNEL_RAID or CHANNEL_PARTY
				local data = LibStub("AceSerializer-3.0"):Serialize({EVENT_SEND_DATA, dataTable, newChannel, UnitName("player")})
				RareScanner:SendCommMessage(COMM_PREFIX, data, newChannel)
				SEND_DATA_PARTY_COOLDOWN = time()
				SEND_DATA_COOLDOWN = time()
			end
		else
			RareScanner:PrintDebugMessage("DEBUG: Enviado mensaje a hermandad")
			local data = LibStub("AceSerializer-3.0"):Serialize({EVENT_SEND_DATA, dataTable, CHANNEL_GUILD, UnitName("player")})
			RareScanner:SendCommMessage(COMM_PREFIX, data, channel)
			SEND_DATA_GUILD_COOLDOWN = time()
			SEND_DATA_COOLDOWN = time()
		end
	else
		RareScanner:PrintDebugMessage("DEBUG: No hay datos que enviar")
	end
end

function RareScanner:RefreshRaresFoundList()
	if (not private.db.global.rares_found) then
		private.db.global.rares_found = {}
	end
	
	-- resets killed timer
	for k, v in pairs (private.db.char.rares_killed) do
		if (v and v ~= ETERNAL_DEATH and v < time()) then
			private.db.char.rares_killed[k] = nil
		end
	end
	
	if (not CLEAN_RARES_FOUND_TIMER) then
		CLEAN_RARES_FOUND_TIMER = C_Timer.NewTimer(CLEAN_RARES_FOUND_DELAY, function() 
			RareScanner:RefreshRaresFoundList()
		end)
	end
end

function RareScanner:ValidateReceivedData(data)
	if (not data[1]) then
		RareScanner:PrintDebugMessage("DEBUG: No se ha recibido el evento.")
		return
	end
	RareScanner:PrintDebugMessage("DEBUG: Evento recibido "..data[1])
	if (data[1] == EVENT_NPC_FOUND) then
		if (not data[2] or type (data[2]) ~= "number" or not RareScanner:NpcIdToName(data[2])) then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el npcID (string) en la posicion 2")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[2] or ''))
			return
		elseif (not data[3] or type (data[3]) ~= "number") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el mapID (string) en la posicion 3")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[3] or ''))
			return
		elseif (not data[4] or type (data[4]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el x (string) en la posicion 4")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[4] or ''))
			return
		elseif (not data[5] or type (data[5]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el y (string) en la posicion 5")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[5] or ''))
			return
		elseif (not data[6] or type (data[6]) ~= "number") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el relocated (string) en la posicion 6")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[6] or ''))
			return
		elseif (not data[7] or type (data[7]) ~= "number") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el timeStamp (string) en la posicion 7")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[7] or ''))
			return
		elseif (not data[8] or type (data[8]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el sourceChannel (string) en la posicion 8")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[8] or ''))
			return
		elseif (not data[9] or type (data[9]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_NPC_FOUND No recibido el requestOwner (string) en la posicion 9")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[9] or ''))
			return
		end
	
		return true
	end

	if (data[1] == EVENT_REQUEST_DATA) then
		if (not data[2] or type (data[2]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_REQUEST_DATA No recibido el requestOwner (string) en la posicion 2")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[2] or ''))
			return
		end
		
		return true
	end
	
	if (data[1] == EVENT_SEND_DATA) then
		if (not data[2] or type (data[2]) ~= "table") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido el responseData (string) en la posicion 2")
			pRareScanner:PrintDebugMessage("DEBUG: "..(data[2] or ''))
			return
		elseif (not data[3] or type (data[3]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido el sourceChannel (string) en la posicion 3")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[3] or ''))
			return
		elseif (not data[4] or type (data[4]) ~= "string") then
			RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido el requestOwner (string) en la posicion 4")
			RareScanner:PrintDebugMessage("DEBUG: "..(data[4] or ''))
			return
		end
		
		for k, v in pairs (data[2]) do
			if (not k or type (k)  ~= "number" or not RareScanner:NpcIdToName(k)) then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el npcID (string) en la clave K")
				RareScanner:PrintDebugMessage("DEBUG: "..(k or ''))
				return
			elseif (not v or type (v) ~= "table") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData la informacion del npc (table) en el valor V")
				RareScanner:PrintDebugMessage("DEBUG: "..(v or ''))
				return
			elseif (not v.mapID or type (v.mapID) ~= "number") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el mapID (number)")
				RareScanner:PrintDebugMessage("DEBUG: "..(v.mapID or ''))
				return
			elseif (not v.coordX or type (v.coordX) ~= "string") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el x (string)")
				RareScanner:PrintDebugMessage("DEBUG: "..(v.coordX or ''))
				return
			elseif (not v.coordY or type (v.coordY) ~= "string") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el y (string)")
				RareScanner:PrintDebugMessage("DEBUG: "..(v.coordY or ''))
				return
			elseif (not v.relocated or type (v.relocated) ~= "number") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el relocated (string)")
				RareScanner:PrintDebugMessage("DEBUG: "..(v.relocated or ''))
				return
			elseif (not v.foundTime or type (v.foundTime) ~= "number") then
				RareScanner:PrintDebugMessage("DEBUG: EVENT_SEND_DATA No recibido en el responseData el foundTime (string)")
				RareScanner:PrintDebugMessage("DEBUG: "..(v.foundTime or ''))
				return
			end
		end

		return true
	end
end

----------------------------------------------
-- Group finder methods
----------------------------------------------
function RareScanner:SearchGroup(npcID, secondTime)
	--Check if the user can't start a group due to not being a leader
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) and not UnitIsGroupLeader("player", LE_PARTY_CATEGORY_HOME)) then
		RareScanner:PrintMessage(LFG_LIST_NOT_LEADER);
		return;
	end

	--Check if the player is currently in some incompatible queue
	local messageStart = LFGListUtil_GetActiveQueueMessage(true);
	if (messageStart) then
		RareScanner:PrintMessage(messageStart)
		return;
	end
	
	--Search for group killing this npc
	local selectedLanguages = {}
	for k,v in pairs(C_LFGList.GetAvailableLanguageSearchFilter()) do
		selectedLanguages[v] = true
	end
	
	local enNpcName = RareScanner:NpcIdToEnName(npcID)	
	if (not secondTime) then
		if (private.db.lfg.searchInClientsLocale) then
			local clientNpcName = RareScanner:NpcIdToName(npcID)
			C_LFGList.Search(6, LFGListSearchPanel_ParseSearchTerms(clientNpcName), 0, 4, selectedLanguages)
		else
			C_LFGList.Search(6, LFGListSearchPanel_ParseSearchTerms(enNpcName), 0, 4, selectedLanguages)
		end
	else
		C_LFGList.Search(6, LFGListSearchPanel_ParseSearchTerms(tostring(npcID)), 0, 4, selectedLanguages)
	end
	
	C_Timer.After(1, function()
		RareScanner:JoinOrCreateGroup(npcID, enNpcName, secondTime);
	end)
end

function RareScanner:JoinOrCreateGroup(npcID, enNpcName, secondTime)
	-- Check results
	local numResults, resultIDTable = C_LFGList.GetSearchResults();
	
	local appIds = {}
	if (numResults > 0) then
		local upperClientNpcName = string.upper(RareScanner:NpcIdToName(npcID))
		local upperEnNpcName = string.upper(enNpcName)
		for k, v in pairs(resultIDTable) do
			local id,_,name, comment,_,_,_,_,_,_,_,_,author,_,_ = C_LFGList.GetSearchResultInfo(v)
			
			-- Skip ignored apps
			if (not scanner_button.clearedApplicationIds[id]) then
				-- Check if the group found matches
				local upperName = string.upper(name)
				local upperComment = string.upper(comment)
				if (((upperName == upperEnNpcName) or (upperName == upperClientNpcName) or string.find(upperComment, npcID) or string.find(upperComment, upperEnNpcName) or string.find(upperComment, upperClientNpcName)) and (not already_joined[author] or not already_joined[author][name])) then
					if (string.find(comment, "RareScanner")) then
						table.insert(appIds, 1, id)
					else
						table.insert(appIds, id)
					end
				end
			end
		end
	elseif (not secondTime and private.db.lfg.searchAgain) then
		StaticPopupDialogs["RS_FIRST_SEARCH_NO_RESULTS"] = {
			text = AL["LFG_NO_RESULTS_FIRST_SEARCH"],
			button1 = AL["LFG_YES"],
			button2 = AL["LFG_NO"],
			OnAccept = function()
				RareScanner:SearchGroup(npcID, true)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
			preferredIndex = 3,
		}
		StaticPopup_Show("RS_FIRST_SEARCH_NO_RESULTS")
		return
	end
	
	local groups = {}
	for k, v in pairs(appIds) do
		groups[k] = v;
	end
	
	if (next(groups) == nil) then 
		RareScanner:CreateGroup(npcID, enNpcName)
	else
		local canBeTank = LFDQueueFrameRoleButtonTank.checkButton:GetChecked()
		local canBeHealer = LFDQueueFrameRoleButtonHealer.checkButton:GetChecked()
		local canBeDamager = LFDQueueFrameRoleButtonDPS.checkButton:GetChecked()
		if ((canBeTank or canBeHealer or canBeDamager) == false) then
			canBeTank, canBeHealer, canBeDamager = UnitGetAvailableRoles("player")
		end
						
		local currentApplyID = 1
		RareScanner:JoinGroup(groups[currentApplyID], npcID, enNpcName, canBeTank, canBeHealer, canBeDamager)
		currentApplyID = currentApplyID + 1
		
		-- wait REJOIN_TIME_DELAY and try joining another group
		RETRY_TIMER = C_Timer.NewTicker(REJOIN_TIME_DELAY, function() 
			if (currentApplyID < table.getn(groups)) then
				RareScanner:JoinGroup(groups[currentApplyID], npcID, enNpcName, canBeTank, canBeHealer, canBeDamager)
				currentApplyID = currentApplyID + 1
			elseif (C_LFGList.GetNumApplications() > 0) then 							
				RareScanner:ClearApplications(npcID, enNpcName)
			else 
				-- try again or create a new one
				RareScanner:JoinOrCreateGroup(npcID, enNpcName, secondTime)
			end
		end, 1)
	end
end

function RareScanner:CreateGroupForzed(npcID, enNpcName)
	local clientNpcName = RareScanner:NpcIdToName(npcID)
	scanner_button.groupNpcID = npcID
	local activityID = 16 -- just pick one, it doesnt matter
	
	local title
	if (private.db.lfg.titleInClientsLocale) then
		title = clientNpcName
	else
		title = enNpcName
	end
	
	local comment
	if (string.upper(enNpcName) ~= string.upper(clientNpcName)) then
		comment = "RareScanner - "..enNpcName.." ("..clientNpcName..")".." NPCID"..npcID
	else
		comment = "RareScanner - "..enNpcName.." NPCID"..npcID
	end
	
	if (not C_LFGList.CreateListing(activityID, title, 0, 0, "", comment, true, false)) then
		RareScanner:PrintMessage(AL["LFG_ERROR_JOINING"])
	end
end

function RareScanner:CreateGroup(npcID, enNpcName, force)
	if (force) then
		RareScanner:CreateGroupForzed(npcID, enNpcName)
	else
		StaticPopupDialogs["RS_CREATE_GROUP_MESSAGE"] = {
			text = AL["LFG_CREATE_GROUP"],
			button1 = AL["LFG_YES"],
			button2 = AL["LFG_NO"],
			OnAccept = function()
				RareScanner:CreateGroupForzed(npcID, enNpcName)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
			preferredIndex = 3,
		}
		StaticPopup_Show("RS_CREATE_GROUP_MESSAGE")
	end
end

function RareScanner:ClearApplications(npcID, npcName)
	StaticPopupDialogs["RS_CANCEL_REQUEST_MESSAGE"] = {
		text = AL["LFG_REJOIN_GROUP"],
		button1 = AL["LFG_YES"],
		button2 = AL["LFG_NO"],
		OnAccept = function()
			scanner_button.groupNpcID = nil
			local applications = C_LFGList.GetApplications()
			if (C_LFGList.GetNumApplications() > 0) then
				local applicationToClear = C_LFGList.GetNumApplications()
				local _, applicationStatus = C_LFGList.GetApplicationInfo(applications[applicationToClear])
				if (applicationStatus == "invited") then
					C_LFGList.DeclineInvite(applications[applicationToClear])
				else
					C_LFGList.CancelApplication(applications[applicationToClear])
				end
				-- saves to ignore next time
				scanner_button.clearedApplicationIds[applicationToClear] = true
			end
			-- Try again
			RareScanner:JoinOrCreateGroup(npcID, npcName)
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
	StaticPopup_Show("RS_CANCEL_REQUEST_MESSAGE")
end

function RareScanner:JoinGroup(id, npcID, npcName, canBeTank, canBeHealer, canBeDamager)
	StaticPopupDialogs["RS_JOIN_GROUP"] = {
		text = AL["LFG_JOIN_GROUP"],
		button1 = AL["LFG_YES"],
		button2 = AL["LFG_NO"],
		OnAccept = function()
			scanner_button.joinNpcID = npcID
			C_LFGList.ApplyToGroup(id, "RareScanner - "..npcName, canBeTank, canBeHealer, canBeDamager)
		end,
		OnCancel = function()
			if (RETRY_TIMER) then
				RETRY_TIMER:Cancel()
			end
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
	StaticPopup_Show("RS_JOIN_GROUP")
end

function RareScanner:NpcIdToEnName(npcID)
	for k, v in pairs (AL["EN_RARE_LIST"]) do
		if (v == npcID) then
			return k
		end
	end
end

function RareScanner:NpcIdToName(npcID)
	for k, v in pairs (AL["RARE_LIST"]) do
		if (v == npcID) then
			return k
		end
	end
end

function RareScanner:NameToNpc(name) 
	local npcID = AL["RARE_LIST"][name]
	
	-- If not found checks if any key contains the name
	if (not npcID) then
		for k,v in pairs(AL["RARE_LIST"]) do
			if (string.find(string.upper(k), string.upper(name)) or string.find(string.upper(name), string.upper(k))) then
				return v, k
			end
		end
	end
	
	return npcID
end

----------------------------------------------
-- Custom links
----------------------------------------------
function RareScanner:PrintRareScannerLink(npcName)
	local link = "|Hrare:RareScannerLink|h|cFFFFFF00["..npcName.."]|h"
	RareScanner:PrintMessage(AL["HYPERLINK_MESSAGE"].." "..link)
end

local OldSetItemRef = SetItemRef 
function SetItemRef(link, text, button, chatFrame) 
	local func = strmatch(link, "^rare:(%a+)") 
	if (func == "RareScannerLink") then 
		local npcName = string.match(text, "%[(.-)%]")
		if (npcName) then
			local npcID = RareScanner:NameToNpc(npcName)
			if (npcID) then
				-- Reset previous cleared apps
				scanner_button.clearedApplicationIds = {}
				
				if (button == private.db.lfg.buttonCreateGroup) then
					RareScanner:CreateGroup(npcID, RareScanner:NpcIdToEnName(npcID), true)
				elseif (button == private.db.lfg.buttonJoinCreateGroup) then
					RareScanner:SearchGroup(npcID)
				end
			end
		end
	else 
		OldSetItemRef(link, text, button, chatFrame) 
	end 
end 

----------------------------------------------
-- Testing
----------------------------------------------
function RareScanner:Test() 
	local npcTestName = "Time-Lost Proto-Drake"
	local npcTestID = 32491
	local npcTestDisplayID = 26711
	
	RaidNotice_AddMessage(RaidWarningFrame, npcTestName..AL["JUST_SPAWNED"], ChatTypeInfo["RAID_WARNING"])
	PlaySoundFile(private.SOUNDS[private.db.sound.soundPlayed], "Master")
	scanner_button.npcID = npcTestID
	scanner_button.name = npcTestName
	scanner_button.displayID = npcTestDisplayID
	scanner_button.Title:SetText(npcTestName)
	scanner_button.Description_text:SetText(AL["CLICK_TARGET"])
	
	if (not InCombatLockdown()) then	
		scanner_button:ShowButton()
		scanner_button.FilterDisabledButton:Hide()
		scanner_button.GroupFinderIcon:Hide()
	else
		RareScanner:PrintRareScannerLink(npcTestName)
	end
	
	scanner_button.npcID = nil
	scanner_button.name = nil
	scanner_button.displayID = nil
	
	RareScanner:PrintMessage("test launched")
end

----------------------------------------------
-- Loading addon methods
----------------------------------------------
function RareScanner:OnInitialize() 
	-- Initialize rare filter list
	for k, v in pairs(AL["RARE_LIST"]) do 
		PROFILE_DEFAULTS.profile.general.filteredRares[v] = true
	end
	
	-- Initialize zone filter list
	for k, v in pairs(private.CONTINENT_ZONE_IDS) do 
		table.foreach(v.zones, function(index, zoneID)
			PROFILE_DEFAULTS.profile.general.filteredZones[zoneID] = true
		end)
		if (v.extrazones) then
			table.foreach(v.extrazones, function(index, zoneID)
				PROFILE_DEFAULTS.profile.general.filteredZones[zoneID] = true
			end)
		end
	end

	-- Initialize profile database
	self.db = LibStub("AceDB-3.0"):New("RareScannerDB", PROFILE_DEFAULTS)
	
	-- Initialize char database
	if (not self.db.char.rares_killed) then
		self.db.char.rares_killed = {}
	end
	
	-- Initialize global database
	if (not self.db.global.rares_found) then
		self.db.global.rares_found = {}
	end
	
	self.db.RegisterCallback(self, "OnProfileChanged", "RefreshOptions")
	self.db.RegisterCallback(self, "OnProfileCopied", "RefreshOptions")
	self.db.RegisterCallback(self, "OnProfileReset", "RefreshOptions")
	private.db = self.db.profile
	private.db.char = self.db.char
	private.db.global = self.db.global
  
	-- Adds about panel to wow options
	local about_panel = LibStub:GetLibrary("LibAboutPanel", true)
	if (about_panel) then
		self.optionsFrame = about_panel.new(nil, "RareScanner")
	end
	
	-- Migrate from char database to profile database
	if (self.db.char and next(self.db.char) ~= nil and not self.db.char.migrated) then
		RareScanner:MigrateCharDataBase(self.db)
	end
	
	-- Load saved variables
	self:SetupOptions()
	
	-- Refresh rare sharing variables
	RareScanner:RefreshRaresFoundList()
	
	-- Request to the guild for first request
	C_Timer.After(15, function() 
		RareScanner:PrintDebugMessage("DEBUG: Solicitando informacion a la hermandad")
		local data = LibStub ("AceSerializer-3.0"):Serialize({EVENT_REQUEST_DATA, UnitName("player")})
	
		if (IsInGuild()) then
			RareScanner:PrintDebugMessage("DEBUG: Enviado mensaje de peticion a la hermandad")
			RareScanner:SendCommMessage(COMM_PREFIX, data, CHANNEL_GUILD)
		end
	end)
	
	-- Forzes obtain roster data for group finder matters
	GuildRoster()
	
	RareScanner:PrintMessage("loaded")
end

function RS_PlayerInGuild(guildy_name)
	if (guildiesNames) then
		for i, name in ipairs(guildiesNames) do
			if (RS_tContains(name, guildy_name.."-")) then
				RareScanner:PrintDebugMessage("DEBUG: Detectado que el jugador "..guildy_name.." pertenece a tu misma hermandad") 
				return true
			end
		end
		
		RareScanner:PrintDebugMessage("DEBUG: Detectado que el jugador "..guildy_name.." es de otra hermandad")
		return false
	else
		RareScanner:PrintDebugMessage("DEBUG: No se ha podido comprobar si el jugador "..guildy_name.." pertenece a tu misma hermandad")
	
		GuildRoster()
		return false
	end
end

function RareScanner:PrintMessage(message) 
	print("|cFF00FF00[RareScanner]: |cFFFFFFFF"..message)
end

function RareScanner:PrintDebugMessage(message) 
	if (DEBUG_MODE) then
		print("|cFFDC143C[RareScanner]: |cFFFFFFFF"..message)
	end
end

function RareScanner:GetOptionsTable()
	return LibStub("AceDBOptions-3.0"):GetOptionsTable(RareScanner.db, PROFILE_DEFAULTS)
end

function RS_tContains(cTable, item)
	if (not cTable or not item) then
		return false
	end

	if (type(cTable) == "table") then
		for k, v in pairs(cTable) do
			if (type(v) == "table") then
				return RS_tContains(v, item)
			elseif (type(item) == "table") then
				return RS_tContains(item, v)
			elseif (type(v) == "string" and string.find(string.upper(v), string.upper(item))) then
				return true;
			elseif (v == item) then
				return true;
			end
		end
	else
		if (type(item) == "table") then
			return RS_tContains(item, cTable)
		elseif (type(cTable) == "string" and string.find(string.upper(cTable), string.upper(item))) then
			return true;
		elseif (cTable == item) then
			return true;
		end
	end
	
	return false;
end