-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "frFR", false);

if AL then
	--Translation missing 
	AL["ALARM_MESSAGE"] = "A rare NPC just showed up, check your map!"
	--Translation missing 
	AL["ALARM_SOUND"] = "Warning sound for rare NPCs"
	--Translation missing 
	AL["ALARM_SOUND_DESC"] = "Sound played when a rare NPC shows up in your minimap"
	--Translation missing 
	AL["ALARM_TREASURES_SOUND"] = "Warning sound for events/treasures"
	--Translation missing 
	AL["ALARM_TREASURES_SOUND_DESC"] = "Sound played when a treasure/chest or event shows up in your minimap"
	--Translation missing 
	AL["AUTO_HIDE_BUTTON"] = "Autohide button and miniature"
	--Translation missing 
	AL["AUTO_HIDE_BUTTON_DESC"] = "Hides the button and the miniature automatically after the time selected (in seconds). If you select zero seconds the button and the miniature won't autohide"
	--Translation missing 
	AL["CHECK_MAP"] = "Check your map!"
	--Translation missing 
	AL["CLASS_HALLS"] = "Class Halls"
	--Translation missing 
	AL["CLEAR_FILTERS_SEARCH"] = "Clear"
	--Translation missing 
	AL["CLEAR_FILTERS_SEARCH_DESC"] = "Resets the form to the initial state"
	--Translation missing 
	AL["CLICK_TARGET"] = "Click to target NPC"
	--Translation missing 
	AL["DISABLE_SEARCHING_RARE_TOOLTIP"] = "Disable alerts for this rare NPC"
	--Translation missing 
	AL["DISABLE_SOUND"] = "Disable audio alerts"
	--Translation missing 
	AL["DISABLE_SOUND_DESC"] = "When this is activated you won't receive audio alerts"
	--Translation missing 
	AL["DISABLED_SEARCHING_RARE"] = "Disabled alerts for this rare NPC: "
	--Translation missing 
	AL["DISPLAY"] = "Display"
	--Translation missing 
	AL["DISPLAY_BUTTON"] = "Toggle showing the button and the miniature"
	--Translation missing 
	AL["DISPLAY_BUTTON_CONTAINERS"] = "Toggle showing the button for treasures/chests"
	--Translation missing 
	AL["DISPLAY_BUTTON_CONTAINERS_DESC"] = "Toggle showing the button for treasures/chests. It doesn't affect the alarm sound and the chat alerts"
	--Translation missing 
	AL["DISPLAY_BUTTON_DESC"] = "When disabled the button and the miniature won't be shown again. It doesn't affect the alarm sound and the chat alerts"
	--Translation missing 
	AL["DISPLAY_LFG_BUTTON"] = "Toggle showing the button for searching groups"
	--Translation missing 
	AL["DISPLAY_LFG_BUTTON_DESC"] = "When disabled the button for searching groups won't be shown again"
	--Translation missing 
	AL["DISPLAY_LOG_WINDOW"] = "Toggle showing the log window"
	--Translation missing 
	AL["DISPLAY_LOG_WINDOW_DESC"] = "When disabled the log window won't be shown again."
	--Translation missing 
	AL["DISPLAY_LOOT_PANEL"] = "Toggle showing loot bar"
	--Translation missing 
	AL["DISPLAY_LOOT_PANEL_DESC"] = "When this is activated it will show a bar with the loot dropped by the NPC found"
	--Translation missing 
	AL["DISPLAY_MAP_ICONS"] = "Toggle showing icons of rare NPCs on the world map"
	--Translation missing 
	AL["DISPLAY_MAP_ICONS_DESC"] = "When disabled, icons of rare NPCs won't be shown on the world map"
	--Translation missing 
	AL["DISPLAY_MINIATURE"] = "Toggle showing the miniature"
	--Translation missing 
	AL["DISPLAY_MINIATURE_DESC"] = "When disabled the miniature won't be shown again."
	--Translation missing 
	AL["DISPLAY_OPTIONS"] = "Display options"
	--Translation missing 
	AL["DUNGEONS_SCENARIOS"] = "Dungeons/Scenarios"
	--Translation missing 
	AL["ENABLE_SCAN_CONTAINERS"] = "Toggle searching treasures or chests"
	--Translation missing 
	AL["ENABLE_SCAN_CONTAINERS_DESC"] = "When this is activated you will be warned visually and with a sound everytime a treasure or chest shows up in your minimap"
	--Translation missing 
	AL["ENABLE_SCAN_EVENTS"] = "Toggle searching events"
	--Translation missing 
	AL["ENABLE_SCAN_EVENTS_DESC"] = "When this is activated you will be warned visually and with a sound everytime an event shows up in your minimap"
	--Translation missing 
	AL["ENABLE_SCAN_GARRISON_CHEST"] = "Toggle searching garrison treasure"
	--Translation missing 
	AL["ENABLE_SCAN_GARRISON_CHEST_DESC"] = "When this is activated you will be warned visually and with a sound everytime your garrison chest shows up in your minimap"
	--Translation missing 
	AL["ENABLE_SCAN_IN_INSTANCE"] = "Toggle scanning in instances"
	--Translation missing 
	AL["ENABLE_SCAN_IN_INSTANCE_DESC"] = "When this is activated the addon will work as usual while you are in an instance (dungeon, raid, etc)"
	--Translation missing 
	AL["ENABLE_SCAN_RARES"] = "Toggle searching rare NPCs"
	--Translation missing 
	AL["ENABLE_SCAN_RARES_DESC"] = "When this is activated you will be warned visually and with a sound everytime a rare NPC shows up in your minimap"
	--Translation missing 
	AL["ENABLE_SEARCHING_RARE_TOOLTIP"] = "Enable alerts for this rare NPC"
	--Translation missing 
	AL["ENABLED_SEARCHING_RARE"] = "Enabled alerts for this rare NPC: "
	--Translation missing 
	AL["FILTER"] = "NPC filters"
	--Translation missing 
	AL["FILTER_CONTINENT"] = "Continent/Category"
	--Translation missing 
	AL["FILTER_CONTINENT_DESC"] = "Continent or category name"
	--Translation missing 
	AL["FILTER_RARE_LIST"] = "Filter searching for rare NPCs"
	--Translation missing 
	AL["FILTER_RARE_LIST_DESC"] = "Toggle searching for this rare NPC. When disabled you won't get an alert when this NPC is found."
	--Translation missing 
	AL["FILTER_ZONE"] = "Zone"
	--Translation missing 
	AL["FILTER_ZONE_DESC"] = "Zone inside the continent or category"
	--Translation missing 
	AL["FILTER_ZONES_LIST"] = "Zone list"
	--Translation missing 
	AL["FILTER_ZONES_LIST_DESC"] = "Toggle alerts in this zone. When disabled you won't get an alert when a rare NPC, event or treasure is found in this zone."
	--Translation missing 
	AL["FILTERS"] = "Rare NPCs filters"
	--Translation missing 
	AL["FILTERS_SEARCH"] = "Search"
	--Translation missing 
	AL["FILTERS_SEARCH_DESC"] = "Type the name of the NPC to filter the list below"
	--Translation missing 
	AL["GENERAL_OPTIONS"] = "General options"
	--Translation missing 
	AL["HYPERLINK_MESSAGE"] = "In combat!. Use this link as the LFG button"
	--Translation missing 
	AL["JUST_SPAWNED"] = " just showed up"
	--Translation missing 
	AL["LEFT_BUTTON"] = "Left-click"
	--Translation missing 
	AL["LFG_BUTTON_CREATE_JOIN"] = "Mouse button for finding/creating groups"
	--Translation missing 
	AL["LFG_BUTTON_CREATE_JOIN_DESC"] = "Select which button you want to click in order to find a group, or create one if you don't find one first"
	--Translation missing 
	AL["LFG_BUTTON_CREATE_ONLY"] = "Mouse button only for creating groups"
	--Translation missing 
	AL["LFG_BUTTON_CREATE_ONLY_DESC"] = "Select which button you want to click in order to create a new group, instead of joining an existing one"
	--Translation missing 
	AL["LFG_BUTTON_TOOLTIP"] = "Create/Search for a group to kill this rare NPC"
	--Translation missing 
	AL["LFG_CREATE_GROUP"] = "Group not found. Do you want to create a new group?"
	--Translation missing 
	AL["LFG_CREATE_GROUP_FORCE"] = "Do you want to create a new group?"
	--Translation missing 
	AL["LFG_ERROR_JOINING"] = "Error while creating a group, try again"
	--Translation missing 
	AL["LFG_GROUP_NAME_LANGUAGE"] = "Create groups with the title in your language"
	--Translation missing 
	AL["LFG_GROUP_NAME_LANGUAGE_DESC"] = "If enabled, every created group will have the title in your language, otherwise in English. Depending on your region this might negatively affect being found."
	--Translation missing 
	AL["LFG_JOIN_GROUP"] = "Group found. Do you want to join it?"
	--Translation missing 
	AL["LFG_NO"] = "No"
	--Translation missing 
	AL["LFG_NO_RESULTS_FIRST_SEARCH"] = "No groups found in the first search, do you want to launch the second?"
	--Translation missing 
	AL["LFG_NPC_DEAD"] = "The npc you were going to kill just died. Do you want to leave the group?"
	--Translation missing 
	AL["LFG_OPTIONS"] = "Finder options"
	--Translation missing 
	AL["LFG_REJOIN_GROUP"] = "This is taking too long. Do you want to try again?"
	--Translation missing 
	AL["LFG_SEARCH_AGAIN"] = "Do you want to try searching a second time?"
	--Translation missing 
	AL["LFG_SEARCH_AGAIN_DESC"] = "If enabled, in case you don't find a group the first time around, it will try to search again by the NPC ID."
	--Translation missing 
	AL["LFG_SEARCH_GROUP"] = "Search for a group to kill this NPC"
	--Translation missing 
	AL["LFG_SEARCH_LANGUAGE"] = "Search groups in your language"
	--Translation missing 
	AL["LFG_SEARCH_LANGUAGE_DESC"] = "If enabled, the addon will search for groups in your language, otherwise in English. Depending on your region this might negatively affect founding groups."
	--Translation missing 
	AL["LFG_TOOGLE_LEAVE_GROUP"] = "Toggle showing the leaving group dialog"
	--Translation missing 
	AL["LFG_TOOGLE_LEAVE_GROUP_DESC"] = "When disabled the dialog for leaving a group after killing a rare won't be shown again."
	--Translation missing 
	AL["LFG_YES"] = "Yes"
	--Translation missing 
	AL["LOG_WINDOW_AUTOHIDE"] = "Autohide logged NPC buttons"
	--Translation missing 
	AL["LOG_WINDOW_AUTOHIDE_DESC"] = "Hides each NPC button after the time selected (in minutes). If you select zero minutes the buttons will remain until you close the log window, or it reaches the maximun number of buttons (in which case the older will be replaced)."
	--Translation missing 
	AL["LOG_WINDOW_OPTIONS"] = "Log window options"
	--Translation missing 
	AL["LOOT_MIN_QUALITY"] = "Minimum loot quality"
	--Translation missing 
	AL["LOOT_MIN_QUALITY_DESC"] = "Defines the minimum loot quality to show in the loot bar"
	--Translation missing 
	AL["LOOT_PANEL_OPTIONS"] = "Loot bar options"
	--Translation missing 
	AL["LOOT_TOOLTIP_POSITION"] = "Loot tooltip position"
	--Translation missing 
	AL["LOOT_TOOLTIP_POSITION_DESC"] = "Defines where to show the loot tooltip that appears when you move the mouse over an icon, in respect to the button"
	--Translation missing 
	AL["MAIN_BUTTON_OPTIONS"] = "Main button options"
	--Translation missing 
	AL["MAP_NPC_RESTORED_LOCATION1"] = "Reset icon position for the NPC"
	--Translation missing 
	AL["MAP_NPC_RESTORED_LOCATION2"] = ". The coordinates will be recalculated as soon as you get close to the NPC."
	--Translation missing 
	AL["MAP_OPTIONS"] = "Map options"
	--Translation missing 
	AL["MAP_SHOW_ICON_AFTER_DEAD"] = "Keep showing icon after death"
	--Translation missing 
	AL["MAP_SHOW_ICON_AFTER_DEAD_DESC"] = "When disabled the icon will disapear after you kill the NPC. The icon will reapear as soon as you find the NPC again. This option only works with NPCs that keep being rares after killing them."
	--Translation missing 
	AL["MAP_SHOW_ICON_MAX_SEEN_TIME"] = "Maximum time since you have seen a rare NPC"
	--Translation missing 
	AL["MAP_SHOW_ICON_MAX_SEEN_TIME_DESC"] = "Sets the maximum number of hours since you have seen the NPC. After that time, the icon won't be shown on the world map until you find the NPC again. If you select zero hours the icons will be shown regardless of how long since you have seen the rare NPC."
	--Translation missing 
	AL["MAP_TOOLTIP_DAYS"] = "days"
	--Translation missing 
	AL["MAP_TOOLTIP_KILLED"] = "Shift-Left-Click to set as killed"
	--Translation missing 
	AL["MAP_TOOLTIP_LFG"] = "Click to create/join a group"
	--Translation missing 
	AL["MAP_TOOLTIP_RELOCATE"] = "Ctrl-Left-Click to reset icon position"
	--Translation missing 
	AL["MAP_TOOLTIP_SEEN"] = "Seen before:"
	--Translation missing 
	AL["MESSAGE_OPTIONS"] = "Messages options"
	--Translation missing 
	AL["MIDDLE_BUTTON"] = "Middle-click"
	--Translation missing 
	AL["NOT_TARGETEABLE"] = "Not targeteable"
	--Translation missing 
	AL["PROFILES"] = "Profiles"
	--Translation missing 
	AL["QUALITY_COMMON"] = "Common"
	--Translation missing 
	AL["QUALITY_EPIC"] = "Epic"
	--Translation missing 
	AL["QUALITY_LEGENDARY"] = "Legendary"
	--Translation missing 
	AL["QUALITY_POOR"] = "Poor"
	--Translation missing 
	AL["QUALITY_RARE"] = "Rare"
	--Translation missing 
	AL["QUALITY_UNCOMMON"] = "Uncommon"
	--Translation missing 
	AL["RAIDS"] = "Raids"
	--Translation missing 
	AL["RIGHT_BUTTON"] = "Right-button"
	--Translation missing 
	AL["SHOW_CHAT_ALERT"] = "Toggle showing chat alerts"
	--Translation missing 
	AL["SHOW_CHAT_ALERT_DESC"] = "Shows a private message in the chat every time a treasure, chest or NPC is found"
	--Translation missing 
	AL["SOUND"] = "Sound"
	--Translation missing 
	AL["SOUND_OPTIONS"] = "Sound options"
	--Translation missing 
	AL["TEST"] = "Launch Test"
	--Translation missing 
	AL["TEST_DESC"] = "Press the button to show an alert example. You can drag and drop the panel to another position where it will be shown from now on."
	--Translation missing 
	AL["TOC_NOTES"] = "Minimap scanner. Warns you visually with a button and a miniature and plays a sound everytime a rare NPC, treasure/chest or event shows up in your minimap"
	--Translation missing 
	AL["TOGGLE_FILTERS"] = "Toggle filters"
	--Translation missing 
	AL["TOGGLE_FILTERS_DESC"] = "Toggle all filters at once"
	--Translation missing 
	AL["TOOLTIP_BOTTOM"] = "Lower side"
	--Translation missing 
	AL["TOOLTIP_CURSOR"] = "Follow cursor"
	--Translation missing 
	AL["TOOLTIP_LEFT"] = "Left side"
	--Translation missing 
	AL["TOOLTIP_RIGHT"] = "Right side"
	--Translation missing 
	AL["TOOLTIP_TOP"] = "Upper side"
	--Translation missing 
	AL["UNKNOWN"] = "Unknown"
	--Translation missing 
	AL["UNKNOWN_TARGET"] = "Unknown target"
	--Translation missing 
	AL["ZONES_FILTER"] = "Zone filters"
	--Translation missing 
	AL["ZONES_FILTERS_SEARCH_DESC"] = "Type the name of the zone to filter the list below"
	
	-- CONTINENT names
	AL["ZONES_CONTINENT_LIST"] = {
		[9999] = "Class Halls"; --Class Halls
		[9998] = "Île de Sombrelune"; --Darkmoon Island
		[9997] = "Dungeons/Scenarios"; --Dungeons/Scenarios
		[9996] = "Raids"; --Raids
		[9995] = "Unknown"; --Unknown
	}
	
	-- RARE names
	AL["RARE_LIST"] = {
		-- Rares Pandaria
		["Aeonaxx"] = 50062; --Aeonaxx
		["Aetha"] = 58778; --Aetha
		["Aethis"] = 50750; --Aethis
		["Ahone l’Errante"] = 50817; --Ahone the Wanderer
		["Ai Li Moire Ciel"] = 50821; --Ai-Li Skymirror
		["Ai Ran le Nuage Fantasque"] = 50822; --Ai-Ran the Shifting Cloud
		["Al’tabim Qui-Voit-Tout"] = 70000; --Al'tabim the All-Seeing
		["Ankha"] = 54318; --Ankha
		["Anthriss"] = 54338; --Anthriss
		["Archiprêtre de flammes"] = 73666; --Archiereus of Flame
		["Archiritualiste Kelada"] = 70243; --Archritualist Kelada
		["Arness l’Écaille"] = 50787; --Arness the Scale
		["Brise-dos Uru"] = 70001; --Backbreaker Uru
		["Bai Jin le Boucher"] = 58949; --Bai-Jin the Butcher
		["Ban’thalos"] = 54320; --Ban'thalos
		["Baolai l’Immolateur"] = 63695; --Baolai the Immolator
		["Sabot d’Encre"] = 51059; --Blackhoof
		["Pointe-sanglante"] = 58474; --Bloodtip
		["Bonobos"] = 50828; --Bonobos
		["Borginn Sombre Poing"] = 50341; --Borginn Darkfist
		["Bufo"] = 72775; --Bufo
		["Champion de la flamme noire"] = 73171; --Champion of the Black Flame
		["Chelon"] = 72045; --Chelon
		["Cendrechute"] = 73175; --Cinderfall
		["Cournith Court-sur-l’Eau"] = 50768; --Cournith Waterstrider
		["Crachecroc"] = 58768; --Cracklefang
		["Croque-grue"] = 72049; --Cranegnasher
		["Dak le Briseur"] = 50334; --Dak the Breaker
		["Dalan Brisenuit"] = 68318; --Dalan Nightbreaker
		["Deth’tilac"] = 54322; --Deth'tilac
		["Disha Gardepeur"] = 68319; --Disha Fearwarden
		["Docteur Theolen Krastinov"] = 59369; --Doctor Theolen Krastinov
		["Bateau de l’effroi Vazuvius"] = 73281; --Dread Ship Vazuvius
		["Jars émeraude"] = 73158; --Emerald Gander
		["Eshelon"] = 50772; --Eshelon
		["Gueule-Éternelle"] = 73279; --Evermaw
		["Ferdinand"] = 51078; --Ferdinand
		["Carne’rok le Malade"] = 70429; --Flesh'rok the Diseased
		["Seigneur des silex Gairan"] = 73172; --Flintlord Gairan
		["Oeil focalisé"] = 70249; --Focused Eye
		["Gaarn le Toxique"] = 50340; --Gaarn the Toxic
		["Gaohun le Sectionneur d’âmes"] = 62881; --Gaohun the Soul-Severer
		["Gar’lok"] = 50739; --Gar'lok
		["Garnia"] = 73282; --Garnia
		["Général Temuja"] = 63101; --General Temuja
		["Clampant fantôme"] = 50051; --Ghostcrawler
		["Go Kan"] = 50331; --Go-Kan
		["Gochao le Poing de Fer"] = 62880; --Gochao the Ironfist
		["Dieu-mastodonte Ramuk"] = 69999; --God-Hulk Ramuk
		["Goda"] = 69998; --Goda
		["Golganarr"] = 72970; --Golganarr
		["Grande tortue Écaille-de-Fureur"] = 73161; --Great Turtle Furyshell
		["Gu’chi l’Essaimeur"] = 72909; --Gu'chi the Swarmbringer
		["Havak"] = 50354; --Havak
		["Assemblage saccage-soleil détraqué"] = 50358; --Haywire Sunreaver Construct
		["Huo Shuang"] = 63691; --Huo-Shuang
		["Huolon"] = 73167; --Huolon
		["Ik-Ik l’Agile"] = 50836; --Ik-Ik the Nimble
		["Python impérial"] = 73163; --Imperial Python
		["Corne-d’acier ferpoil"] = 73160; --Ironfur Steelhorn
		["Jadecroc"] = 49822; --Jadefang
		["Jakur d’Ordos"] = 73169; --Jakur of Ordon
		["Jonn-Dar"] = 50351; --Jonn-Dar
		["Kah’tir"] = 50355; --Kah'tir
		["Kal’tik le Chancre"] = 50749; --Kal'tik the Blight
		["Kang le Voleur d’âmes"] = 50349; --Kang the Soul Thief
		["Kar le Va-t-en-Guerre"] = 68321; --Kar Warmaker
		["Karkanos"] = 72193; --Karkanos
		["Karkin"] = 50959; --Karkin
		["Karoma"] = 50138; --Karoma
		["Karr l’Assombrisseur"] = 50347; --Karr the Darkener
		["Kirix"] = 54323; --Kirix
		["Kor’nas Nuit Sauvage"] = 50338; --Kor'nas Nightsavage
		["Korda Torros"] = 50332; --Korda Torros
		["Krakkanon"] = 70323; --Krakkanon
		["Krax’ik"] = 50363; --Krax'ik
		["Kri’chon"] = 63978; --Kri'chon
		["Krol la Lame"] = 50356; --Krol the Blade
		["Ku’lai, la Griffe du ciel"] = 69996; --Ku'lai the Skyclaw
		["Soigne-Feuille"] = 73277; --Leafmender
		["Lith’ik le Traqueur"] = 50734; --Lith'ik the Stalker
		["Lon le Buffle"] = 50333; --Lon the Bull
		["Lu Ban"] = 70002; --Lu-Ban
		["Magria"] = 54319; --Magria
		["Major Sinok"] = 50840; --Major Nanners
		["Mavis Laruine"] = 68317; --Mavis Harms
		["Monsieur Féroce"] = 50823; --Mister Ferocious
		["Moldo le Borgne"] = 50806; --Moldo One-Eye
		["Molthor"] = 70003; --Molthor
		["Monara"] = 70440; --Monara
		["Pincépine monstrueux"] = 73166; --Monstrous Spineclaw
		["Morgrinn Casse Crocs"] = 50350; --Morgrinn Crackfang
		["Muerta"] = 68322; --Muerta
		["Mumta"] = 69664; --Mumta
		["Nal’lak l’Éventreur"] = 50364; --Nal'lak the Ripper
		["Nalash Verdantis"] = 50776; --Nalash Verdantis
		["Nasra Poil Ocellé"] = 50811; --Nasra Spothide
		["Nessos l'Oracle"] = 50789; --Nessos the Oracle
		["No’ku Parle-Tempête"] = 70276; --No'ku Stormsayer
		["Norlaxx"] = 50344; --Norlaxx
		["Omnis Grimalok"] = 50805; --Omnis Grinlok
		["Suzerain Fractefurie"] = 50085; --Overlord Sunderfury
		["Prince Lakma"] = 54533; --Prince Lakma
		["Progénitus"] = 69997; --Progenitus
		["Qu’nas"] = 50352; --Qu'nas
		["Quid"] = 58771; --Quid
		["Ra’sha"] = 70530; --Ra'sha
		["Déglingois"] = 72048; --Rattleskew
		["Mousse des rochers"] = 73157; --Rock Moss
		["Horreur rocheuse"] = 70430; --Rocky Horror
		["Runn Patte Fantôme"] = 50816; --Ruun Ghostpaw
		["Sahn Chasse Marée"] = 50780; --Sahn Tidehunter
		["Eclaireur de guerre salyin"] = 50783; --Salyin Warscout
		["Samba"] = 50159; --Sambas
		["Sarnak"] = 50782; --Sarnak
		["Grattouille"] = 50831; --Scritch
		["Sele’na"] = 50766; --Sele'na
		["Maître d'ombre Sydow"] = 63240; --Shadowmaster Sydow
		["Siltriss l’Affûteur"] = 50791; --Siltriss the Sharpener
		["Bal'afr"] = 50815; --Skarr
		["Ski’thik"] = 50733; --Ski'thik
		["Rampeflamme"] = 54324; --Skitterflame
		["Solix"] = 54321; --Solix
		["Souterrant"] = 71864; --Spelurk
		["Esprit de Jadefeu"] = 72769; --Spirit of Jadefire
		["Esprit de Lao Fe"] = 58817; --Spirit of Lao-Fe
		["Spriggin"] = 50830; --Spriggin
		["Fouettnatte"] = 73704; --Stinkbraid
		["Sulik’shor"] = 50339; --Sulik'shor
		["Tarvus le Vil"] = 50086; --Tarvus the Vile
		["Le Couineur"] = 50832; --The Yowler
		["Torik-Ethis"] = 50388; --Torik-Ethis
		["Tsavo’ka"] = 72808; --Tsavo'ka
		["Ubunti l’Ombre"] = 68320; --Ubunti the Shade
		["Oeil impassible"] = 70238; --Unblinking Eye
		["Urdur le Cautérisateur"] = 73173; --Urdur the Cauterizer
		["Urgolax"] = 50359; --Urgolax
		["Urobi le Marcheur"] = 50808; --Urobi the Walker
		["Mâchevice"] = 58769; --Vicejaw
		["Vyraxxis"] = 63977; --Vyraxxis
		["Dieu-guerrier Dokah"] = 70096; --War-God Dokah
		["Guetteur Osu"] = 73170; --Watcher Osu
		["Siffleur"] = 73293; --Whizzig
		["Willy Wilder"] = 70126; --Willy Wilder
		["Wulon"] = 63510; --Wulon
		["Yorik Œil Vif"] = 50336; --Yorik Sharpeye
		["Yul Patte Folle"] = 50820; --Yul Wildpaw
		["Zaï le Paria"] = 50769; --Zai the Outcast
		["Porteguerre zandalari"] = 69769; --Zandalari Warbringer cian
		["Porteguerre zandalari"] = 69842; --Zandalari Warbringer gray
		["Porteguerre zandalari"] = 69841; --Zandalari Warbringer silver
		["Eclaireur de guerre zandalari"] = 69768; --Zandalari Warscout
		["Zao’cho"] = 69843; --Zao'cho
		["Zesqua"] = 72245; --Zesqua
		["Zhu Gon l’Amer"] = 71919; --Zhu-Gon the Sour
		
		-- Rares Draenor
		["Amaukwa"] = 77140; --Amaukwa
		["Ancien maître-lame"] = 82899; --Ancient Blademaster
		["Aqualir"] = 86213; --Aqualir
		["Avatar de Socrethar"] = 88043; --Avatar of Socrethar
		["Ba’ruun"] = 82326; --Ba'ruun
		["Bahamyeu"] = 81406; --Bahameye
		["Bashiok"] = 82085; --Bashiok
		["Sculpte-bêtes Saramor"] = 78150; --Beastcarver Saramor
		["Betsi Boumpanier"] = 84887; --Betsi Boombasket
		["Danselame Aeryx"] = 80614; --Blade-Dancer Aeryx
		["Brillechancre"] = 84856; --Blightglow
		["Roi-ronce Fili"] = 81639; --Brambleking Fili
		["Essoufflé"] = 78867; --Breathless
		["Brutag Lame-sinistre"] = 87234; --Brutag Grimblade
		["Glacemère du canyon"] = 71721; --Canyon Icemother
		["Brasille l’ardent"] = 82311; --Char the Burning
		["Glacecroc"] = 80242; --Chillfang
		["Gueulecendre"] = 72294; --Cindermaw
		["Parlenuage Daber"] = 78169; --Cloudspeaker Daber
		["Pied-Froid le Funèbre"] = 77513; --Coldstomp the Griever
		["Froide-Défense"] = 76914; --Coldtusk
		["Cro Tranchechair"] = 77620; --Cro Fleshrender
		["Fureur cyclonique"] = 78621; --Cyclonic Fury
		["Emanation noire"] = 77085; --Dark Emanation
		["Sombre Maître Go’vid"] = 82268; --Darkmaster Go'vid
		["Sombre-Serre"] = 82411; --Darktalon
		["Kizi Tire-Juste"] = 77763; --Deadshot Kizi
		["Racine-Profonde"] = 82058; --Depthroot
		["Sabot-Sinistre"] = 86729; --Direhoof
		["Dr Chagrin"] = 77561; --Dr. Gloom
		["Durkath Gueule-d’acier"] = 84807; --Durkath Steelmaw
		["Elémentaliste Utrah"] = 77768; --Elementalist Utrah
		["Enavra"] = 82676; --Enavra
		["Enavra"] = 82742; --Enavra
		["Luisefaë"] = 82207; --Faebright
		["Crochet"] = 82975; --Fangler
		["Gangrécorce"] = 80204; --Felbark
		["Compagne gangrefeu"] = 82992; --Felfire Consort
		["Suppure-fleur"] = 84890; --Festerbloom
		["Géant fureur-de-feu"] = 74971; --Firefury Giant
		["Boute-flammes Grash"] = 88580; --Firestarter Grash
		["Peau-de-Silex"] = 83483; --Flinthide
		["Matrone de la forge Targa"] = 77648; --Forge Matron Targa
		["Fossilebois le Pétrifié"] = 85250; --Fossilwood the Petrified
		["Golem frénétique"] = 77614; --Frenzied Golem
		["Galzomar"] = 78713; --Galzomar
		["Gar’lua"] = 82764; --Gar'lua
		["Fief Larage"] = 86058; --Garrison Ford
		["Gelgor de la Flamme bleue"] = 81038; --Gelgor of the Blue Flame
		["Général Aevd"] = 82882; --General Aevd
		["Gennadien"] = 80471; --Gennadian
		["Kul le Tueur de géants"] = 71665; --Giant-Slayer Kul
		["Kimla la Tueuse de géants"] = 78144; --Giantslayer Kimla
		["Aile-Scintillante"] = 77719; --Glimmerwing
		["Glut"] = 80868; --Glut
		["Sabot-Tordu l’Enragé"] = 82778; --Gnarlhoof the Rabid
		["Gorum"] = 76380; --Gorum
		["Connétable Tremblelame"] = 82876; --Grand Marshal Tremblade
		["Plume-Prodigieuse"] = 82758; --Greatfeather
		["Greldrok le Fourbe"] = 84431; --Greldrok the Cunning
		["Grisegueule"] = 82912; --Grizzlemaw
		["Traqueur de gronns Dawarn"] = 78128; --Gronnstalker Dawarn
		["Gardien du Bosquet Yal"] = 88583; --Grove Warden Yal
		["Grutush le Pilleur"] = 80312; --Grutush the Pillager
		["Gruuk"] = 80190; --Gruuk
		["Gurun"] = 80235; --Gurun
		["Haakun l’Insatiable"] = 83008; --Haakun the All-Consuming
		["Martolaire"] = 77715; --Hammertooth
		["Mère-pondeuse Hami"] = 77626; --Hen-Mother Hami
		["Ermite Pâlepoil"] = 86724; --Hermit Palefur
		["Grand seigneur de guerre Volrath"] = 82877; --High Warlord Volrath
		["Chasseuse Bal’ra"] = 88672; --Hunter Bal'ra
		["Chasseur Dent-Noire"] = 83603; --Hunter Blacktooth
		["Maître chasseur Kuang"] = 78151; --Huntmaster Kuang
		["Hyperius"] = 78161; --Hyperious
		["Insha’tar"] = 83553; --Insha'tar
		["Jacasse"] = 82616; --Jabberjaw
		["Jaluk le Pacifiste"] = 87600; --Jaluk the Pacifist
		["Jiasska la Mangespores"] = 84955; --Jiasska the Sporegorger
		["Kalos le Baigné de sang"] = 84810; --Kalos the Bloodbathed
		["Karosh Noirvent"] = 86959; --Karosh Blackwind
		["Kharazos le Triomphant"] = 78710; --Kharazos the Triumphant
		["Gueule-de-Mort"] = 74206; --Killmaw
		["Klikixx"] = 78872; --Klikixx
		["Ku’targ le Voyant du Vide"] = 72362; --Ku'targ the Voidseer
		["Dame Temptessa"] = 85121; --Lady Temptessa
		["Décrypte-feuille Kurri"] = 72537; --Leaf-Reader Kurri
		["Lo’marg Broie-Mâchoire"] = 77784; --Lo'marg Jawcrusher
		["Seigneur Korinak"] = 82920; --Lord Korinak
		["Sporéon le « Roi » fou"] = 77310; --Mad "King" Sporeon
		["Malroc Scinde-Pierre"] = 83643; --Malroc Stonesunder
		["Mandrakor"] = 84406; --Mandrakor
		["Maréchal Gabriel"] = 82878; --Marshal Gabriel
		["Maréchal Karsh Forge-Foudre"] = 82880; --Marshal Karsh Stormforge
		["Matrone du Péché"] = 82998; --Matron of Sin
		["Morva Torsâme"] = 82362; --Morva Soultwister
		["Mère Araneae"] = 76473; --Mother Araneae
		["Mère Om’ra"] = 75071; --Mother Om'ra
		["Mutafen"] = 84417; --Mutafen
		["Nas Dunberlin"] = 82247; --Nas Dunberlin
		["No’losh"] = 79334; --No'losh
		["Ophiis"] = 83409; --Ophiis
		["Oskiira le Vengeur"] = 84872; --Oskiira the Vengeful
		["Voltigeuse Duretha"] = 83680; --Outrider Duretha
		["Poissonnier blafard"] = 78606; --Pale Fishmonger
		["Guide Jalog"] = 78134; --Pathfinder Jalog
		["Eclaireur Draga"] = 77095; --Pathstalker Draga
		["Bête de la fosse"] = 88208; --Pit Beast
		["Maître des poisons Bortusk"] = 84838; --Poisonmaster Bortusk
		["Primaliste Mur’og"] = 76918; --Primalist Mur'og
		["Pyro-invocatrice Zindra"] = 77642; --Pyrecaster Zindra
		["Ra’kahn"] = 77741; --Ra'kahn
		["Traqueur des congères ragore"] = 84392; --Ragore Driftstalker
		["Rai’vosh"] = 82374; --Rai'vosh
		["Griffe-Rouge le Farouche"] = 82755; --Redclaw the Feral
		["Chapeau-pourri"] = 85504; --Rotcap
		["Sangrikass"] = 84833; --Sangrikass
		["Eclaireur Cherche-Tripe"] = 77526; --Scout Goreseeker
		["Sean Blanchemer"] = 83542; --Sean Whitesea
		["Ombrécorce"] = 79938; --Shadowbark
		["Shinri"] = 82415; --Shinri
		["Sikthiss, Vierge du Massacre"] = 78715; --Sikthiss, Maiden of Slaughter
		["Ancien Feuillargent"] = 79686; --Silverleaf Ancient
		["Ancien Feuillargent"] = 79693; --Silverleaf Ancient
		["Ancien Feuillargent"] = 79692; --Silverleaf Ancient
		["Magnificateur solaire"] = 83990; --Solar Magnifier
		["Mânecroc"] = 80057; --Soulfang
		["Défense-d’Acier"] = 86549; --Steeltusk
		["Marteleur Kreego"] = 79629; --Stomper Kreego
		["Irepierre"] = 84805; --Stonespite
		["Sulfurieux"] = 80725; --Sulfurious
		["Griffesoleil"] = 86137; --Sunclaw
		["Scinde-épine"] = 84912; --Sunderthorn
		["Feuillessaim"] = 85520; --Swarmleaf
		["Ecorcheur onyx rapide"] = 88582; --Swift Onyx Flayer
		["Brise-Serre"] = 84836; --Talonbreaker
		["Prêtre de la serre Zorkra"] = 79485; --Talonpriest Zorkra
		["Tesska le Brisé"] = 84775; --Tesska the Broken
		["Le Batteur"] = 77527; --The Beater
		["Tor’goroth"] = 82618; --Tor'goroth
		["Tura’aka"] = 83591; --Tura'aka
		["Varasha"] = 82050; --Varasha
		["Veloss"] = 75482; --Veloss
		["Saccageuse du Vide Urnae"] = 85078; --Voidreaver Urnae
		["Voyant du Vide Kalurg"] = 83385; --Voidseer Kalurg
		["Vulceros"] = 77926; --Vulceros
		["Redresseur de torts itinérant"] = 77776; --Wandering Vindicator
		["Lanceur de guerre Bargol"] = 78733; --Warcaster Bargol
		["Maître de guerre Blugthol"] = 79024; --Warmaster Blugthol
		["Matriarche croc-du-vent"] = 75434; --Windfang Matriarch
		["Xothear le Destructeur"] = 82922; --Xothear, the Destroyer
		["Yaga la Balafrée"] = 79145; --Yaga the Scarred
		["Yazheera l’Incinératrice"] = 77529; --Yazheera the Incinerator
		["Yggdrel"] = 75435; --Yggdrel
		["Croc-de-Lune"] = 71992; --Moonfang
		["Inferno ancien"] = 84875; --Ancient Inferno
		["Parpaing"] = 83819; --Brickhouse
		["Demidos"] = 84911; --Demidos
		["Ancien sombre tisseur Kath"] = 85771; --Elder Darkweaver Kath
		["Tripentrailles"] = 84893; --Goregore
		["Korthall Goinfrâme"] = 84110; --Korthall Soulgorger
		["Kurlosh Croc-Funeste"] = 82988; --Kurlosh Doomfang
		["Dame Démofouet"] = 82942; --Lady Demlash
		["Mandragoreuse"] = 83683; --Mandragoraster
		["Oraggro"] = 84904; --Oraggro
		["Orumo l’Observateur"] = 87668; --Orumo the Observer
		["Panthora"] = 83691; --Panthora
		["Marche-terreur d’ombreflamme"] = 82930; --Shadowflame Terrorwalker
		["Titarus"] = 83713; --Titarus
		["Vigilant Paarthos"] = 88436; --Vigilant Paarthos
		["Archimagus Tekar"] = 88072; --Archmagus Tekar
		["Bombardier Gu’gok"] = 87597; --Bombardier Gu'gok
		["Sculpte-pierre Gor’vosh capturé"] = 84746; --Captured Gor'vosh Stoneshaper
		["Messager maudit"] = 85767; --Cursed Harbinger
		["Ravageur maudit"] = 85763; --Cursed Ravager
		["Serres-tranchantes maudit"] = 85766; --Cursed Sharptalon
		["Gibblette le Poltron"] = 87352; --Gibblette the Cowardly
		["Gibbie"] = 87362; --Gibby
		["Gug’tol"] = 83019; --Gug'tol
		["Gelée blanche"] = 87348; --Hoarfrost
		["Avant-garde de la Légion"] = 88494; --Legion Vanguard
		["Sergent-chef Milgra"] = 85001; --Master Sergeant Milgra
		["Magmastoc"] = 82614; --Moltnoma
		["Mère des gorens"] = 87351; --Mother of Goren
		["Intendant Hershak"] = 84925; --Quartermaster Hershak
		["Parle-ombre Niir"] = 85029; --Shadowspeaker Niir
		["Grointintin le Mange-corps"] = 82617; --Slogtusk the Corpse-Eater
		["Fils de Goramal"] = 82620; --Son of Goramal
		["Lieuse d’âme Naylana"] = 88083; --Soulbinder Naylana
		["Stratège Ankor"] = 88071; --Strategist Ankor
		["Le Rampant des ossements"] = 78265; --The Bone Crawler
		["Maître-lame Ro’gor"] = 86579; --Blademaster Ro'gor
		["Transfuge Dazgo"] = 86566; --Defector Dazgo
		["Durp le Haï"] = 86571; --Durp the Hated
		["Gorivax"] = 82536; --Gorivax
		["Horgg"] = 86577; --Horgg
		["Inventeur Blammo"] = 86574; --Inventor Blammo
		["Folgard le Forcené"] = 86562; --Maniacal Madgard
		["Morgo Kain"] = 86582; --Morgo Kain
		["La Lanticore"] = 77081; --The Lanticore
		["Valkor"] = 87357; --Valkor
		["Vrok l’Ancien"] = 87356; --Vrok the Ancient
		["Seigneur de guerre Noktyn"] = 82883; --Warlord Noktyn
		["Ak’ox la Massacreuse"] = 84378; --Ak'ox the Slaughterer
		["Alkali"] = 86268; --Alkali
		["Avalanche"] = 85568; --Avalanche
		["Brise-Os"] = 87837; --Bonebreaker
		["Puissance brûlante"] = 84926; --Burning Power
		["Durg Briséchine"] = 87788; --Durg Spinecrusher
		["Géant glouton"] = 87019; --Gluttonous Giant
		["Grognegueule"] = 78269; --Gnarljaw
		["Gorg’ak l’Écluseur de lave"] = 72364; --Gorg'ak the Lava Guzzler
		["Gortag Poigne-d’Acier"] = 87344; --Gortag Steelgrip
		["Gelée royale"] = 78260; --King Slime
		["Krahl Oeil-Mort"] = 87239; --Krahl Deadeye
		["Goinfre bondissant"] = 84465; --Leaping Gorger
		["Malgosh Gardombre"] = 85451; --Malgosh Shadowkeeper
		["Méca-pilleur"] = 87026; --Mecha Plunderer
		["Mogamago"] = 88586; --Mogamago
		["Monsieur Pince-mi senior"] = 84435; --Mr. Pinchy Sr.
		["Nagidna"] = 85555; --Nagidna
		["Mastodonte de l’ombre"] = 87027; --Shadow Hulk
		["Gelée glissante"] = 84854; --Slippery Slime
		["Gueulesquille"] = 85837; --Slivermaw
		["Tourmenteur d’âmes Torek"] = 85026; --Soul-Twister Torek
		["Ug’lok le Givré"] = 79104; --Ug'lok the Frozen
		["Soldat enveloppé dans un cocon"] = 84196; --Web-wrapped Soldier
		["Aogexon"] = 86774; --Aogexon
		["Basten"] = 86257; --Basten
		["Bergruu"] = 86732; --Bergruu
		["Borrok le Dévoreur"] = 72156; --Borrok the Devourer
		["Dekorhan"] = 86743; --Dekorhan
		["Echidna"] = 80372; --Echidna
		["Gagrog le Brutal"] = 86771; --Gagrog the Brutal
		["Keravnos"] = 80398; --Keravnos
		["Krud l’Eviscérateur"] = 88210; --Krud the Eviscerator
		["Lernaea"] = 80370; --Lernaea
		["Mu’gra"] = 87666; --Mu'gra
		["Nultra"] = 86258; --Nultra
		["Tueur de la fosse"] = 87846; --Pit Slayer
		["Thek’serre"] = 86750; --Thek'talon
		["Typhon"] = 80371; --Typhon
		["Valstil"] = 86259; --Valstil
		["Venolasix"] = 86266; --Venolasix
		["Vilegriffe"] = 88951; --Vileclaw
		["Xelganak"] = 86835; --Xelganak
		["Capitaine Barbe-de-fer"] = 79725; --Captain Ironbeard
		["Gaz’orda"] = 80122; --Gaz'orda
		["Rejeton du Néant"] = 83401; --Netherspawn
		["Ru’klaa"] = 83526; --Ru'klaa
		["Implorateur céleste Korast"] = 83428; --Windcaller Korast
		["Berserk série T-300 mod. II"] = 82826; --Berserk T-300 Series Mark II
		["Nozzand l’explorateur"] = 82486; --Explorer Nozzand
		["Tripétale"] = 83509; --Gorepetal
		["Pierradent"] = 84263; --Graveltooth
		["Eclaireur Pokhar"] = 83634; --Scout Pokhar
		["Regard"] = 86978; --Gaze
		["Gloussaileron"] = 84951; --Gobblefin
		["Grrbrrgle"] = 85572; --Grrbrrgle
		["Aarko"] = 77664; --Aarko
		["Echo de Marmon"] = 77828; --Echo of Murmur
		["Echo de Marmon"] = 77795; --Echo of Murmur
		["Shirzir"] = 79543; --Shirzir
		["Taladorantule"] = 77634; --Taladorantula
		["Crin-de-sang dissimulé"] = 80524; --Underseer Bloodmane
		["Rolkor"] = 85264; --Rolkor
		["Sylldross"] = 86410; --Sylldross
		["Reine de la ruche Skrikka"] = 83522; --Hive Queen Skrikka
		["Mère des couvées Reeg’ak"] = 74613; --Broodmother Reeg'ak
		["Fléaudonte"] = 77519; --Giantbane
		["Snivel"] = 86689; --Sneevel
		["Perculupagus"] = 86520; --Stompalupagus
		["Berthora"] = 85907; --Berthora
		["Crèvepoix"] = 85970; --Riptar
		["Hypnocoasse"] = 79524; --Hypnocroak
		["Sabot-de-Roche"] = 72606; --Rockhoof
		["Ombrevenin"] = 75492; --Venomshade
		["Nakk le Foudroyeur"] = 50990; --Nakk the Thunderer
		["Gorok"] = 50992; --Gorok
		["Luk'hok"] = 50981; --Luk'hok
		["Martèlepoing"] = 50985; --Poundfist
		["Silthide"] = 51015; --Silthide
		["Cours-les-Routes"] = 50883; --Pathrunner
		["Nok-Karosh"] = 81001; --Nok-Karosh
		
		-- Rares Draenor 6.2
		["Argosh le Destructeur"] = 91871; --Argosh the Destroyer
		["Belgork"] = 92552; --Belgork
		["Bilkor le Lanceur"] = 90884; --Bilkor the Thrower
		["Horreur de l’Orbite-Sanglante"] = 92657; --Bleeding Hollow Horror
		["Chasseur sanglant Zulk"] = 90936; --Bloodhunter Zulk
		["Seigneur des couvées Ixkor"] = 92429; --Broodlord Ixkor
		["Capitaine Grok’mar"] = 93264; --Captain Grok'mar
		["Capitaine Barbe-de-Fer"] = 93076; --Captain Ironbeard
		["Ceraxas"] = 90434; --Ceraxas
		["Cendral le Feu de brousse"] = 90519; --Cindral the Wildfire
		["Sombre invocatrice Rendkra"] = 90081; --Dark Summoner Rendkra
		["Dorg le Sanglant"] = 90887; --Dorg the Bloody
		["Driss Vil"] = 93028; --Driss Vile
		["Drivnul"] = 90888; --Drivnul
		["Exécuteur Riloth"] = 91727; --Executor Riloth
		["Gangreperceur"] = 93168; --Felbore
		["Gangreforge Damorka"] = 92647; --Felsmith Damorka
		["Gangrétincelle"] = 91098; --Felspark
		["Triste-Griffe"] = 92508; --Gloomtalon
		["Gorabosh"] = 92941; --Gorabosh
		["Grand démoniste Néanathème"] = 91695; --Grand Warlock Nethekurse
		["Grannok"] = 93057; --Grannok
		["Grobthok Brise-Crâne"] = 90089; --Grobthok Skullbreaker
		["Maître du port Korak"] = 90094; --Harbormaster Korak
		["Grand prêtre Ikzan"] = 90281; --High Priest Ikzan
		["Grand prêtre Ikzan"] = 90777; --High Priest Ikzan
		["Maîtresse des diablotins Valessa"] = 90429; --Imp-Master Valessa
		["Capitaine de Fer Argha"] = 90087; --Iron Captain Argha
		["Jax’zor"] = 90437; --Jax'zor
		["Krell le Serein"] = 92517; --Krell the Serene
		["Kris’kar le Damné"] = 93279; --Kris'kar the Unredeemed
		["Dame Oran"] = 90438; --Lady Oran
		["Magwia"] = 93002; --Magwia
		["Maîtresse Thavra"] = 90442; --Mistress Thavra
		["Ormak Carreau-Sanglant"] = 90088; --Ormak Bloodbolt
		["Suzerain Ma’gruth"] = 92411; --Overlord Ma'gruth
		["Maîtresse de la douleur Selora"] = 92274; --Painmistress Selora
		["Bogueduc Wakkawam"] = 91374; --Podlord Wakkawam
		["Putré’thar"] = 91009; --Putre'thar
		["Rasthe"] = 90782; --Rasthe
		["Relgor"] = 92197; --Relgor
		["Vestiges de la lune de sang"] = 91227; --Remnant of the Blood Moon
		["Rendrak"] = 92627; --Rendrak
		["Rogond le Pisteur"] = 90885; --Rogond the Tracker
		["Rukmaz"] = 94113; --Rukmaz
		["Sergent Mor’grak"] = 90024; --Sergeant Mor'grak
		["Ombrerosse"] = 93236; --Shadowthrash
		["Tranche-Ame"] = 92495; --Soulslicer
		["Groin-d’Acier"] = 92887; --Steelsnout
		["Sylissa"] = 92606; --Sylissa
		["Szirek le Tordu"] = 93001; --Szirek the Twisted
		["Croc-Noir"] = 92465; --The Blackfang
		["Griffe-Sanglante"] = 92694; --The Goreclaw
		["Le maître-chien de Fer"] = 92977; --The Iron Houndmaster
		["Hante-la-Nuit"] = 92645; --The Night Haunter
		["Hante-la-Nuit"] = 92636; --The Night Haunter
		["Tho’gar Poing-Sanglant"] = 91243; --Tho'gar Gorefist
		["Thromma le Tranche-Gorge"] = 92574; --Thromma the Gutslicer
		["Varyx le Damné"] = 92451; --Varyx the Damned
		["Xanzith l’Éternel"] = 92408; --Xanzith the Everlasting
		["Zeter’el"] = 91087; --Zeter'el
		["Zoug le Lourd"] = 90122; --Zoug the Heavy
		["Tomberonce"] = 91093; --Bramblefell
		["Commandant Krag’goth"] = 91232; --Commander Krag'goth
		["Commandant Org’mok"] = 89675; --Commander Org'mok
		["Serres-mort"] = 95053; --Deathtalon
		["Compresseur funeste"] = 95056; --Doomroller
		["Glub’glok"] = 93125; --Glub'glok
		["Poing-de-terreur"] = 95044; --Terrorfist
		["Vengeance"] = 95054; --Vengeance
		["Wyrmple"] = 91921; --Wyrmple
		["Xemirkol"] = 96235; --Xemirkol
		
		-- Rares Draenor 6.2.1
		["Guk"] = 98200; --Guk
		["Pugg"] = 98199; --Pugg
		["Rukdug"] = 98198; --Rukdug
		["Drakum"] = 98283; --Drakum
		["Gondar"] = 98284; --Gondar
		["Fracass Grabb"] = 98285; --Smashum Grabb
		["Surveillant gangrené Tadboue"] = 98408; --Fel Overseer Mudlump
		["Arachnis"] = 96323; --Arachnis
		["Eraakis"] = 97209; --Eraakis
		
		-- Rares Legion
		["Drugon le Givre-Sang"] = 110378; --Drugon the Frostblood
		["Débris"] = 99929; --Flotsam
		["Balmorgue"] = 108879; --Humongris
		["Nithogg"] = 107544; --Nithogg
		["Shar’thos"] = 108678; --Shar'thos
		["Arnie « Dans l’mille »"] = 100230; --"Sure-Shot" Arnie
		["Abesha"] = 97348; --Abesha
		["Achronos"] = 112705; --Achronos
		["Aegir Brisevague"] = 108885; --Aegir Wavecrusher
		["Ala’washte"] = 104481; --Ala'washte
		["Alluvanon"] = 107960; --Alluvanon
		["Altéria"] = 104521; --Alteria
		["Ambassadeur D’vwinn"] = 111649; --Ambassador D'vwinn
		["Embusqué croc-dague"] = 92611; --Ambusher Daggerfang
		["Anax"] = 111197; --Anax
		["Aodh Fanepétale"] = 110346; --Aodh Witherpetal
		["Apothicaire Faldren"] = 110870; --Apothecary Faldren
		["Apothicaire Perez"] = 92634; --Apothecary Perez
		["Traqueur des Arcanes"] = 90173; --Arcana Stalker
		["Arcaniste Lylandre"] = 110656; --Arcanist Lylandre
		["Arcaniste Shal’iman"] = 107657; --Arcanist Shal'iman
		["Arcanor Prime"] = 109641; --Arcanor Prime
		["Arcavellus"] = 90244; --Arcavellus
		["Arru"] = 97220; --Arru
		["Arthfaël"] = 99802; --Arthfael
		["Arthfaël"] = 103801; --Arthfael
		["Artificier Lothaire"] = 106351; --Artificer Lothaire
		["Assassin Huwe"] = 92633; --Assassin Huwe
		["Auditeur Esiel"] = 112758; --Auditor Esiel
		["Az’jatar"] = 112759; --Az'jatar
		["Baconilic"] = 103787; --Baconlisk
		["Bahagar"] = 110562; --Bahagar
		["Barax le Marteleur"] = 97637; --Barax the Mauler
		["Alaplage"] = 91187; --Beacher
		["Bestrix"] = 111454; --Bestrix
		["Cérébile"] = 107327; --Bilebrain
		["Lamorage"] = 91874; --Bladesquall
		["Alpha traquesang"] = 92599; --Bloodstalker Alpha
		["Corbeau sanglant"] = 98361; --Bloody Raven
		["Bodash l’amasseur"] = 98299; --Bodash the Hoarder
		["Tomberoche"] = 98178; --Boulderfall
		["Tomberoche l’Erodé"] = 109113; --Boulderfall, the Eroded
		["Castagnoth"] = 107127; --Brawlgoth
		["Barbe-Salée le Ranimé"] = 106863; --Brinebeard the Risen
		["Griffe-hirsute"] = 97449; --Bristlemaul
		["Brogozog"] = 91100; --Brogozog
		["Brogrul le Puissant"] = 94877; --Brogrul the Mighty
		["Mère des couvées Lizax"] = 107105; --Broodmother Lizax
		["Mère des couvées Shu’malis"] = 105632; --Broodmother Shu'malis
		["Cogneur"] = 102863; --Bruiser
		["Bulvinkel"] = 111463; --Bulvinkel
		["Cadraeus"] = 110726; --Cadraeus
		["Cailyn Pâlesort"] = 91289; --Cailyn Paledoom
		["Capitaine Brvet"] = 92685; --Captain Brvet
		["Capitaine Dargun"] = 109163; --Captain Dargun
		["Capitaine Volo’ren"] = 89846; --Captain Volo'ren
		["Championne Elodie"] = 92604; --Champion Elodie
		["Plume-de-Charbon"] = 101596; --Charfeather
		["Chef mer-amère"] = 106990; --Chief Bitterbrine
		["Trésorier en chef Jabrill"] = 109677; --Chief Treasurer Jabrill
		["Cendraile"] = 111674; --Cinderwing
		["Colérian"] = 104698; --Colerian
		["Colérian"] = 104519; --Colerian
		["Commandant Soraax"] = 107266; --Commander Soraax
		["Cora’kar"] = 100864; --Cora'kar
		["Floraison coruscante"] = 93778; --Coruscating Bloom
		["Comte Néfastus"] = 97058; --Count Nefarious
		["Coura, maîtresse des Arcanes"] = 108255; --Coura, Mistress of Arcana
		["Chevaucheur de crabes Grmlrml"] = 97933; --Crab Rider Grmlrml
		["Tombe-Furie l’Affamé"] = 97345; --Crawshuk the Hungry
		["Cristebarbe"] = 90050; --Crystalbeard
		["Cyrilline"] = 105619; --Cyrilline
		["Tranchebec"] = 90057; --Daggerbeak
		["Daniel « Détonateur » Vorick"] = 94313; --Daniel "Boomer" Vorick
		["Dargok Tonneruine"] = 100231; --Dargok Thunderuin
		["Forestier-sombre Jess"] = 92631; --Dark Ranger Jess
		["Noire peur"] = 92205; --Darkest Fear
		["Tourmenteur sombrefiel"] = 107924; --Darkfiend Tormentor
		["Ténébreuse"] = 109501; --Darkful
		["Ombrenoire"] = 92965; --Darkshade
		["Nécrogarde Adams"] = 92626; --Deathguard Adams
		["Griffentrailles"] = 109702; --Deepclaw
		["Profania"] = 104513; --Defilia
		["Degren"] = 111651; --Degren
		["Mère de la tanière Ylva"] = 108790; --Den Mother Ylva
		["Coursoleil sournois"] = 112637; --Devious Sunrunner
		["Ténèbres dévorantes"] = 100495; --Devouring Darkness
		["Griffe redoutable"] = 93088; --Direclaw
		["Seigneur funeste Kazrok"] = 91579; --Doomlord Kazrok
		["Dorbash le Pilonneur"] = 109727; --Dorbash the Smasher
		["Capitaine de l’effroi Thedon"] = 108543; --Dread Captain Thedon
		["Corsaire de l’effroi"] = 108541; --Dread Corsair
		["Bateau de l’effroi Krazatoa"] = 108531; --Dread Ship Krazatoa
		["Cavalier de l’effroi Cortis"] = 94347; --Dread-Rider Cortis
		["Tourbeffroi"] = 97517; --Dreadbog
		["Durguth"] = 96072; --Durguth
		["Ealdis"] = 110367; --Ealdis
		["Earlnoc le Brise-bête"] = 96647; --Earlnoc the Beastbreaker
		["Egyl l’Endurci"] = 98188; --Egyl the Enduring
		["Plaie-des-elfes"] = 99792; --Elfbane
		["Serviteur de la terre enragé"] = 93372; --Enraged Earthservant
		["Ettin"] = 109728; --Ettin
		["Fathnyr"] = 91803; --Fathnyr
		["Fathnyr"] = 98225; --Fathnyr
		["Gangraile"] = 105938; --Felwing
		["Fenri"] = 92040; --Fenri
		["Fenri"] = 98276; --Fenri
		["Fjordun"] = 109584; --Fjordun
		["Fjorlag, le froid du tombeau"] = 108827; --Fjorlag, the Grave's Chill
		["Flamécaille"] = 97793; --Flamescale
		["Matrak le Bouffeur de capitaines"] = 89884; --Flog the Captain-Eater
		["Eclat de givre"] = 101649; --Frostshard
		["Fureur"] = 109729; --Fury
		["Garvrulg"] = 99610; --Garvrulg
		["Gathenak le Subjugateur"] = 93679; --Gathenak the Subjugator
		["Général Volroth"] = 97370; --General Volroth
		["Glimar Poing-de-Fer"] = 91529; --Glimar Ironfist
		["Globulus"] = 95988; --Globulus
		["Golza l’Aileron de fer"] = 89816; --Golza the Iron Fin
		["Gom Crabbar"] = 101411; --Gom Crabbar
		["Tripebec"] = 92117; --Gorebeak
		["Gorgroth"] = 110832; --Gorgroth
		["Grelda la Harpie"] = 95123; --Grelda the Hag
		["Putrésombre"] = 107595; --Grimrot
		["Putrésombre"] = 107596; --Grimrot
		["Champion du Totem-Sinistre"] = 112708; --Grimtotem Champion
		["Grrvrgull le Conquérant"] = 98503; --Grrvrgull the Conqueror
		["Gardien Thor’el"] = 110944; --Guardian Thor'el
		["Gourbière le Cogneur"] = 96590; --Gurbog da Basher
		["Halfdan"] = 108823; --Halfdan
		["Hannval le Boucher"] = 107926; --Hannval the Butcher
		["Har’kess l’Insatiable"] = 103214; --Har'kess the Insatiable
		["Messager des cris"] = 110361; --Harbinger of Screams
		["Hartli la Chapardeuse"] = 97326; --Hartli the Snatcher
		["Hati"] = 103154; --Hati
		["Ecumeur de l’embouchure de Hel"] = 92703; --Helmouth Raider
		["Ecumeur de l’embouchure de Hel"] = 92682; --Helmouth Raider
		["Hertha Grimdottir"] = 103223; --Hertha Grimdottir
		["Reine de la ruche Zsala"] = 91649; --Hivequeen Zsala
		["Hameçon"] = 92590; --Hook
		["Horux"] = 107169; --Horux
		["Maître-chien Ely"] = 92951; --Houndmaster Ely
		["Dresseur de molosses Stroxis"] = 107136; --Houndmaster Stroxis
		["Hul’roth le dresseur de molosses"] = 110486; --Huk'roth the Huntmaster
		["Chasseresse Estrid"] = 108822; --Huntress Estrid
		["Hydrannon"] = 100067; --Hydrannon
		["Image d’Ursoc"] = 92199; --Image of Ursoc
		["Image d’Ursol"] = 92200; --Image of Ursol
		["Horreur imaginée"] = 92189; --Imagined Horror
		["Immolian"] = 109630; --Immolian
		["Seigneur infernal"] = 90803; --Infernal Lord
		["Inquisiteur Ernstenbok"] = 90139; --Inquisitor Ernstenbok
		["Inquisiteur Tivos"] = 107269; --Inquisitor Tivos
		["Inquisiteur Volitix"] = 106532; --Inquisitor Volitix
		["Goinfre insatiable"] = 93993; --Insatiable Gorger
		["Branchefer"] = 93030; --Ironbranch
		["Isel le Marteau"] = 94413; --Isel the Hammer
		["Isel le Marteau"] = 109957; --Isel the Hammer
		["Sentinelle d’ivoire"] = 92751; --Ivory Sentinel
		["Jade Sombrehavre"] = 103975; --Jade Darkhaven
		["Jaggen-Ra"] = 101467; --Jaggen-Ra
		["Jak"] = 109500; --Jak
		["Cargaison"] = 103203; --Jetsam
		["Jinikki le Perceur"] = 93686; --Jinikki the Puncturer
		["Jubei’thos"] = 96208; --Jubei'thos
		["Kalazzius le Fourbe"] = 94636; --Kalazzius the Guileful
		["Karthax"] = 111731; --Karthax
		["Kathaw le Sauvage"] = 109125; --Kathaw the Savage
		["Kethrazor"] = 96997; --Kethrazor
		["Roi Forgalash"] = 101063; --King Forgalash
		["Roi Morgalash"] = 103827; --King Morgalash
		["Roi Voras"] = 97059; --King Voras
		["Kiranys Murmesoir"] = 94414; --Kiranys Duskwhisper
		["Korda Torros"] = 96212; --Korda Torros
		["Kosumoth l’Affamé"] = 111573; --Kosumoth the Hungering
		["Kottr Vondyr"] = 98421; --Kottr Vondyr
		["Kraxa"] = 103271; --Kraxa
		["Krol la Lame"] = 96210; --Krol the Blade
		["Kudzilla"] = 99362; --Kudzilla
		["Dame Rivantas"] = 106526; --Lady Rivantas
		["Lagertha"] = 109015; --Lagertha
		["Lieutenant Strathmar"] = 102303; --Lieutenant Strathmar
		["Lilin la Vorace"] = 100516; --Lilin the Ravenous
		["Hippogriffe oublié depuis longtemps"] = 108366; --Long-Forgotten Hippogryph
		["Luggut le mangeur d’œufs"] = 98024; --Luggut the Eggeater
		["Lyrath Plumelune"] = 98241; --Lyrath Moonfeather
		["Lysanis Ombrâme"] = 111939; --Lysanis Shadesoul
		["Lytheron"] = 109692; --Lytheron
		["Henryk le Fou"] = 95221; --Mad Henryk
		["Magistère Phaedris"] = 109954; --Magister Phaedris
		["Magistrice Vilessa"] = 112757; --Magistrix Vilessa
		["Maia la Blanche"] = 112497; --Maia the White
		["Noble-bois majestueux"] = 96410; --Majestic Elderhorn
		["Mal’Dreth le Corrupteur"] = 110024; --Mal'Dreth the Corruptor
		["Malisandra"] = 109281; --Malisandra
		["Mar’tura"] = 112802; --Mar'tura
		["Marblub l’Imposant"] = 109653; --Marblub the Massive
		["Matrone Hagatha"] = 111329; --Matron Hagatha
		["Mawat’aki"] = 104517; --Mawat'aki
		["Mellok, fils de Torok"] = 96621; --Mellok, Son of Torok
		["Miasu"] = 111653; --Miasu
		["Rat pestiféré monstrueux"] = 111055; --Monstrous Plague Rat
		["Mordvigbjörn"] = 93371; --Mordvigbjorn
		["Mortifère"] = 93622; --Mortiferous
		["Mère des claqueurs"] = 91780; --Mother Clacker
		["Mrrgrl le Saccage-Marée"] = 89865; --Mrrgrl the Tide Reaver
		["Mrrklr"] = 98311; --Mrrklr
		["Mynta Serre-Stridente"] = 97593; --Mynta Talonscreech
		["Myonix"] = 110340; --Myonix
		["Mythana"] = 101641; --Mythana
		["N.O.I.X."] = 107477; --N.U.T.Z.
		["Nécromagus Toldrethar"] = 108016; --Necromagus Toldrethar
		["Cristal cauchemardesque"] = 110451; --Nightmare Crystal
		["Gardien cauchemardesque"] = 106165; --Nightmare WardenNOT SPAWNED
		["Nithogg"] = 107023; --Nithogg
		["Normantis le Détrôné"] = 90248; --Normantis the Deposed
		["Normantis le Détrôné"] = 90217; --Normantis the Deposed
		["Normantis le Détrôné"] = 90253; --Normantis the Deposed
		["Notgarn"] = 105657; --Notgarn
		["Nylaathria l’Oubliée"] = 109990; --Nylaathria the Forgotten
		["Oglok le Furieux"] = 105899; --Oglok the Furious
		["Vieux L’ouïe"] = 108715; --Ol' Eary
		["Vieux Brouillon"] = 107617; --Ol' Muddle
		["Olokk le Naufrageur"] = 104484; --Olokk the Shipbreaker
		["Oreth le Vil"] = 110577; --Oreth the Vile
		["Ormagrogg"] = 104524; --Ormagrogg
		["Oubdob le Pilonneur"] = 95204; --Oubdob da Smasher
		["Surveillant Brutarg"] = 97057; --Overseer Brutarg
		["Terre pacifiée"] = 99886; --Pacified Earth
		["Aile de l’effroi pâle"] = 110364; --Pale Dreadwing
		["Pashya"] = 113694; --Pashya
		["Perrexx"] = 95318; --Perrexx
		["Pince-jarret"] = 107846; --Pinchshank
		["Pestebec"] = 103045; --Plaguemaw
		["Pollous le Fétide"] = 94485; --Pollous the Fetid
		["Poudrier Maclin"] = 108010; --Powdermaster Maclin
		["Seigneur de la harde Miaul"] = 90901; --Pridelord Meowl
		["Prêtresse Liza"] = 92613; --Priestess Liza
		["Puck"] = 100302; --Puck
		["Quin’el, maîtresse du noroît"] = 108256; --Quin'el, Master of Chillwind
		["Rabxach"] = 110342; --Rabxach
		["Rage-Putride"] = 101660; --Rage Rot
		["Rage-Gueule"] = 109504; --Ragemaw
		["Terre déchaînée"] = 99846; --Raging Earth
		["Ragoul"] = 103199; --Ragoul
		["Bo’xon"] = 97102; --Ram'Pag
		["Mandragore déchaînée"] = 92140; --Rampant Mandragora
		["Randril"] = 111007; --Randril
		["Rauren"] = 105547; --Rauren
		["Ravyn-Drath"] = 89016; --Ravyn-Drath
		["Seigneur du récif Raj’his"] = 103575; --Reef Lord Raj'his
		["Rok’nash"] = 103183; --Rok'nash
		["Moisœil"] = 110363; --Roteye
		["Rulf Concass’os"] = 109317; --Rulf Bonesnapper
		["Voyant des runes Sigvid"] = 109318; --Runeseer Sigvid
		["Ryal Rôde-l’Aube"] = 100232; --Ryael Dawndrifter
		["Saepher"] = 111010; --Saepher
		["Saepher"] = 111069; --Saepher
		["Cauchemar de marin"] = 100184; --Sailor's Nightmare
		["Sanaar"] = 105739; --Sanaar
		["Maître de la faux Cil’raman"] = 105728; --Scythemaster Cil'raman
		["Roi des mers Tidross"] = 111434; --Sea King Tidross
		["Sorsei"] = 92180; --Seersei
		["Sekhan"] = 101077; --Sekhan
		["Selenyi"] = 104522; --Selenyi
		["Selia, maîtresse des bûchers"] = 108251; --Selia, Master of Balefire
		["Plume-Obscure"] = 103841; --Shadowquill
		["Shal’an"] = 109054; --Shal'an
		["Shalas’aman"] = 104523; --Shalas'aman
		["Shara Souffle-Fétide"] = 97093; --Shara Felbreath
		["Croquille"] = 91788; --Shellmaw
		["Pisteur éthéré"] = 103605; --Shroudseeker
		["Ombre du pisteur éthéré"] = 108794; --Shroudseeker's Shadow
		["Shyama la Terreur"] = 92090; --Shyama the Dreaded
		["Maître de siège Aedrin"] = 110438; --Siegemaster Aedrin
		["Serpent d’argent"] = 111052; --Silver Serpent
		["Coureur tellurique sinistre"] = 112636; --Sinister Leyrunner
		["Le Plomb"] = 92591; --Sinker
		["Skul’vrax"] = 93654; --Skul'vrax
		["Coiffe-Crâne"] = 95872; --Skullhat
		["Tronche de vase"] = 111021; --Sludge Face
		["Roupille"] = 98890; --Slumber
		["Fils de Huretripe"] = 92725; --Son of Goredome
		["Sorallus"] = 112756; --Sorallus
		["Lieuse d’âme Halldora"] = 109195; --Soulbinder Halldora
		["Amefiel Tagerma"] = 108494; --Soulfiend Tagerma
		["Buveur d’âme"] = 97630; --Soulthirster
		["Starbuck"] = 107487; --Starbuck
		["Plumorage"] = 109594; --Stormfeather
		["Serre-Tempête"] = 109994; --Stormtalon
		["Matriarche aile-tempête"] = 91795; --Stormwing Matriarch
		["Solibise [NE PAS FAIRE APPARAÎTRE]"] = 98309; --Sunbreeze [DO NOT SPAWN]
		["Syphonus"] = 90505; --Syphonus
		["Corapace apprivoisé"] = 97928; --Tamed Coralback
		["Tarben"] = 98268; --Tarben
		["Taurson"] = 97653; --Taurson
		["Tenpak Totem-de-Flammes"] = 97203; --Tenpak Flametotem
		["Thane Irglov l’Impitoyable"] = 91892; --Thane Irglov the Merciless
		["Muscle"] = 108136; --The Muscle
		["Le roi sans nom"] = 92763; --The Nameless King
		["L’Oracle"] = 89850; --The Oracle
		["Le roi des rats"] = 111057; --The Rat King
		["La Chuchoteuse"] = 109620; --The Whisperer
		["Théryssia"] = 92423; --Theryssia
		["Thondrax"] = 93205; --Thondrax
		["Béhémoth de marée"] = 91114; --Tide Behemoth
		["Béhémoth de marée"] = 91115; --Tide Behemoth
		["Béhémoth de marée"] = 91113; --Tide Behemoth
		["Griffe-des-marées"] = 110824; --Tideclaw
		["Tiptog le Perdu"] = 93166; --Tiptog the Lost
		["Torrentius"] = 102064; --Torrentius
		["Pisteur Jack"] = 92609; --Tracker Jack
		["Démon au trésor"] = 89407; --Treasure Demon
		["Tremblelame"] = 95440; --Tremblade
		["Alléa"] = 91663; --Trubble
		["Tortue"] = 108881; --Turtle
		["Ultanok"] = 103247; --Ultanok
		["Chef de bande sous-grell"] = 109708; --Undergrell Ringleader
		["Urgev l’Ecorcheur"] = 93401; --Urgev the Flayer
		["Valakar l’Assoiffé"] = 109575; --Valakar the Thirsty
		["Valitos"] = 109606; --Valitos
		["Valiyaka la Porte-Tempête"] = 89650; --Valiyaka the Stormbringer
		["Requin-baleine vicieux"] = 99899; --Vicious Whale Shark
		["Vinyéti"] = 91640; --Vinyeaty
		["Vinyéti"] = 91661; --Vinyeti
		["Vinyéti"] = 89906; --Vinyeti
		["Vis’ileth"] = 105496; --Vis'ileth
		["Volshax, Briseur de volonté"] = 112760; --Volshax, Breaker of Will
		["Vorthax"] = 107113; --Vorthax
		["Esprit de vierge de la terre vrykule"] = 100224; --Vrykul Earthmaiden Spirit
		["Esprit de sculpte-terre vrykul"] = 100223; --Vrykul Earthshaper Spirit
		["Porteguerre Mox’na"] = 90164; --Warbringer Mox'na
		["Seigneur de guerre Vatilash"] = 102092; --Warlord Vatilash
		["Laperautomate armé"] = 107431; --Weaponized Rabbot
		["Ours bien nourri"] = 103785; --Well-Fed Bear
		["Typhon d’Eau-Pâle"] = 92152; --Whitewater Typhoon
		["Féticheur Grgl-Brgl"] = 109648; --Witchdoctor Grgl-Brgl
		["Serre-en-peine"] = 97504; --Wraithtalon
		["Seigneur du courroux Lekos"] = 97069; --Wrath-Lord Lekos
		["Xaander"] = 109498; --Xaander
		["Xavrix"] = 104831; --Xavrix
		["Zénobia"] = 100303; --Zenobia
		["Zorux"] = 107170; --Zorux
		["Mage affolé"] = 97587; --Crazed Mage
		["Domino"] = 97380; --Splint
		["Détrousseur"] = 97390; --Thieving Scoundrel
		["Xullorax"] = 97388; --Xullorax
		["Segacedi"] = 97384; --Segacedi
		["Oeuf pourri"] = 97589; --Rotten Egg
		["Suinte-mana"] = 97387; --Mana Seeper
		["Echo"] = 97381; --Screek

		-- Rares Legion 7.1.0
		["Ariadne"] = 115847; --Ariadne
		["Servante gardienne"] = 116185; --Attendant Keeper
		["Flagellance"] = 115853; --Doomlash
		["Concubin exotique"] = 116230; --Exotic Concubine
		["Maître de vol Volnath"] = 116004; --Flightmaster Volnath
		["Kar’zun"] = 116008; --Kar'zun
		["Devin du Puits de la nuit"] = 116395; --Nightwell Diviner
		["Nuelle régalienne"] = 116036; --Regal Cloudwing
		["Nuelle régalienne"] = 116059; --Regal Cloudwing
		["Le roi des vaches"] = 116034; --The Cow King
		["Torm le Brutal"] = 115914; --Torm the Brute
		["Concubin de la tour"] = 116158; --Tower Concubine
		["Gobelin au trésor"] = 116652; --Treasure Goblin
		["Flagorneur rusé"] = 116159; --Wily Sycophant
		["Amasseur langue-de-wyrm"] = 89407; --Wrymtongue Hoarder
		["Gobelin au trésor"] = 116041; --Treasure Goblin
		
		-- Rares Legion 7.1.5
		["Foudrepatte"] = 118244; --Lightning Paw
		["Lorthalium"] = 115537; --Lorthalium
		
		-- Rares Legion 7.2.0
		["Apocron"] = 121124; --Apocron
		["Malificus"] = 117303; --Malificus
		["Si'vash"] = 117470; --Si'vash
		["Braise abyssale"] = 116666; --Abyssal Ember
		["An'thyna"] = 120675; --An'thyna
		["Géant des mers colérique"] = 116657; --Angered Sea Giant
		["Observateur anormal"] = 121092; --Anomalous Observer
		["Aqueux"] = 121016; --Aqueux
		["Chevalier-capitaine torve"] = 121049; --Baleful Knight-Captain
		["Mère des couvées Nix"] = 121029; --Brood Mother Nix
		["Frère Badatin"] = 121046; --Brother Badatin
		["Brutallus"] = 117239; --Brutallus
		["Brise-os corrompu"] = 116953; --Corrupted Bonebreaker
		["Gueule-des-Abysses"] = 120022; --Deepmaw
		["Shivarra démente"] = 121090; --Demented Shivarra
		["Succube dérangée"] = 121073; --Deranged Succubus
		["Porte-destin Zar'thoz"] = 117136; --Doombringer Zar'thoz
		["Annihilateur lame-d'effroi"] = 117095; --Dreadblade Annihilator
		["Oeil-Effroi"] = 118993; --Dreadeye
		["Parleffroi Serilis"] = 120716; --Dreadspeaker Serilis
		["Dresanoth"] = 120012; --Dresanoth
		["Duc Sithizi"] = 121134; --Duke Sithizi
		["Braise-Feu"] = 117086; --Emberfire
		["Pyron"] = 116671; --Emberon
		["Erdu'val"] = 120020; --Erdu'val
		["Oeil de Gurgh"] = 116166; --Eye of Gurgh
		["Oblitérateur gangrené"] = 120681; --Fel Obliterator
		["Gangréneur Xar'thok"] = 117093; --Felbringer Xar'thok
		["Gangrogène Zelthae"] = 117103; --Felcaller Zelthae
		["Gangrechien"] = 117342; --Felhound
		["Démon de braise gangregueule"] = 117091; --Felmaw Emberfiend
		["Flllurlokkr"] = 120998; --Flllurlokkr
		["Commandant de corps Xillious"] = 120665; --Force-Commander Xillious
		["Guerrier du Totem-Sinistre"] = 117493; --Grimtotem Warrior
		["Gros-Sir"] = 121037; --Grossir
		["Harth Brassepierre"] = 118675; --Harth Stonebrew
		["Illisthyndria"] = 120686; --Illisthyndria
		["Mère des diablotins Bruva"] = 119718; --Imp Mother Bruva
		["Inquisiteur Pestefroid"] = 117089; --Inquisitor Chillbane
		["Jorvild le Fidèle"] = 115732; --Jorvild the Trusted
		["Goégnon"] = 120021; --Kelpfist
		["Dame Eldrathe"] = 121107; --Lady Eldrathe
		["Chasseur corrompu chatoyant"] = 121077; --Lambent Felhunter
		["Larithia"] = 120712; --Larithia
		["Seigneur Hel'nurath"] = 119629; --Lord Hel'Nurath
		["Garde de terreur malformé"] = 121056; --Malformed Terrorguard
		["Malgrazoth"] = 117141; --Malgrazoth
		["Malorus le Gardien d'âmes"] = 117094; --Malorus the Soulkeeper
		["Maîtresse Dominix"] = 120717; --Mistress Dominix
		["Brute mo'arg"] = 116912; --Mo'arg Brute
		["Mor'tec l'Asservisseur d'âmes"] = 116668; --Mor'tec the Soulslaver
		["Maître des potions Bloup"] = 117096; --Potionmaster Gloop
		["Raga'yut"] = 120715; --Raga'yut
		["Démon supérieur désastreux"] = 121108; --Ruinous Overfiend
		["Ryul le Déclinant"] = 120019; --Ryul the Fading
		["Salethan le marcheur des couvées"] = 117140; --Salethan the Broodwalker
		["Simona la Séductrice"] = 117850; --Simone the Seductress
		["Skulguloth"] = 120641; --Skulguloth
		["Aube sombre"] = 121112; --Somber Dawn
		["Than'otalion"] = 120583; --Than'otalion
		["Le Traqueur de l'effroi"] = 120013; --The Dread Stalker
		["Abyssal instable"] = 121051; --Unstable Abyssal
		["Diablotin instable"] = 121068; --Volatile Imp
		["Wa'glur"] = 120713; --Wa'glur
		["Seigneur de guerre Darjah"] = 120003; --Warlord Darjah
		["Seigneur du Vide distordu"] = 121088; --Warped Voidlord
		["Xorogun le Sculpteflamme"] = 117090; --Xorogun the Flamecarver
		["Zirux"] = 116316; --Zirux
		["Gardien doré"] = 112712; --Gilded Guardian
		
		-- Rares Legion 7.2.5
		["Al'Abas"] = 123087; --Al'Abas
		["Festin-de-Sang"] = 122524; --Bloodfeast
		["Scinde-les-os"] = 122521; --Bonesunder
		["Chevalier Dess Métal"] = 122899; --Death Metal Knight
		["Dregmar Marquerune"] = 122519; --Dregmar Runebrand
		["Glacepoing"] = 122520; --Icefist
		["Briseglace"] = 122522; --Iceshatter
		["Xavinox"] = 122609; --Xavinox
		
		-- Rares Legion 7.3.0
		["Amiral Rel'var"] = 127090; --Admiral Rel'var
		["Xanarian l'Omnivoyant"] = 127096; --All-Seer Xanarian
		["Ataxon"] = 126887; --Ataxon
		["Baruut le Sanguinaire"] = 126862; --Baruut the Bloodthirsty
		["Gueule putride"] = 122958; --Blistermaw
		["Aile-putride"] = 124479; --Blisterwing
		["Capitaine Faruq"] = 126869; --Captain Faruq
		["Chef alchimiste Gromuncule"] = 127376; --Chief Alchemist Munculus
		["Commandant Endaxis"] = 124775; --Commander Endaxis
		["Commandant Sathrenaël"] = 122912; --Commander Sathrenael
		["Commandant Texlaz"] = 127084; --Commander Texlaz
		["Commandant Vecaya"] = 122911; --Commander Vecaya
		["Commandant Xethgar"] = 126910; --Commander Xethgar
		["Sombre implorateur"] = 122457; --Darkcaller
		["Lance-malheur Suprax"] = 127703; --Doomcaster Suprax
		["Porte-destin semperardent"] = 127341; --Everburning Doombringer
		["Bourreau Vaal"] = 124717; --Executioner Vaal
		["Oeil du tortionnaire"] = 124684; --Eye of the Torturer
		["Feasel le voleur de muffins"] = 126864; --Feasel the Muffin Thief
		["Gar'zoth"] = 122999; --Gar'zoth
		["Héraut du chaos"] = 126896; --Herald of Chaos
		["Suborneur de molosses Orox"] = 124412; --Houndcaller Orox
		["Dresseur de molosses Kerrax"] = 127288; --Houndmaster Kerrax
		["Mère des diablotins Laglath"] = 125820; --Imp Mother Laglath
		["Inquisiteur Vethroz"] = 126946; --Inquisitor Vethroz
		["Instructrice Tarahna"] = 126900; --Instructor Tarahna
		["Champion jed'hin Vorusk"] = 126899; --Jed'hin Champion Vorusk
		["Kaara le Pâle"] = 126860; --Kaara the Pale
		["Khazaduum"] = 125824; --Khazaduum
		["Lieutenant Xakaar"] = 126254; --Lieutenant Xakaar
		["Maîtresse Il'thendra"] = 122947; --Mistress Il'thendra
		["Mère Rosula"] = 127705; --Mother Rosula
		["Naroua"] = 126419; --Naroua
		["Surveillante Y'Beda"] = 124440; --Overseer Y'Beda
		["Surveillante Y'Morna"] = 125498; --Overseer Y'Morna
		["Surveillante Y'Sorna"] = 125497; --Overseer Y'Sorna
		["Puscilla"] = 126040; --Puscilla
		["Pyromancien Volarr"] = 124572; --Pyromancer Volarr
		["Rézira le Voyant"] = 127706; --Rezira the Seer
		["Sabuul"] = 126898; --Sabuul
		["Exhalombre Voruun"] = 122838; --Shadowcaster Voruun
		["Maître de siège Voraan"] = 120393; --Siegemaster Voraan
		["Soeur Subversia"] = 123464; --Sister Subversia
		["Skreeg le Dévoreur"] = 126912; --Skreeg the Devourer
		["Ondulon le Dernier"] = 126913; --Slithon the Last
		["Sorolis l'Infortuné"] = 126889; --Sorolis the Ill-Fated
		["Soignelâme Videx"] = 127704; --Soultender Videx
		["Monstruosité à l'âme distordue"] = 126815; --Soultwisted Monstrosity
		["Commandant d'escadron Vishax"] = 127700; --Squadron Commander Vishax
		["Talestra l'Infâme"] = 123689; --Talestra the Vile
		["Crache-goudron"] = 125479; --Tar Spitter
		["Tereck le Sélectionneur"] = 124804; --Tereck the Selector
		["Le Dévoreur aux cent visages"] = 127581; --The Many-Faced Devourer
		["Turek le Lucide"] = 126868; --Turek the Lucid
		["Emissaire du Crépuscule Tharuul"] = 127906; --Twilight-Harbinger Tharuul
		["Tyrannosaurus Rekt"] = 126691; --Tyrannosaurus Rekt
		["Umbraliss"] = 126885; --Umbraliss
		["Vagath le Trahi"] = 125388; --Vagath the Betrayed
		["Varga"] = 126208; --Varga
		["Ven'orn"] = 126115; --Ven'orn
		["Ciaileron queue-venin"] = 126867; --Venomtail Skyfin
		["Vigilant Kuro"] = 126866; --Vigilant Kuro
		["Vigilant Thanos"] = 126865; --Vigilant Thanos
		["Vixx le Collectionneur"] = 127882; --Vixx the Collector
		["Gardienne du Vide Valsuran"] = 127300; --Void Warden Valsuran
		["Zedaat Lame du Vide"] = 127911; --Void-Blade Zedaat
		["Gueule-du-Vide"] = 122456; --Voidmaw
		["Vrax'thul"] = 126199; --Vrax'thul
		["Veilleur Aival"] = 127291; --Watcher Aival
		["Skuul le Pourfendeur"] = 127118; --Worldsplitter Skuul
		["Kravos le Dompteur"] = 126852; --Wrangler Kravos
		["Seigneur du courroux Yarez"] = 126338; --Wrath-Lord Yarez
		["Zul'tan l'Abondant"] = 126908; --Zul'tan the Numerous
		["Zul'zoloth"] = 124680; --Zul'zoloth
		
		-- Rares Legion 7.3.5
		["Connétable Tremblelame"] = 133044; --Grand Marshal Tremblade
		["Grand seigneur de guerre Volrath"] = 133043; --High Warlord Volrath
		["Gardemort d'obsidienne"] = 125951; --Obsidian Deathwarder
		["Ogmot le Dément"] = 132591; --Ogmot the Mad
		["Qroshekx"] = 132578; --Qroshekx
		["Maréchal céleste Gabriel"] = 133042; --Sky Marshall Gabriel
		["Ssinkrix"] = 132580; --Ssinkrix
		["Xaarshej"] = 132584; --Xaarshej
	}
end