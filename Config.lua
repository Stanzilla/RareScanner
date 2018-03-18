-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local ADDON_NAME, private = ...

local LibStub = _G.LibStub

local RareScanner = LibStub("AceAddon-3.0"):GetAddon("RareScanner")
local AL = LibStub("AceLocale-3.0"):GetLocale("RareScanner", false)

-----------------------------------------------------------------------
-- Config option functions.
-----------------------------------------------------------------------
private.SOUNDS = {
	["Female BloodElf Beg"] = "Sound\\Character\\BloodElf\\BloodElfFemaleBeg01.wav",
	["Achievement Sound"] = "Sound\\spells\\achievmentsound1.ogg",
	["Alarm Clock"] = "Sound\\interface\\alarmclockwarning2.ogg",
	["Boat Docking"] = "Sound\\doodad\\boatdockedwarning.ogg",
	["Siege Engineer Weapon"] = "Sound\\doodad\\fx_ograid_siege_weaponmachine_warning.ogg",
	["PVP Alliance"] = "Sound\\spells\\pvpwarningalliance.ogg",
	["PVP Horde"] = "Sound\\spells\\pvpwarninghorde.ogg",
	["Ready Check"] = "Sound\\interface\\levelup2.ogg",
	["Horn"] = "Sound\\Events\\gruntling_horn_bb.ogg",
	["Event Wardrum Ogre"] = "Sound\\Event Sounds\\Event_wardrum_ogre.ogg",
}

private.TOOLTIP_POSITIONS = {
	["ANCHOR_LEFT"] = AL["TOOLTIP_LEFT"],
	["ANCHOR_RIGHT"] = AL["TOOLTIP_RIGHT"],
	["ANCHOR_CURSOR"] = AL["TOOLTIP_CURSOR"],
	["ANCHOR_TOPLEFT"] = AL["TOOLTIP_TOP"],
	["ANCHOR_BOTTOMLEFT"] = AL["TOOLTIP_BOTTOM"],
}

private.ITEM_QUALITY = {
	[0] = AL["QUALITY_POOR"],
	[1] = AL["QUALITY_COMMON"],
	[2] = AL["QUALITY_UNCOMMON"],
	[3] = AL["QUALITY_RARE"],
	[4] = AL["QUALITY_EPIC"],
	[5] = AL["QUALITY_LEGENDARY"],
}

private.MOUSE_BUTTONS = {
	["LeftButton"] = AL["LEFT_BUTTON"],
	["MiddleButton"] = AL["MIDDLE_BUTTON"],
	["RightButton"] = AL["RIGHT_BUTTON"],
}

local DEFAULT_CONTINENT_MAP_ID = 1184

local general_options

local function GetGeneralOptions()
	if not general_options then
		general_options = {
			type = "group",
			order = 1,
			name = _G.GENERAL_LABEL,
			handler = RareScanner,
			desc = AL["GENERAL_OPTIONS"],
			args = {
				scanRares = {
					order = 0,
					name = AL["ENABLE_SCAN_RARES"],
					desc = AL["ENABLE_SCAN_RARES_DESC"],
					type = "toggle",
					get = function() return private.db.general.scanRares end,
					set = function(_, value)
						private.db.general.scanRares = value
					end,
					width = "full",
				},
				scanContainers = {
					order = 1,
					name = AL["ENABLE_SCAN_CONTAINERS"],
					desc = AL["ENABLE_SCAN_CONTAINERS_DESC"],
					type = "toggle",
					get = function() return private.db.general.scanContainers end,
					set = function(_, value)
						private.db.general.scanContainers = value
					end,
					width = "full",
				},
				scanEvents = {
					order = 2,
					name = AL["ENABLE_SCAN_EVENTS"],
					desc = AL["ENABLE_SCAN_EVENTS_DESC"],
					type = "toggle",
					get = function() return private.db.general.scanEvents end,
					set = function(_, value)
						private.db.general.scanEvents = value
					end,
					width = "full",
				},
				scanGarrison = {
					order = 3,
					name = AL["ENABLE_SCAN_GARRISON_CHEST"],
					desc = AL["ENABLE_SCAN_GARRISON_CHEST_DESC"],
					type = "toggle",
					get = function() return private.db.general.scanGarrison end,
					set = function(_, value)
						private.db.general.scanGarrison = value
					end,
					width = "full",
				},
				scanInstances = {
					order = 4,
					name = AL["ENABLE_SCAN_IN_INSTANCE"],
					desc = AL["ENABLE_SCAN_IN_INSTANCE_DESC"],
					type = "toggle",
					get = function() return private.db.general.scanInstances end,
					set = function(_, value)
						private.db.general.scanInstances = value
					end,
					width = "full",
				},
				test = {
					order = 5,
					name = AL["TEST"],
					desc = AL["TEST_DESC"],
					type = "execute",
					func = function() RareScanner:Test() end,
					width = "normal",
				}
			},
		}
	end
	
	return general_options
end

local sound_options

local function GetSoundOptions()
	if not sound_options then
		sound_options = {
			type = "group",
			order = 2,
			name = AL["SOUND"],
			handler = RareScanner,
			desc = AL["SOUND_OPTIONS"],
			args = {
				soundPlayed = {
					order = 0,
					type = "select",
					dialogControl = 'LSM30_Sound',
					name = AL["ALARM_SOUND"],
					desc = AL["ALARM_SOUND_DESC"],
					values = private.SOUNDS,
					get = function() return private.db.sound.soundPlayed end,
					set = function(_, value)
						private.db.sound.soundPlayed = value
					end,
					width = "double",
				},
				soundObjectPlayed = {
					order = 1,
					type = "select",
					dialogControl = 'LSM30_Sound',
					name = AL["ALARM_TREASURES_SOUND"],
					desc = AL["ALARM_TREASURES_SOUND_DESC"],
					values = private.SOUNDS,
					get = function() return private.db.sound.soundObjectPlayed end,
					set = function(_, value)
						private.db.sound.soundObjectPlayed = value
					end,
					width = "double",
				},
				soundDisabled = {
					order = 2,
					name = AL["DISABLE_SOUND"],
					desc = AL["DISABLE_SOUND_DESC"],
					type = "toggle",
					get = function() return private.db.sound.soundDisabled end,
					set = function(_, value)
						private.db.sound.soundDisabled = value
					end,
					width = "full",
				},
			},
		}
	end
	
	return sound_options
end

local display_options

local function GetDisplayOptions()
	if not display_options then
		display_options = {
			type = "group",
			order = 3,
			name = AL["DISPLAY"],
			handler = RareScanner,
			desc = AL["DISPLAY_OPTIONS"],
			args = {
				separatorMainButton = {
					order = 0,
					type = "header",
					name = AL["MAIN_BUTTON_OPTIONS"],
				},
				displayButton = {
					order = 1,
					type = "toggle",
					name = AL["DISPLAY_BUTTON"],
					desc = AL["DISPLAY_BUTTON_DESC"],
					get = function() return private.db.display.displayButton end,
					set = function(_, value)
						private.db.display.displayButton = value
					end,
					width = "full",
				},
				displayMiniature = {
					order = 2,
					type = "toggle",
					name = AL["DISPLAY_MINIATURE"],
					desc = AL["DISPLAY_MINIATURE_DESC"],
					get = function() return private.db.display.displayMiniature end,
					set = function(_, value)
						private.db.display.displayMiniature = value
					end,
					width = "full",
				},
				displayButtonContainers = {
					order = 3,
					type = "toggle",
					name = AL["DISPLAY_BUTTON_CONTAINERS"],
					desc = AL["DISPLAY_BUTTON_CONTAINERS_DESC"],
					get = function() return private.db.display.displayButtonContainers end,
					set = function(_, value)
						private.db.display.displayButtonContainers = value
					end,
					width = "full",
					disabled = function() return not private.db.display.displayButton end,
				},
				autoHideButton = {
					order = 4,
					type = "range",
					name = AL["AUTO_HIDE_BUTTON"],
					desc = AL["AUTO_HIDE_BUTTON_DESC"],
					min	= 0,
					max	= 30,
					step	= 5,
					bigStep = 5,
					get = function() return private.db.display.autoHideButton end,
					set = function(_, value)
						private.db.display.autoHideButton = value
					end,
					width = "full",
					disabled = function() return not private.db.display.displayButton end,
				},
				separatorLootBar = {
					order = 5,
					type = "header",
					name = AL["LOOT_PANEL_OPTIONS"],
				},
				displayLoot = {
					order = 6,
					type = "toggle",
					name = AL["DISPLAY_LOOT_PANEL"],
					desc = AL["DISPLAY_LOOT_PANEL_DESC"],
					get = function() return private.db.display.displayLoot end,
					set = function(_, value)
						private.db.display.displayLoot = value
					end,
					width = "full",
					disabled = function() return not private.db.display.displayButton end,
				},
				lootMinQuality = {
					order = 7,
					type = "select",
					name = AL["LOOT_MIN_QUALITY"],
					desc = AL["LOOT_MIN_QUALITY_DESC"],
					values = private.ITEM_QUALITY,
					get = function() return private.db.display.lootMinQuality end,
					set = function(_, value)
						private.db.display.lootMinQuality = value
					end,
					width = "double",
					disabled = function() return not private.db.display.displayButton end,
				},
				lootTooltipPosition = {
					order = 8,
					type = "select",
					name = AL["LOOT_TOOLTIP_POSITION"],
					desc = AL["LOOT_TOOLTIP_POSITION_DESC"],
					values = private.TOOLTIP_POSITIONS,
					get = function() return private.db.display.lootTooltipPosition end,
					set = function(_, value)
						private.db.display.lootTooltipPosition = value
					end,
					width = "double",
					disabled = function() return not private.db.display.displayButton end,
				},
				separatorMessages = {
					order = 9,
					type = "header",
					name = AL["MESSAGE_OPTIONS"],
				},
				displayChatMessage = {
					order = 10,
					type = "toggle",
					name = AL["SHOW_CHAT_ALERT"],
					desc = AL["SHOW_CHAT_ALERT_DESC"],
					get = function() return private.db.display.displayChatMessage end,
					set = function(_, value)
						private.db.display.displayChatMessage = value
					end,
					width = "full",
				},
			},
		}
	end
	
	return display_options
end

local filter_options

local function GetFilterOptions()
	if not filter_options then
		-- load continent combo
		local CONTINENT_MAP_IDS = {} 
		for k, v in pairs(private.CONTINENT_ZONE_IDS) do
			if (v.id) then
				local continentName = GetMapNameByID(k)
				CONTINENT_MAP_IDS[k] = continentName
			else
				CONTINENT_MAP_IDS[k] = AL["ZONES_CONTINENT_LIST"][k]
			end
		end
	
		local searchNpcByZoneID = function(zoneID, npcName)
			if (zoneID) then
				for k, v in pairs(AL["RARE_LIST"]) do 
					if (npcName) then
						if ((private.ZONE_IDS[v].zoneID == zoneID or (type(private.ZONE_IDS[v].zoneID) == "table" and RS_Set(private.ZONE_IDS[v].zoneID)[zoneID])) and string.find(string.upper(k), string.upper(npcName))) then
							filter_options.args.rareFilters.values[k] = v
						end
					else
						if (private.ZONE_IDS[v].zoneID == zoneID or (type(private.ZONE_IDS[v].zoneID) == "table" and RS_Set(private.ZONE_IDS[v].zoneID)[zoneID])) then
							filter_options.args.rareFilters.values[k] = v
						end
					end
				end
			end
		end
			
		local searchNpcByContinentID = function(continentID, npcName)
			if (continentID) then
				table.foreach(private.CONTINENT_ZONE_IDS[continentID].zones, function(index, zoneID)							
					-- filter checkboxes
					searchNpcByZoneID(zoneID, npcName)
				end)
			end
		end
		
		local loadSubmapsCombo = function(continentID)
			if (continentID) then
				filter_options.args.subzones.values = {}
				private.filter_options_subzones = nil
				table.foreach(private.CONTINENT_ZONE_IDS[continentID].zones, function(index, zoneID)							
					filter_options.args.subzones.values[zoneID] = GetMapNameByID(zoneID)
				end)
			end
		end
			
		filter_options = {
			type = "group",
			order = 1,
			name = AL["FILTER"],
			handler = RareScanner,
			desc = AL["FILTER"],
			args = {
				rareFiltersSearch = {
					order = 1,
					type = "input",
					name = AL["FILTERS_SEARCH"],
					desc = AL["FILTERS_SEARCH_DESC"],
					get = function(_, value) return private.filter_options_input end,
					set = function(_, value)
						private.filter_options_input = value
						-- search
						filter_options.args.rareFilters.values = {}
						if (private.filter_options_subzones) then
							searchNpcByZoneID(private.filter_options_subzones, value)
						else
							searchNpcByContinentID(private.filter_options_continents, value)
						end
					end,
					width = "full",
				},
				continents = {
					order = 2.1,
					type = "select",
					name = AL["FILTER_CONTINENT"],
					desc = AL["FILTER_CONTINENT_DESC"],
					values = CONTINENT_MAP_IDS,
					get = function(_, key) 
						-- initialize
						if (not private.filter_options_continents) then
							private.filter_options_continents = DEFAULT_CONTINENT_MAP_ID
							
							-- load submaps combo
							loadSubmapsCombo(private.filter_options_continents)
							
							-- launch first search zone filters
							searchNpcByContinentID(private.filter_options_continents)
						end
						
						return private.filter_options_continents
					end,
					set = function(_, key, value)
						private.filter_options_continents = key
						
						-- load subzones combo
						loadSubmapsCombo(key)
				
						-- search
						filter_options.args.rareFilters.values = {}
						searchNpcByContinentID(key, private.filter_options_input)					
					end,
					width = "normal",
				},
				subzones = {
					order = 2.2,
					type = "select",
					name = AL["FILTER_ZONE"],
					desc = AL["FILTER_ZONE_DESC"],
					values = {},
					get = function(_, key) return private.filter_options_subzones end,
					set = function(_, key, value)
						private.filter_options_subzones = key
						
						-- search
						filter_options.args.rareFilters.values = {}
						searchNpcByZoneID(key, private.filter_options_input)
					end,
					width = "normal",
					disabled = function() return (next(filter_options.args.subzones.values) == nil) end,
				},
				rareFiltersClear = {
					order = 2.3,
					name = AL["CLEAR_FILTERS_SEARCH"],
					desc = AL["CLEAR_FILTERS_SEARCH_DESC"],
					type = "execute",
					func = function() 
						private.filter_options_input = nil
						filter_options.args.subzones.values = {}
						private.filter_options_subzones = nil
						private.filter_options_continents = DEFAULT_CONTINENT_MAP_ID
						-- load subzones combo
						loadSubmapsCombo(DEFAULT_CONTINENT_MAP_ID)
						-- search
						filter_options.args.rareFilters.values = {}
						searchNpcByContinentID(DEFAULT_CONTINENT_MAP_ID)	
					end,
					width = "normal",
				},
				separator = {
					order = 3,
					type = "header",
					name = AL["FILTERS"],
				},
				rareFiltersToogleAll = {
					order = 4,
					name = AL["TOGGLE_FILTERS"],
					desc = AL["TOGGLE_FILTERS_DESC"],
					type = "execute",
					func = function() 
						if (next(filter_options.args.rareFilters.values) ~= nil) then
							if (private.db.rareFilters.filtersToggled) then
								private.db.rareFilters.filtersToggled = false
							else
								private.db.rareFilters.filtersToggled = true
							end
							
							for k, v in pairs(filter_options.args.rareFilters.values) do
								private.db.general.filteredRares[v] = private.db.rareFilters.filtersToggled
							end
						end
					end,
					width = "full",
				},
				rareFilters = {
					order = 5,
					type = "multiselect",
					name = AL["FILTER_RARE_LIST"],
					desc = AL["FILTER_RARE_LIST_DESC"],
					values = {},
					get = function(_, key) return private.db.general.filteredRares[key] end,
					set = function(_, key, value)
						private.db.general.filteredRares[key] = value;
					end,
				}
			},
		}
	end
	
	return filter_options
end

function RS_Set(list)
	local set = {}
	for _, l in ipairs(list) do set[l] = true end
	return set
end

local zones_filter_options

local function GetZonesFilterOptions()
	if not zones_filter_options then
		-- load continent combo
		local CONTINENT_MAP_IDS = {} 
		for k, v in pairs(private.CONTINENT_ZONE_IDS) do
			if (v.zonefilter) then
				if (v.id) then
					local continentName = GetMapNameByID(k)
					CONTINENT_MAP_IDS[k] = continentName
				else
					CONTINENT_MAP_IDS[k] = AL["ZONES_CONTINENT_LIST"][k]
				end
			end
		end
		
		local searchZoneByContinentID = function(continentID, zoneName)
			if (continentID) then
				table.foreach(private.CONTINENT_ZONE_IDS[continentID].zones, function(index, zoneID)
					if (zoneName) then
						local name = GetMapNameByID(zoneID)
						if (string.find(string.upper(name), string.upper(zoneName))) then
							zones_filter_options.args.zoneFilters.values[name] = zoneID
						end
					else
						zones_filter_options.args.zoneFilters.values[GetMapNameByID(zoneID)] = zoneID
					end
				end)
				if (private.CONTINENT_ZONE_IDS[continentID].extrazones) then
					table.foreach(private.CONTINENT_ZONE_IDS[continentID].extrazones, function(index, zoneID)
						if (zoneName) then
							local name = GetMapNameByID(zoneID)
							if (string.find(string.upper(name), string.upper(zoneName))) then
								zones_filter_options.args.zoneFilters.values[name] = zoneID
							end
						else
							zones_filter_options.args.zoneFilters.values[GetMapNameByID(zoneID)] = zoneID
						end
					end)
				end
			end
		end
		
		zones_filter_options = {
			type = "group",
			order = 1,
			name = AL["ZONES_FILTER"],
			handler = RareScanner,
			desc = AL["ZONES_FILTER"],
			args = {
				zoneFiltersSearch = {
					order = 1,
					type = "input",
					name = AL["FILTERS_SEARCH"],
					desc = AL["ZONES_FILTERS_SEARCH_DESC"],
					get = function(_, value) return private.zones_filter_input end,
					set = function(_, value)
						private.zones_filter_input = value
						-- search
						zones_filter_options.args.zoneFilters.values = {}
						searchZoneByContinentID(private.zones_filter_options_continents, value)
					end,
					width = "full",
				},
				continents = {
					order = 2.1,
					type = "select",
					name = AL["FILTER_CONTINENT"],
					desc = AL["FILTER_CONTINENT_DESC"],
					values = CONTINENT_MAP_IDS,
					get = function(_, key) 
						-- initialize
						if (not private.zones_filter_options_continents) then
							private.zones_filter_options_continents = DEFAULT_CONTINENT_MAP_ID
							
							-- launch first search zone filters
							searchZoneByContinentID(private.zones_filter_options_continents)
						end
						
						return private.zones_filter_options_continents
					end,
					set = function(_, key, value)
						private.zones_filter_options_continents = key
				
						-- search
						zones_filter_options.args.zoneFilters.values = {}
						searchZoneByContinentID(key, private.zones_filter_input)					
					end,
					width = "normal",
				},
				zoneFiltersClear = {
					order = 2.2,
					name = AL["CLEAR_FILTERS_SEARCH"],
					desc = AL["CLEAR_FILTERS_SEARCH_DESC"],
					type = "execute",
					func = function() 
						private.zones_filter_input = nil
						private.zones_filter_options_continents = DEFAULT_CONTINENT_MAP_ID
						-- search
						zones_filter_options.args.zoneFilters.values = {}
						searchZoneByContinentID(DEFAULT_CONTINENT_MAP_ID)
					end,
					width = "normal",
				},
				separator = {
					order = 3,
					type = "header",
					name = AL["ZONES_FILTER"],
				},
				zoneFiltersToogleAll = {
					order = 4,
					name = AL["TOGGLE_FILTERS"],
					desc = AL["TOGGLE_FILTERS_DESC"],
					type = "execute",
					func = function() 
						if (next(zones_filter_options.args.zoneFilters.values) ~= nil) then
							if (private.db.zoneFilters.filtersToggled) then
								private.db.zoneFilters.filtersToggled = false
							else
								private.db.zoneFilters.filtersToggled = true
							end
							
							for k, v in pairs(zones_filter_options.args.zoneFilters.values) do
								private.db.general.filteredZones[v] = private.db.zoneFilters.filtersToggled
							end
						end
					end,
					width = "full",
				},
				zoneFilters = {
					order = 5,
					type = "multiselect",
					name = AL["FILTER_ZONES_LIST"],
					desc = AL["FILTER_ZONES_LIST_DESC"],
					values = {},
					get = function(_, key) return private.db.general.filteredZones[key] end,
					set = function(_, key, value)
						private.db.general.filteredZones[key] = value;
					end,
				}
			},
		}
	end
	
	return zones_filter_options
end

local lfg_options

local function GetLfgOptions()
	if not lfg_options then
		lfg_options = {
			type = "group",
			order = 1,
			name = AL["LFG_OPTIONS"],
			handler = RareScanner,
			desc = AL["LFG_OPTIONS"],
			args = {
				displayLFGButton = {
					order = 1,
					type = "toggle",
					name = AL["DISPLAY_LFG_BUTTON"],
					desc = AL["DISPLAY_LFG_BUTTON_DESC"],
					get = function() return private.db.lfg.displayLFGButton end,
					set = function(_, value)
						private.db.lfg.displayLFGButton = value
					end,
					width = "full",
				},
				titleInClientsLocale = {
					order = 2,
					type = "toggle",
					name = AL["LFG_GROUP_NAME_LANGUAGE"],
					desc = AL["LFG_GROUP_NAME_LANGUAGE_DESC"],
					get = function() return private.db.lfg.titleInClientsLocale end,
					set = function(_, value)
						private.db.lfg.titleInClientsLocale = value
					end,
					width = "full",
					disabled = function() return (not private.db.lfg.displayLFGButton or GetLocale() == "enUS" or GetLocale() == "enGB") end,
				},
				searchInClientsLocale = {
					order = 3,
					type = "toggle",
					name = AL["LFG_SEARCH_LANGUAGE"],
					desc = AL["LFG_SEARCH_LANGUAGE_DESC"],
					get = function() return private.db.lfg.searchInClientsLocale end,
					set = function(_, value)
						private.db.lfg.searchInClientsLocale = value
					end,
					width = "full",
					disabled = function() return (not private.db.lfg.displayLFGButton or GetLocale() == "enUS" or GetLocale() == "enGB") end,
				},
				searchAgain = {
					order = 4,
					type = "toggle",
					name = AL["LFG_SEARCH_AGAIN"],
					desc = AL["LFG_SEARCH_AGAIN_DESC"],
					get = function() return private.db.lfg.searchAgain end,
					set = function(_, value)
						private.db.lfg.searchAgain = value
					end,
					width = "full",
					disabled = function() return not private.db.lfg.displayLFGButton end,
				},
				displayLeaveGroupDialog = {
					order = 5,
					type = "toggle",
					name = AL["LFG_TOOGLE_LEAVE_GROUP"],
					desc = AL["LFG_TOOGLE_LEAVE_GROUP_DESC"],
					get = function() return private.db.lfg.displayLeaveGroupDialog end,
					set = function(_, value)
						private.db.lfg.displayLeaveGroupDialog = value
					end,
					width = "full",
					disabled = function() return not private.db.lfg.displayLFGButton end,
				},
				buttonCreateGroup = {
					order = 6,
					type = "select",
					name = AL["LFG_BUTTON_CREATE_ONLY"],
					desc = AL["LFG_BUTTON_CREATE_ONLY_DESC"],
					values = private.MOUSE_BUTTONS,
					get = function() return private.db.lfg.buttonCreateGroup end,
					set = function(_, value)
						private.db.lfg.buttonCreateGroup = value
						if (private.db.lfg.buttonJoinCreateGroup == private.db.lfg.buttonCreateGroup) then
							if (private.db.lfg.buttonCreateGroup == "LeftButton") then
								private.db.lfg.buttonJoinCreateGroup = "RightButton"
							elseif (private.db.lfg.buttonCreateGroup == "MiddleButton") then
								private.db.lfg.buttonJoinCreateGroup = "LeftButton"
							elseif (private.db.lfg.buttonCreateGroup == "RightButton") then
								private.db.lfg.buttonJoinCreateGroup = "LeftButton"
							end
						end
					end,
					width = "double",
					disabled = function() return not private.db.lfg.displayLFGButton end,
				},
				buttonJoinCreateGroup = {
					order = 7,
					type = "select",
					name = AL["LFG_BUTTON_CREATE_JOIN"],
					desc = AL["LFG_BUTTON_CREATE_JOIN_DESC"],
					values = private.MOUSE_BUTTONS,
					get = function() return private.db.lfg.buttonJoinCreateGroup end,
					set = function(_, value)
						private.db.lfg.buttonJoinCreateGroup = value
						if (private.db.lfg.buttonCreateGroup == private.db.lfg.buttonJoinCreateGroup) then
							if (private.db.lfg.buttonJoinCreateGroup == "LeftButton") then
								private.db.lfg.buttonCreateGroup = "RightButton"
							elseif (private.db.lfg.buttonJoinCreateGroup == "MiddleButton") then
								private.db.lfg.buttonCreateGroup = "LeftButton"
							elseif (private.db.lfg.buttonJoinCreateGroup == "RightButton") then
								private.db.lfg.buttonCreateGroup = "LeftButton"
							end
						end
					end,
					width = "double",
					disabled = function() return not private.db.lfg.displayLFGButton end,
				},
				separatorLogWindow = {
					order = 8,
					type = "header",
					name = AL["LOG_WINDOW_OPTIONS"],
				},
				displayLogWindow = {
					order = 9,
					type = "toggle",
					name = AL["DISPLAY_LOG_WINDOW"],
					desc = AL["DISPLAY_LOG_WINDOW_DESC"],
					get = function() return private.db.lfg.displayLogWindow end,
					set = function(_, value)
						private.db.lfg.displayLogWindow = value
					end,
					width = "full",
					disabled = function() return not private.db.lfg.displayLFGButton end,
				},
				autoHideLogger = {
					order = 10,
					type = "range",
					name = AL["LOG_WINDOW_AUTOHIDE"],
					desc = AL["LOG_WINDOW_AUTOHIDE_DESC"],
					min	= 0,
					max	= 10,
					step = 1,
					bigStep = 1,
					get = function() return private.db.lfg.autoHideLogger end,
					set = function(_, value)
						private.db.lfg.autoHideLogger = value
					end,
					width = "full",
					disabled = function() return (not private.db.lfg.displayLFGButton or not private.db.lfg.displayLogWindow) end,
				},
			},
		}
	end
	
	return lfg_options
end


local map_options

local function GetMapOptions()
	if not map_options then
		map_options = {
			type = "group",
			order = 1,
			name = AL["MAP_OPTIONS"],
			handler = RareScanner,
			desc = AL["MAP_OPTIONS"],
			args = {
				displayMapIcons = {
					order = 1,
					type = "toggle",
					name = AL["DISPLAY_MAP_ICONS"],
					desc = AL["DISPLAY_MAP_ICONS_DESC"],
					get = function() return private.db.map.displayMapIcons end,
					set = function(_, value)
						private.db.map.displayMapIcons = value
					end,
					width = "full",
				},
				keepShowingAfterDead = {
					order = 2,
					type = "toggle",
					name = AL["MAP_SHOW_ICON_AFTER_DEAD"],
					desc = AL["MAP_SHOW_ICON_AFTER_DEAD_DESC"],
					get = function() return private.db.map.keepShowingAfterDead end,
					set = function(_, value)
						private.db.map.keepShowingAfterDead = value
						RareScanner:ReloadIcons(true)
					end,
					width = "full",
					disabled = function() return (not private.db.map.displayMapIcons) end,
				},
				maxSeenTime = {
					order = 3,
					type = "range",
					name = AL["MAP_SHOW_ICON_MAX_SEEN_TIME"],
					desc = AL["MAP_SHOW_ICON_MAX_SEEN_TIME_DESC"],
					min	= 0,
					max	= 24,
					step = 1,
					bigStep = 1,
					get = function() return private.db.map.maxSeenTime end,
					set = function(_, value)
						private.db.map.maxSeenTime = value
						RareScanner:ReloadIcons(true)
					end,
					width = "full",
					disabled = function() return (not private.db.map.displayMapIcons) end,	
				},
			},
		}
	end
	
	return map_options
end

function RareScanner:RefreshOptions(event, database, newProfileKey)
	private.db = database.profile
end

function RareScanner:SetupOptions()
	local RSAC = LibStub("AceConfig-3.0")
	RSAC:RegisterOptionsTable("RareScanner General", GetGeneralOptions)
	RSAC:RegisterOptionsTable("RareScanner Sound", GetSoundOptions)
	RSAC:RegisterOptionsTable("RareScanner Display", GetDisplayOptions)
	RSAC:RegisterOptionsTable("RareScanner Filter", GetFilterOptions)
	RSAC:RegisterOptionsTable("RareScanner Zone Filter", GetZonesFilterOptions)
	RSAC:RegisterOptionsTable("RareScanner LFG", GetLfgOptions)
	RSAC:RegisterOptionsTable("RareScanner Map", GetMapOptions)
	RSAC:RegisterOptionsTable("RareScanner Profiles", RareScanner:GetOptionsTable())

	local RSACD = LibStub("AceConfigDialog-3.0-RSmod")
	RSACD:AddToBlizOptions("RareScanner General", _G.GENERAL_LABEL, "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Sound", AL["SOUND"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Display", AL["DISPLAY"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Filter", AL["FILTER"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Zone Filter", AL["ZONES_FILTER"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner LFG", AL["LFG_OPTIONS"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Map", AL["MAP_OPTIONS"], "RareScanner")
	RSACD:AddToBlizOptions("RareScanner Profiles", AL["PROFILES"], "RareScanner")
end

-- Dump char database into profile database
-- It takes into account only parameters existing in release 3.3.3
-- moment when we migrated the type of database
function RareScanner:MigrateCharDataBase(db) 
	-- general options
	if (db.char.general ~= nil) then
		if (db.char.general.scanRares ~= nil) then
			private.db.general.scanRares = db.char.general.scanRares
		end
		if (db.char.general.scanContainers ~= nil) then
			private.db.general.scanContainers = db.char.general.scanContainers
		end
		if (db.char.general.scanEvents ~= nil) then
			private.db.general.scanEvents = db.char.general.scanEvents
		end
		if (db.char.general.scanGarrison ~= nil) then
			private.db.general.scanGarrison = db.char.general.scanGarrison
		end
		if (db.char.general.scanInstances ~= nil) then
			private.db.general.scanInstances = db.char.general.scanInstances
		end
		if (db.char.general.filteredRares ~= nil) then
			private.db.general.filteredRares = db.char.general.filteredRares
		end
		if (db.char.general.filteredZones ~= nil) then
			private.db.general.filteredZones = db.char.general.filteredZones
		end
	end

	-- sound options
	if (db.char.sound ~= nil) then
		if (db.char.sound.soundPlayed ~= nil) then
			private.db.sound.soundPlayed = db.char.sound.soundPlayed
		end
		if (db.char.sound.soundObjectPlayed ~= nil) then
			private.db.sound.soundObjectPlayed = db.char.sound.soundObjectPlayed
		end
		if (db.char.sound.soundDisabled ~= nil) then
			private.db.sound.soundDisabled = db.char.sound.soundDisabled
		end
	end

	-- display options
	if (db.char.display ~= nil) then
		if (db.char.display.displayButton ~= nil) then
			private.db.display.displayButton = db.char.display.displayButton
		end
		if (db.char.display.displayButtonContainers ~= nil) then
			private.db.display.displayButtonContainers = db.char.display.displayButtonContainers
		end
		if (db.char.display.autoHideButton ~= nil) then
			private.db.display.autoHideButton = db.char.display.autoHideButton
		end
		if (db.char.display.displayLoot ~= nil) then
			private.db.display.displayLoot = db.char.display.displayLoot
		end
		if (db.char.display.lootTooltipPosition ~= nil) then
			private.db.display.lootTooltipPosition = db.char.display.lootTooltipPosition
		end
		if (db.char.display.displayChatMessage ~= nil) then
			private.db.display.displayChatMessage = db.char.display.displayChatMessage
		end
		if (db.char.display.lootMinQuality ~= nil) then
			private.db.display.lootMinQuality = db.char.display.lootMinQuality
		end
	end
	
	-- Rare filters
	if (db.char.rareFilters ~= nil) then
		if (db.char.rareFilters.filtersToggled ~= nil) then
			private.db.rareFilters.filtersToggled = db.char.rareFilters.filtersToggled
		end
	end

	-- Rare filters
	if (db.char.zoneFilters ~= nil) then
		if (db.char.zoneFilters.filtersToggled ~= nil) then
			private.db.zoneFilters.filtersToggled = db.char.zoneFilters.filtersToggled
		end
	end
	
	-- Set as migrated
	db.char.migrated = true
end