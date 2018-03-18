-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "itIT", false);

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
		[9998] = "Isola di Lunacupa"; --Darkmoon Island
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
		["Ahone la Nomade"] = 50817; --Ahone the Wanderer
		["Ai-Li Specchio Celeste"] = 50821; --Ai-Li Skymirror
		["Ai-Ran Nube Mutevole"] = 50822; --Ai-Ran the Shifting Cloud
		["Al'tabim l'Onnisciente"] = 70000; --Al'tabim the All-Seeing
		["Ankha"] = 54318; --Ankha
		["Anthriss"] = 54338; --Anthriss
		["Gran Sacerdote delle Fiamme"] = 73666; --Archiereus of Flame
		["Arciritualista Kelada"] = 70243; --Archritualist Kelada
		["Arness la Scaglia"] = 50787; --Arness the Scale
		["Spaccaschiena Uru"] = 70001; --Backbreaker Uru
		["Bai-Jin il Macellaio"] = 58949; --Bai-Jin the Butcher
		["Ban'thalos"] = 54320; --Ban'thalos
		["Baolai l'Immolatore"] = 63695; --Baolai the Immolator
		["Zoccolo Nero"] = 51059; --Blackhoof
		["Morsocruento"] = 58474; --Bloodtip
		["Bonobos"] = 50828; --Bonobos
		["Borginn Pugnonero"] = 50341; --Borginn Darkfist
		["Bufo"] = 72775; --Bufo
		["Campione della Fiamma Nera"] = 73171; --Champion of the Black Flame
		["Chelon"] = 72045; --Chelon
		["Calcacenere"] = 73175; --Cinderfall
		["Cournith Calcalaghi"] = 50768; --Cournith Waterstrider
		["Zannafosca"] = 58768; --Cracklefang
		["Squartagru"] = 72049; --Cranegnasher
		["Dak il Distruttore"] = 50334; --Dak the Breaker
		["Dalan Spezzanotte"] = 68318; --Dalan Nightbreaker
		["Deth'tilac"] = 54322; --Deth'tilac
		["Disha Domapaura"] = 68319; --Disha Fearwarden
		["Dottor Theolen Krastinov"] = 59369; --Doctor Theolen Krastinov
		["Nave Fantasma Vazuvius"] = 73281; --Dread Ship Vazuvius
		["Gru di Smeraldo"] = 73158; --Emerald Gander
		["Eshelon"] = 50772; --Eshelon
		["Faucieterne"] = 73279; --Evermaw
		["Ferdinand"] = 51078; --Ferdinand
		["Visce'rok il Malato"] = 70429; --Flesh'rok the Diseased
		["Signore della Fornace Gairan"] = 73172; --Flintlord Gairan
		["Occhio Concentrato"] = 70249; --Focused Eye
		["Gaarn il Tossico"] = 50340; --Gaarn the Toxic
		["Gaohun il Tranciaspiriti"] = 62881; --Gaohun the Soul-Severer
		["Gar'lok"] = 50739; --Gar'lok
		["Garnia"] = 73282; --Garnia
		["Generale Temuja"] = 63101; --General Temuja
		["Strisciaombre"] = 50051; --Ghostcrawler
		["Go-Kan"] = 50331; --Go-Kan
		["Gochao l'Impavido"] = 62880; --Gochao the Ironfist
		["Colosso Divino Ramuk"] = 69999; --God-Hulk Ramuk
		["Goda"] = 69998; --Goda
		["Golganarr"] = 72970; --Golganarr
		["Grande Tartaruga Ardiguscio"] = 73161; --Great Turtle Furyshell
		["Gu'chi il Portatore dello Sciame"] = 72909; --Gu'chi the Swarmbringer
		["Havak"] = 50354; --Havak
		["Costrutto dei Predatori del Sole Fuori Controllo"] = 50358; --Haywire Sunreaver Construct
		["Huo-Shuang"] = 63691; --Huo-Shuang
		["Huolon"] = 73167; --Huolon
		["Iggo-Iggo lo Scaltro"] = 50836; --Ik-Ik the Nimble
		["Pitone Imperiale"] = 73163; --Imperial Python
		["Yak Cornoferreo"] = 73160; --Ironfur Steelhorn
		["Grinfiagiada"] = 49822; --Jadefang
		["Jakur degli Ordon"] = 73169; --Jakur of Ordon
		["Jonn-Dar"] = 50351; --Jonn-Dar
		["Kah'tir"] = 50355; --Kah'tir
		["Kal'tik la Piaga"] = 50749; --Kal'tik the Blight
		["Kang il Ladro d'Anime"] = 50349; --Kang the Soul Thief
		["Kar Plasmaguerra"] = 68321; --Kar Warmaker
		["Karkanos"] = 72193; --Karkanos
		["Karkin"] = 50959; --Karkin
		["Karoma"] = 50138; --Karoma
		["Karr l'Oscuratore"] = 50347; --Karr the Darkener
		["Kirix"] = 54323; --Kirix
		["Kor'nas Predanotte"] = 50338; --Kor'nas Nightsavage
		["Korda Torros"] = 50332; --Korda Torros
		["Krakkanon"] = 70323; --Krakkanon
		["Krax'ik"] = 50363; --Krax'ik
		["Kri'chon"] = 63978; --Kri'chon
		["Krol la Lama"] = 50356; --Krol the Blade
		["Ku'lai l'Artiglio Celeste"] = 69996; --Ku'lai the Skyclaw
		["Sanafoglia"] = 73277; --Leafmender
		["Lith'ik l'Inseguitore"] = 50734; --Lith'ik the Stalker
		["Lon il Toro"] = 50333; --Lon the Bull
		["Lu-Ban"] = 70002; --Lu-Ban
		["Magria"] = 54319; --Magria
		["Maggiore Nanners"] = 50840; --Major Nanners
		["Mavis Harms"] = 68317; --Mavis Harms
		["Signor Feroce"] = 50823; --Mister Ferocious
		["Moldo il Guercio"] = 50806; --Moldo One-Eye
		["Molthor"] = 70003; --Molthor
		["Monara"] = 70440; --Monara
		["Spinartiglio Mostruoso"] = 73166; --Monstrous Spineclaw
		["Morgrinn Zannalacera"] = 50350; --Morgrinn Crackfang
		["Muerta"] = 68322; --Muerta
		["Mumta"] = 69664; --Mumta
		["Nal'lak lo Squartatore"] = 50364; --Nal'lak the Ripper
		["Nalash Verdantis"] = 50776; --Nalash Verdantis
		["Nasra Manto Maculato"] = 50811; --Nasra Spothide
		["Nessos l'Oracolo"] = 50789; --Nessos the Oracle
		["Oratore delle Tempeste No'ku"] = 70276; --No'ku Stormsayer
		["Norlaxx"] = 50344; --Norlaxx
		["Omnis Grinlok"] = 50805; --Omnis Grinlok
		["Supremo Fendifuria"] = 50085; --Overlord Sunderfury
		["Principe Lakma"] = 54533; --Prince Lakma
		["Progenitus"] = 69997; --Progenitus
		["Qu'nas"] = 50352; --Qu'nas
		["Quid"] = 58771; --Quid
		["Ra'sha"] = 70530; --Ra'sha
		["Scricchiaossa"] = 72048; --Rattleskew
		["Guardingo Muschioso"] = 73157; --Rock Moss
		["Orrore di Roccia"] = 70430; --Rocky Horror
		["Ruun Zampa Chiara"] = 50816; --Ruun Ghostpaw
		["Sahn Cacciamaree"] = 50780; --Sahn Tidehunter
		["Esploratore da Guerra di Salyis"] = 50783; --Salyin Warscout
		["Sambas"] = 50159; --Sambas
		["Sarnak"] = 50782; --Sarnak
		["Scritch"] = 50831; --Scritch
		["Sele'na"] = 50766; --Sele'na
		["Maestro delle Ombre Sydow"] = 63240; --Shadowmaster Sydow
		["Siltriss l'Affilatore"] = 50791; --Siltriss the Sharpener
		["Skarr"] = 50815; --Skarr
		["Ski'thik"] = 50733; --Ski'thik
		["Balzafiamme"] = 54324; --Skitterflame
		["Solix"] = 54321; --Solix
		["Cavernoculus"] = 71864; --Spelurk
		["Spirito di Giadafulgida"] = 72769; --Spirit of Jadefire
		["Spirito di Lao-Fe"] = 58817; --Spirit of Lao-Fe
		["Spriggin"] = 50830; --Spriggin
		["Treccialorda"] = 73704; --Stinkbraid
		["Sulik'shor"] = 50339; --Sulik'shor
		["Tarvus il Vile"] = 50086; --Tarvus the Vile
		["L'Urlatore"] = 50832; --The Yowler
		["Torik-Ethis"] = 50388; --Torik-Ethis
		["Tsavo'ka"] = 72808; --Tsavo'ka
		["Ubunti l'Ombra"] = 68320; --Ubunti the Shade
		["Occhio Impassibile"] = 70238; --Unblinking Eye
		["Urdur il Cauterizzatore"] = 73173; --Urdur the Cauterizer
		["Urgolax"] = 50359; --Urgolax
		["Urobi il Camminatore"] = 50808; --Urobi the Walker
		["Morsovile"] = 58769; --Vicejaw
		["Vyraxxis"] = 63977; --Vyraxxis
		["Dio della Guerra Dokah"] = 70096; --War-God Dokah
		["Guardiano Osu"] = 73170; --Watcher Osu
		["Whizzig"] = 73293; --Whizzig
		["Willy Wilder"] = 70126; --Willy Wilder
		["Wulon"] = 63510; --Wulon
		["Yorik Occhio Arguto"] = 50336; --Yorik Sharpeye
		["Yul Zampa Furente"] = 50820; --Yul Wildpaw
		["Zai l'Esiliato"] = 50769; --Zai the Outcast
		["Araldo della Guerra Zandalari"] = 69769; --Zandalari Warbringer cian
		["Araldo della Guerra Zandalari"] = 69842; --Zandalari Warbringer gray
		["Araldo della Guerra Zandalari"] = 69841; --Zandalari Warbringer silver
		["Esploratore da Guerra Zandalari"] = 69768; --Zandalari Warscout
		["Zao'cho"] = 69843; --Zao'cho
		["Zesqua"] = 72245; --Zesqua
		["Zhu-Gon l'Acre"] = 71919; --Zhu-Gon the Sour
		
		-- Rares Draenor
		["Amaukwa"] = 77140; --Amaukwa
		["Maestro di Spade Antico"] = 82899; --Ancient Blademaster
		["Aqualir"] = 86213; --Aqualir
		["Avatar di Socrethar"] = 88043; --Avatar of Socrethar
		["Ba'ruun"] = 82326; --Ba'ruun
		["Bahamocchio"] = 81406; --Bahameye
		["Bashiok"] = 82085; --Bashiok
		["Squartabestie Saramor"] = 78150; --Beastcarver Saramor
		["Betsi Scoppiacesti"] = 84887; --Betsi Boombasket
		["Danzatore delle Lame Aeryx"] = 80614; --Blade-Dancer Aeryx
		["Luminfetto"] = 84856; --Blightglow
		["Fili il Re dei Rovi"] = 81639; --Brambleking Fili
		["Senzafiato"] = 78867; --Breathless
		["Brutag Lamatetra"] = 87234; --Brutag Grimblade
		["Madre della Stirpegelida"] = 71721; --Canyon Icemother
		["Char l'Infuocato"] = 82311; --Char the Burning
		["Zannepolari"] = 80242; --Chillfang
		["Ardifauci"] = 72294; --Cindermaw
		["Oratore delle Nubi Daber"] = 78169; --Cloudspeaker Daber
		["Passofreddo l'Afflitto"] = 77513; --Coldstomp the Griever
		["Zannafredda"] = 76914; --Coldtusk
		["Cro Tranciacarne"] = 77620; --Cro Fleshrender
		["Furia Ciclonica"] = 78621; --Cyclonic Fury
		["Emanazione Oscura"] = 77085; --Dark Emanation
		["Maestro Oscuro Go'vid"] = 82268; --Darkmaster Go'vid
		["Artigliocupo"] = 82411; --Darktalon
		["Kizi Colpoletale"] = 77763; --Deadshot Kizi
		["Ceppofondo"] = 82058; --Depthroot
		["Zoccolotruce"] = 86729; --Direhoof
		["Dottor Tenebra"] = 77561; --Dr. Gloom
		["Durkath Fauciferree"] = 84807; --Durkath Steelmaw
		["Elementalista Utrah"] = 77768; --Elementalist Utrah
		["Enavra"] = 82676; --Enavra
		["Enavra"] = 82742; --Enavra
		["Alafatata"] = 82207; --Faebright
		["Zannaron"] = 82975; --Fangler
		["Vilcorteccia"] = 80204; --Felbark
		["Consorte del Vilfuoco"] = 82992; --Felfire Consort
		["Putrifoglia"] = 84890; --Festerbloom
		["Gigante di Fuocofuria"] = 74971; --Firefury Giant
		["Piromane Grash"] = 88580; --Firestarter Grash
		["Ardimanto"] = 83483; --Flinthide
		["Matrona della Forgia Targa"] = 77648; --Forge Matron Targa
		["Fossilegno il Pietrificato"] = 85250; --Fossilwood the Petrified
		["Golem Frenetico"] = 77614; --Frenzied Golem
		["Galzomar"] = 78713; --Galzomar
		["Gar'lua"] = 82764; --Gar'lua
		["Garrison Ford"] = 86058; --Garrison Ford
		["Gelgor della Fiamma Blu"] = 81038; --Gelgor of the Blue Flame
		["Generale Aevd"] = 82882; --General Aevd
		["Gennadian"] = 80471; --Gennadian
		["Kul lo Sterminatore di Giganti"] = 71665; --Giant-Slayer Kul
		["Ammazzagiganti Kimla"] = 78144; --Giantslayer Kimla
		["Alalucente"] = 77719; --Glimmerwing
		["Glut"] = 80868; --Glut
		["Zampatorta il Rabbioso"] = 82778; --Gnarlhoof the Rabid
		["Gorum"] = 76380; --Gorum
		["Gran Maresciallo Fremilama"] = 82876; --Grand Marshal Tremblade
		["Piumaregale"] = 82758; --Greatfeather
		["Greldrok l'Astuto"] = 84431; --Greldrok the Cunning
		["Faucebigia"] = 82912; --Grizzlemaw
		["Cacciagronn Dawarn"] = 78128; --Gronnstalker Dawarn
		["Custode del Bosco Yal"] = 88583; --Grove Warden Yal
		["Grutush lo Sciacallo"] = 80312; --Grutush the Pillager
		["Gruuk"] = 80190; --Gruuk
		["Gurun"] = 80235; --Gurun
		["Haakun il Divoramondi"] = 83008; --Haakun the All-Consuming
		["Schioccadenti"] = 77715; --Hammertooth
		["Madre degli Uccelli Hami"] = 77626; --Hen-Mother Hami
		["Mantopallido l'Eremita"] = 86724; --Hermit Palefur
		["Gran Signore della Guerra Volrath"] = 82877; --High Warlord Volrath
		["Cacciatrice Bal'ra"] = 88672; --Hunter Bal'ra
		["Cacciatore Dentenero"] = 83603; --Hunter Blacktooth
		["Mastro Cacciatore Kuang"] = 78151; --Huntmaster Kuang
		["Iperius"] = 78161; --Hyperious
		["Insha'tar"] = 83553; --Insha'tar
		["Fremifauci"] = 82616; --Jabberjaw
		["Jaluk il Pacifista"] = 87600; --Jaluk the Pacifist
		["Jiasska il Divoratore di Spore"] = 84955; --Jiasska the Sporegorger
		["Kalos l'Insanguinato"] = 84810; --Kalos the Bloodbathed
		["Karosh Ventonero"] = 86959; --Karosh Blackwind
		["Kharazos il Trionfante"] = 78710; --Kharazos the Triumphant
		["Mordimorte"] = 74206; --Killmaw
		["Klikixx"] = 78872; --Klikixx
		["Ku'targ il Veggente del Vuoto"] = 72362; --Ku'targ the Voidseer
		["Dama Tentessa"] = 85121; --Lady Temptessa
		["Chiromante delle Foglie Kurri"] = 72537; --Leaf-Reader Kurri
		["Lo'marg Schiantafauci"] = 77784; --Lo'marg Jawcrusher
		["Sire Korinak"] = 82920; --Lord Korinak
		["Sporeon il \"Re\" Folle"] = 77310; --Mad "King" Sporeon
		["Malroc Sfregiapietre"] = 83643; --Malroc Stonesunder
		["Mandrakor"] = 84406; --Mandrakor
		["Maresciallo Gabriel"] = 82878; --Marshal Gabriel
		["Maresciallo Karsh Forgiatuono"] = 82880; --Marshal Karsh Stormforge
		["Matrona del Peccato"] = 82998; --Matron of Sin
		["Torcianime Morva"] = 82362; --Morva Soultwister
		["Madre Araneae"] = 76473; --Mother Araneae
		["Madre Om'ra"] = 75071; --Mother Om'ra
		["Mutafen"] = 84417; --Mutafen
		["Nas Dunberlin"] = 82247; --Nas Dunberlin
		["No'losh"] = 79334; --No'losh
		["Ophiis"] = 83409; --Ophiis
		["Oskiira la Vendicativa"] = 84872; --Oskiira the Vengeful
		["Perlustratrice Duretha"] = 83680; --Outrider Duretha
		["Pescatore Pallido"] = 78606; --Pale Fishmonger
		["Ricognitore Jalog"] = 78134; --Pathfinder Jalog
		["Calcapiste Draga"] = 77095; --Pathstalker Draga
		["Bestia della Fossa"] = 88208; --Pit Beast
		["Maestro dei Veleni Bortusk"] = 84838; --Poisonmaster Bortusk
		["Primalista Mur'og"] = 76918; --Primalist Mur'og
		["Maga Ardente Zindra"] = 77642; --Pyrecaster Zindra
		["Ra'kahn"] = 77741; --Ra'kahn
		["Ragore Braccartiglio"] = 84392; --Ragore Driftstalker
		["Rai'vosh"] = 82374; --Rai'vosh
		["Zamparossa il Ferino"] = 82755; --Redclaw the Feral
		["Fungomarcio"] = 85504; --Rotcap
		["Sangrikass"] = 84833; --Sangrikass
		["Esploratore Bramasangue"] = 77526; --Scout Goreseeker
		["Sean Marbianco"] = 83542; --Sean Whitesea
		["Scorzacupa"] = 79938; --Shadowbark
		["Shinri"] = 82415; --Shinri
		["Sikthiss la Dama del Massacro"] = 78715; --Sikthiss, Maiden of Slaughter
		["Antico Fogliargenta"] = 79686; --Silverleaf Ancient
		["Antico Fogliargenta"] = 79693; --Silverleaf Ancient
		["Antico Fogliargenta"] = 79692; --Silverleaf Ancient
		["Amplificatore Solare"] = 83990; --Solar Magnifier
		["Zannaspiritica"] = 80057; --Soulfang
		["Zannacciaio"] = 86549; --Steeltusk
		["Pestatore Kreego"] = 79629; --Stomper Kreego
		["Scrutaroccia"] = 84805; --Stonespite
		["Sulfurion"] = 80725; --Sulfurious
		["Solartiglio"] = 86137; --Sunclaw
		["Fendispina"] = 84912; --Sunderthorn
		["Sciamafoglia"] = 85520; --Swarmleaf
		["Scorticatore d'Onice Rapido"] = 88582; --Swift Onyx Flayer
		["Spezzartigli"] = 84836; --Talonbreaker
		["Sacerdotessa dell'Artiglio Zorkra"] = 79485; --Talonpriest Zorkra
		["Tesska l'Infranto"] = 84775; --Tesska the Broken
		["Il Picchiatore"] = 77527; --The Beater
		["Tor'goroth"] = 82618; --Tor'goroth
		["Tura'aka"] = 83591; --Tura'aka
		["Varasha"] = 82050; --Varasha
		["Veloss"] = 75482; --Veloss
		["Razziatrice del Vuoto Urnae"] = 85078; --Voidreaver Urnae
		["Veggente del Vuoto Kalurg"] = 83385; --Voidseer Kalurg
		["Vulceros"] = 77926; --Vulceros
		["Vendicatore Errante"] = 77776; --Wandering Vindicator
		["Mago da Guerra Bargol"] = 78733; --Warcaster Bargol
		["Maestro di Guerra Blugthol"] = 79024; --Warmaster Blugthol
		["Matriarca Zannariosa"] = 75434; --Windfang Matriarch
		["Xothear il Distruttore"] = 82922; --Xothear, the Destroyer
		["Yaga la Sfregiata"] = 79145; --Yaga the Scarred
		["Yazheera la Crematrice"] = 77529; --Yazheera the Incinerator
		["Yggdrel"] = 75435; --Yggdrel
		["Zannastrale"] = 71992; --Moonfang
		["Inferno Antico"] = 84875; --Ancient Inferno
		["Sfondamuri"] = 83819; --Brickhouse
		["Demidos"] = 84911; --Demidos
		["Kath il Mistico Oscuro"] = 85771; --Elder Darkweaver Kath
		["Strappabudella"] = 84893; --Goregore
		["Korthall Mangiaspiriti"] = 84110; --Korthall Soulgorger
		["Kurlosh Zannabissale"] = 82988; --Kurlosh Doomfang
		["Dama Demlash"] = 82942; --Lady Demlash
		["Mandragoraster"] = 83683; --Mandragoraster
		["Oraggro"] = 84904; --Oraggro
		["Orumo l'Osservatore"] = 87668; --Orumo the Observer
		["Panthora"] = 83691; --Panthora
		["Camminatore del Terrore Ombrofuoco"] = 82930; --Shadowflame Terrorwalker
		["Titarus"] = 83713; --Titarus
		["Vigilante Paarthos"] = 88436; --Vigilant Paarthos
		["Arcimaga Tekar"] = 88072; --Archmagus Tekar
		["Bombardiere Gu'gok"] = 87597; --Bombardier Gu'gok
		["Formapietra Gor'vosh Catturato"] = 84746; --Captured Gor'vosh Stoneshaper
		["Araldo Maledetto"] = 85767; --Cursed Harbinger
		["Devastatore Maledetto"] = 85763; --Cursed Ravager
		["Grinfiafina Maledetto"] = 85766; --Cursed Sharptalon
		["Gibblette il Codardo"] = 87352; --Gibblette the Cowardly
		["Gibby"] = 87362; --Gibby
		["Gug'tol"] = 83019; --Gug'tol
		["Calaverna"] = 87348; --Hoarfrost
		["Avanguardia della Legione"] = 88494; --Legion Vanguard
		["Sergente Capo Milgra"] = 85001; --Master Sergeant Milgra
		["Moltnoma"] = 82614; --Moltnoma
		["Madre dei Goren"] = 87351; --Mother of Goren
		["Quartiermastro Hershak"] = 84925; --Quartermaster Hershak
		["Oratore dell'Ombra Niir"] = 85029; --Shadowspeaker Niir
		["Zannadura il Mangiacorpi"] = 82617; --Slogtusk the Corpse-Eater
		["Figlio di Goramal"] = 82620; --Son of Goramal
		["Vincolatrice d'Anime Naylana"] = 88083; --Soulbinder Naylana
		["Stratega Ankor"] = 88071; --Strategist Ankor
		["Verme d'Ossa"] = 78265; --The Bone Crawler
		["Maestro di Spade Ro'gor"] = 86579; --Blademaster Ro'gor
		["Disertore Dazgo"] = 86566; --Defector Dazgo
		["Durp l'Odiato"] = 86571; --Durp the Hated
		["Gorivax"] = 82536; --Gorivax
		["Horgg"] = 86577; --Horgg
		["Inventore Blammo"] = 86574; --Inventor Blammo
		["Madgard lo Squilibrato"] = 86562; --Maniacal Madgard
		["Morgo Kain"] = 86582; --Morgo Kain
		["Lanticora"] = 77081; --The Lanticore
		["Valkor"] = 87357; --Valkor
		["Vrok l'Antico"] = 87356; --Vrok the Ancient
		["Signore della Guerra Noktyn"] = 82883; --Warlord Noktyn
		["Ak'ox la Sterminatrice"] = 84378; --Ak'ox the Slaughterer
		["Alkali"] = 86268; --Alkali
		["Slavina"] = 85568; --Avalanche
		["Spaccaossa"] = 87837; --Bonebreaker
		["Potere Ardente"] = 84926; --Burning Power
		["Durg Spaccavertebre"] = 87788; --Durg Spinecrusher
		["Gigante Insaziabile"] = 87019; --Gluttonous Giant
		["Torcifauci"] = 78269; --Gnarljaw
		["Gorg'ak il Trincalava"] = 72364; --Gorg'ak the Lava Guzzler
		["Gortag Presaferrea"] = 87344; --Gortag Steelgrip
		["Re delle Melme"] = 78260; --King Slime
		["Krahl Occhiotetro"] = 87239; --Krahl Deadeye
		["Divoratore Balzante"] = 84465; --Leaping Gorger
		["Malgosh Curaombra"] = 85451; --Malgosh Shadowkeeper
		["Meccanofurfante"] = 87026; --Mecha Plunderer
		["Mogamago"] = 88586; --Mogamago
		["Ser Chelotto Sr."] = 84435; --Mr. Pinchy Sr.
		["Nagidna"] = 85555; --Nagidna
		["Colosso dell'Ombra"] = 87027; --Shadow Hulk
		["Melma Viscida"] = 84854; --Slippery Slime
		["Zannargentea"] = 85837; --Slivermaw
		["Torcispiriti Torek"] = 85026; --Soul-Twister Torek
		["Ug'lok il Gelido"] = 79104; --Ug'lok the Frozen
		["Soldato Avvolto dalla Tela"] = 84196; --Web-wrapped Soldier
		["Aogexon"] = 86774; --Aogexon
		["Basten"] = 86257; --Basten
		["Bergruu"] = 86732; --Bergruu
		["Borrok il Divoratore"] = 72156; --Borrok the Devourer
		["Dekorhan"] = 86743; --Dekorhan
		["Echidna"] = 80372; --Echidna
		["Gagrog il Brutale"] = 86771; --Gagrog the Brutal
		["Keravnos"] = 80398; --Keravnos
		["Krud lo Svisceratore"] = 88210; --Krud the Eviscerator
		["Lernaea"] = 80370; --Lernaea
		["Mu'gra"] = 87666; --Mu'gra
		["Nultra"] = 86258; --Nultra
		["Sicario della Fossa"] = 87846; --Pit Slayer
		["Thek'talon"] = 86750; --Thek'talon
		["Tifone"] = 80371; --Typhon
		["Valstil"] = 86259; --Valstil
		["Venolasix"] = 86266; --Venolasix
		["Vilartiglio"] = 88951; --Vileclaw
		["Xelganak"] = 86835; --Xelganak
		["Capitano Barbaferro"] = 79725; --Captain Ironbeard
		["Gaz'orda"] = 80122; --Gaz'orda
		["Prole Fatua"] = 83401; --Netherspawn
		["Ru'klaa"] = 83526; --Ru'klaa
		["Invocatore del Vento Korast"] = 83428; --Windcaller Korast
		["Berserk Serie T-300 Mark II"] = 82826; --Berserk T-300 Series Mark II
		["Esploratore Nozzand"] = 82486; --Explorer Nozzand
		["Fiorletale"] = 83509; --Gorepetal
		["Tritaghiaia"] = 84263; --Graveltooth
		["Esploratore Pokhar"] = 83634; --Scout Pokhar
		["Occhiocupo"] = 86978; --Gaze
		["Mangiapinne"] = 84951; --Gobblefin
		["Grrbrrgle"] = 85572; --Grrbrrgle
		["Aarko"] = 77664; --Aarko
		["Eco di Murmur"] = 77828; --Echo of Murmur
		["Eco di Murmur"] = 77795; --Echo of Murmur
		["Shirzir"] = 79543; --Shirzir
		["Taladorantola"] = 77634; --Taladorantula
		["Veggente del Profondo Mantorosso"] = 80524; --Underseer Bloodmane
		["Rolkor"] = 85264; --Rolkor
		["Sylldross"] = 86410; --Sylldross
		["Regina dell'Alveare Skrikka"] = 83522; --Hive Queen Skrikka
		["Madre della Stirpe Reeg'ak"] = 74613; --Broodmother Reeg'ak
		["Spaccagiganti"] = 77519; --Giantbane
		["Sneevel"] = 86689; --Sneevel
		["Stompalupagus"] = 86520; --Stompalupagus
		["Berthora"] = 85907; --Berthora
		["Riptar"] = 85970; --Riptar
		["Ipnorospo"] = 79524; --Hypnocroak
		["Zoccoloduro"] = 72606; --Rockhoof
		["Ombravenefica"] = 75492; --Venomshade
		["Nakk il Tuonatore"] = 50990; --Nakk the Thunderer
		["Gorok"] = 50992; --Gorok
		["Luk'hok"] = 50981; --Luk'hok
		["Pugnograve"] = 50985; --Poundfist
		["Pellebraga"] = 51015; --Silthide
		["Calcavie"] = 50883; --Pathrunner
		["Nok-Karosh"] = 81001; --Nok-Karosh
		
		-- Rares Draenor 6.2
		["Argosh il Demolitore"] = 91871; --Argosh the Destroyer
		["Belgork"] = 92552; --Belgork
		["Bilkor il Lanciatore"] = 90884; --Bilkor the Thrower
		["Orrore dei Guerci Insanguinati"] = 92657; --Bleeding Hollow Horror
		["Cacciatore del Sangue Zulk"] = 90936; --Bloodhunter Zulk
		["Signore della Progenie Ixkor"] = 92429; --Broodlord Ixkor
		["Capitano Grok'mar"] = 93264; --Captain Grok'mar
		["Capitano Barbaferro"] = 93076; --Captain Ironbeard
		["Ceraxas"] = 90434; --Ceraxas
		["Cindral il Fuocobrado"] = 90519; --Cindral the Wildfire
		["Evocatrice Oscura Rendkra"] = 90081; --Dark Summoner Rendkra
		["Dorg il Sanguinario"] = 90887; --Dorg the Bloody
		["Driss Vile"] = 93028; --Driss Vile
		["Drivnul"] = 90888; --Drivnul
		["Esecutore Riloth"] = 91727; --Executor Riloth
		["Vilfossa"] = 93168; --Felbore
		["Vilfabbro Damorka"] = 92647; --Felsmith Damorka
		["Vilscintilla"] = 91098; --Felspark
		["Squartatenebra"] = 92508; --Gloomtalon
		["Gorabosh"] = 92941; --Gorabosh
		["Gran Stregone Malfatuo"] = 91695; --Grand Warlock Nethekurse
		["Grannok"] = 93057; --Grannok
		["Grobthok Spezzateschi"] = 90089; --Grobthok Skullbreaker
		["Maestro del Porto Korak"] = 90094; --Harbormaster Korak
		["Gran Sacerdote Ikzan"] = 90281; --High Priest Ikzan
		["Gran Sacerdote Ikzan"] = 90777; --High Priest Ikzan
		["Maestra degli Imp Valessa"] = 90429; --Imp-Master Valessa
		["Capitano di Ferro Argha"] = 90087; --Iron Captain Argha
		["Jax'zor"] = 90437; --Jax'zor
		["Krell il Sereno"] = 92517; --Krell the Serene
		["Kris'kar l'Irredento"] = 93279; --Kris'kar the Unredeemed
		["Dama Oran"] = 90438; --Lady Oran
		["Magwia"] = 93002; --Magwia
		["Signora Thavra"] = 90442; --Mistress Thavra
		["Ormak Dardorosso"] = 90088; --Ormak Bloodbolt
		["Supremo Ma'gruth"] = 92411; --Overlord Ma'gruth
		["Signora del Dolore Selora"] = 92274; --Painmistress Selora
		["Signore delle Spore Wakkawam"] = 91374; --Podlord Wakkawam
		["Putre'thar"] = 91009; --Putre'thar
		["Rasthe"] = 90782; --Rasthe
		["Relgor"] = 92197; --Relgor
		["Resti della Luna di Sangue"] = 91227; --Remnant of the Blood Moon
		["Rendrak"] = 92627; --Rendrak
		["Rogond il Braccatore"] = 90885; --Rogond the Tracker
		["Rukmaz"] = 94113; --Rukmaz
		["Sergente Mor'grak"] = 90024; --Sergeant Mor'grak
		["Falciaombre"] = 93236; --Shadowthrash
		["Squartaspiriti"] = 92495; --Soulslicer
		["Grugnacciaio"] = 92887; --Steelsnout
		["Sylissa"] = 92606; --Sylissa
		["Szirek il Contorto"] = 93001; --Szirek the Twisted
		["Artiglionero"] = 92465; --The Blackfang
		["Malartiglio"] = 92694; --The Goreclaw
		["Maestro dei Segugi"] = 92977; --The Iron Houndmaster
		["Infestatore della Notte"] = 92645; --The Night Haunter
		["Infestatore della Notte"] = 92636; --The Night Haunter
		["Tho'gar Pugnotruce"] = 91243; --Tho'gar Gorefist
		["Thromma lo Squartaviscere"] = 92574; --Thromma the Gutslicer
		["Varyx il Dannato"] = 92451; --Varyx the Damned
		["Xanzith l'Eterno"] = 92408; --Xanzith the Everlasting
		["Zeter'el"] = 91087; --Zeter'el
		["Zoug il Pesante"] = 90122; --Zoug the Heavy
		["Ramovile"] = 91093; --Bramblefell
		["Comandante Krag'goth"] = 91232; --Commander Krag'goth
		["Comandante Org'mok"] = 89675; --Commander Org'mok
		["Graffiamorte"] = 95053; --Deathtalon
		["Rovina Cingolata"] = 95056; --Doomroller
		["Glub'glok"] = 93125; --Glub'glok
		["Pugnocupo"] = 95044; --Terrorfist
		["Vendetta"] = 95054; --Vengeance
		["Dragonlian"] = 91921; --Wyrmple
		["Xemirkol"] = 96235; --Xemirkol
		
		-- Rares Draenor 6.2.1
		["Guk"] = 98200; --Guk
		["Pugg"] = 98199; --Pugg
		["Rukdug"] = 98198; --Rukdug
		["Drakum"] = 98283; --Drakum
		["Gondar"] = 98284; --Gondar
		["Grabb"] = 98285; --Smashum Grabb
		["Vilsovrintendente Granfango"] = 98408; --Fel Overseer Mudlump
		["Aracnis"] = 96323; --Arachnis
		["Eraakis"] = 97209; --Eraakis
		
		-- Rares Legion
		["Drugon il Sangue Gelido"] = 110378; --Drugon the Frostblood
		["Mangiachiglie"] = 99929; --Flotsam
		["Humongris"] = 108879; --Humongris
		["Nithogg"] = 107544; --Nithogg
		["Shar'thos"] = 108678; --Shar'thos
		["Arnie \"Colpocerto\""] = 100230; --"Sure-Shot" Arnie
		["Abesha"] = 97348; --Abesha
		["Achronos"] = 112705; --Achronos
		["Aegir Sfondaonde"] = 108885; --Aegir Wavecrusher
		["Ala'washte"] = 104481; --Ala'washte
		["Alluvanon"] = 107960; --Alluvanon
		["Alteria"] = 104521; --Alteria
		["Ambasciatore D'vwinn"] = 111649; --Ambassador D'vwinn
		["Aggressore Zannalama"] = 92611; --Ambusher Daggerfang
		["Anax"] = 111197; --Anax
		["Aodh Avvizzapetali"] = 110346; --Aodh Witherpetal
		["Speziale Faldren"] = 110870; --Apothecary Faldren
		["Speziale Perez"] = 92634; --Apothecary Perez
		["Inseguitore Arcano"] = 90173; --Arcana Stalker
		["Arcanista Lylandre"] = 110656; --Arcanist Lylandre
		["Arcanista Shal'iman"] = 107657; --Arcanist Shal'iman
		["Arcanor Prime"] = 109641; --Arcanor Prime
		["Arcavellus"] = 90244; --Arcavellus
		["Arru"] = 97220; --Arru
		["Arthfael"] = 99802; --Arthfael
		["Arthfael"] = 103801; --Arthfael
		["Artigiano Lothaire"] = 106351; --Artificer Lothaire
		["Assassino Huwe"] = 92633; --Assassin Huwe
		["Assistente Esiel"] = 112758; --Auditor Esiel
		["Az'jatar"] = 112759; --Az'jatar
		["Pancettolisco"] = 103787; --Baconlisk
		["Bahagar"] = 110562; --Bahagar
		["Barax il Mazzuolatore"] = 97637; --Barax the Mauler
		["Sabbiafina"] = 91187; --Beacher
		["Bestrix"] = 111454; --Bestrix
		["Bavaviscida"] = 107327; --Bilebrain
		["Ciclonicus"] = 91874; --Bladesquall
		["Bramasangue Alfa"] = 92599; --Bloodstalker Alpha
		["Corvo Insanguinato"] = 98361; --Bloody Raven
		["Bodash l'Incettatore"] = 98299; --Bodash the Hoarder
		["Schiantamassi"] = 98178; --Boulderfall
		["Scagliamassi l'Eroso"] = 109113; --Boulderfall, the Eroded
		["Rissgoth"] = 107127; --Brawlgoth
		["Barbabrina il Risorto"] = 106863; --Brinebeard the Risen
		["Mazzirsuta"] = 97449; --Bristlemaul
		["Brogozog"] = 91100; --Brogozog
		["Brogrul il Possente"] = 94877; --Brogrul the Mighty
		["Madre della Stirpe Lizax"] = 107105; --Broodmother Lizax
		["Madre della Stirpe Shu'malis"] = 105632; --Broodmother Shu'malis
		["Buttafuori"] = 102863; --Bruiser
		["Bulvinkel"] = 111463; --Bulvinkel
		["Cadraeus"] = 110726; --Cadraeus
		["Cailyn Fatocupo"] = 91289; --Cailyn Paledoom
		["Capitano Brvet"] = 92685; --Captain Brvet
		["Capitano Dargun"] = 109163; --Captain Dargun
		["Capitano Volo'ren"] = 89846; --Captain Volo'ren
		["Campionessa Elodie"] = 92604; --Champion Elodie
		["Piumacinerea"] = 101596; --Charfeather
		["Capo Brinamara"] = 106990; --Chief Bitterbrine
		["Capo Tesoriere Jabrill"] = 109677; --Chief Treasurer Jabrill
		["Cinerala"] = 111674; --Cinderwing
		["Colerian"] = 104698; --Colerian
		["Colerian"] = 104519; --Colerian
		["Comandante Soraax"] = 107266; --Commander Soraax
		["Cora'kar"] = 100864; --Cora'kar
		["Germoglio Brillante"] = 93778; --Coruscating Bloom
		["Conte Nefarius"] = 97058; --Count Nefarious
		["Coura, Maestra dell'Arcano"] = 108255; --Coura, Mistress of Arcana
		["Cavalcagranchi Grmlrml"] = 97933; --Crab Rider Grmlrml
		["Crawshuk l'Affamato"] = 97345; --Crawshuk the Hungry
		["Brillabarba"] = 90050; --Crystalbeard
		["Cirillina"] = 105619; --Cyrilline
		["Pungibecco"] = 90057; --Daggerbeak
		["Daniel \"l'Esplosivo\" Vorick"] = 94313; --Daniel "Boomer" Vorick
		["Dargok Tuonrovina"] = 100231; --Dargok Thunderuin
		["Guardaboschi Oscura Jess"] = 92631; --Dark Ranger Jess
		["Paura Più Oscura"] = 92205; --Darkest Fear
		["Tormentatore Cuortruce"] = 107924; --Darkfiend Tormentor
		["Nerful"] = 109501; --Darkful
		["Ombranera"] = 92965; --Darkshade
		["Guardiamorte Adams"] = 92626; --Deathguard Adams
		["Graffiofondo"] = 109702; --Deepclaw
		["Defilia"] = 104513; --Defilia
		["Degren"] = 111651; --Degren
		["Madre dell'Antro Ylva"] = 108790; --Den Mother Ylva
		["Cercasole Contorto"] = 112637; --Devious Sunrunner
		["Oscurità Divorante"] = 100495; --Devouring Darkness
		["Asprazampa"] = 93088; --Direclaw
		["Signore della Rovina Kazrok"] = 91579; --Doomlord Kazrok
		["Dorbash il Fracassatore"] = 109727; --Dorbash the Smasher
		["Capitano del Terrore Thedon"] = 108543; --Dread Captain Thedon
		["Corsaro del Terrore"] = 108541; --Dread Corsair
		["Nave Fantasma Krazatoa"] = 108531; --Dread Ship Krazatoa
		["Calcaterrore Cortis"] = 94347; --Dread-Rider Cortis
		["Malbrago"] = 97517; --Dreadbog
		["Durguth"] = 96072; --Durguth
		["Ealdis"] = 110367; --Ealdis
		["Earlnoc lo Spezzabestie"] = 96647; --Earlnoc the Beastbreaker
		["Egyl il Coriaceo"] = 98188; --Egyl the Enduring
		["Squartaelfi"] = 99792; --Elfbane
		["Servo della Terra Infuriato"] = 93372; --Enraged Earthservant
		["Ettin"] = 109728; --Ettin
		["Fathnyr"] = 91803; --Fathnyr
		["Fathnyr"] = 98225; --Fathnyr
		["Alavile"] = 105938; --Felwing
		["Fenri"] = 92040; --Fenri
		["Fenri"] = 98276; --Fenri
		["Fjordun"] = 109584; --Fjordun
		["Fjorlag, il Gelo della Tomba"] = 108827; --Fjorlag, the Grave's Chill
		["Scagliafiamma"] = 97793; --Flamescale
		["Flog il Mangiacapitani"] = 89884; --Flog the Captain-Eater
		["Scheggia Gelida"] = 101649; --Frostshard
		["Furia"] = 109729; --Fury
		["Garvrulg"] = 99610; --Garvrulg
		["Gathenak il Plagiatore"] = 93679; --Gathenak the Subjugator
		["Generale Volroth"] = 97370; --General Volroth
		["Glimar Pugnoferreo"] = 91529; --Glimar Ironfist
		["Globulus"] = 95988; --Globulus
		["Golza Pinnaferrea"] = 89816; --Golza the Iron Fin
		["Gom Crabbar"] = 101411; --Gom Crabbar
		["Beccosanguigno"] = 92117; --Gorebeak
		["Gorgroth"] = 110832; --Gorgroth
		["Grelda la Strega"] = 95123; --Grelda the Hag
		["Marciotetro"] = 107595; --Grimrot
		["Marciotetro"] = 107596; --Grimrot
		["Campione Totem Truce"] = 112708; --Grimtotem Champion
		["Grrvrgull il Conquistatore"] = 98503; --Grrvrgull the Conqueror
		["Guardiano Thor'el"] = 110944; --Guardian Thor'el
		["Gurbog il Picchiatore"] = 96590; --Gurbog da Basher
		["Halfdan"] = 108823; --Halfdan
		["Hannval il Macellaio"] = 107926; --Hannval the Butcher
		["Har'kess l'Insaziabile"] = 103214; --Har'kess the Insatiable
		["Araldo delle Urla"] = 110361; --Harbinger of Screams
		["Hartli la Ladruncola"] = 97326; --Hartli the Snatcher
		["Hati"] = 103154; --Hati
		["Incursore Helmunn"] = 92703; --Helmouth Raider
		["Incursore Helmunn"] = 92682; --Helmouth Raider
		["Hertha Grimdottir"] = 103223; --Hertha Grimdottir
		["Regina dell'Alveare Zsala"] = 91649; --Hivequeen Zsala
		["Gancio"] = 92590; --Hook
		["Horux"] = 107169; --Horux
		["Maestro dei Segugi Ely"] = 92951; --Houndmaster Ely
		["Maestro dei Segugi Stroxis"] = 107136; --Houndmaster Stroxis
		["Huk'roth il Maestro della Caccia"] = 110486; --Huk'roth the Huntmaster
		["Cacciatrice Estrid"] = 108822; --Huntress Estrid
		["Idrannon"] = 100067; --Hydrannon
		["Immagine di Ursoc"] = 92199; --Image of Ursoc
		["Immagine di Ursol"] = 92200; --Image of Ursol
		["Orrore Immaginato"] = 92189; --Imagined Horror
		["Immolian"] = 109630; --Immolian
		["Signore Infernale"] = 90803; --Infernal Lord
		["Inquisitore Ernstenbok"] = 90139; --Inquisitor Ernstenbok
		["Inquisitore Tivos"] = 107269; --Inquisitor Tivos
		["Inquisitore Volitix"] = 106532; --Inquisitor Volitix
		["Divoratore Insaziabile"] = 93993; --Insatiable Gorger
		["Ramoferreo"] = 93030; --Ironbranch
		["Isel il Martello"] = 94413; --Isel the Hammer
		["Isel il Martello"] = 109957; --Isel the Hammer
		["Sentinella d'Avorio"] = 92751; --Ivory Sentinel
		["Jade Lidoscuro"] = 103975; --Jade Darkhaven
		["Jaggen-Ra"] = 101467; --Jaggen-Ra
		["Jak"] = 109500; --Jak
		["Rifiuti Galleggianti"] = 103203; --Jetsam
		["Jinikki il Pungitore"] = 93686; --Jinikki the Puncturer
		["Jubei'thos"] = 96208; --Jubei'thos
		["Kalazzius lo Scaltro"] = 94636; --Kalazzius the Guileful
		["Karthax"] = 111731; --Karthax
		["Kathaw il Selvaggio"] = 109125; --Kathaw the Savage
		["Kethrazor"] = 96997; --Kethrazor
		["Re Forgalash"] = 101063; --King Forgalash
		["Re Morgalash"] = 103827; --King Morgalash
		["Re Voras"] = 97059; --King Voras
		["Kiranys Soffiavespro"] = 94414; --Kiranys Duskwhisper
		["Korda Torros"] = 96212; --Korda Torros
		["Kosumoth il Famelico"] = 111573; --Kosumoth the Hungering
		["Kottr Vondyr"] = 98421; --Kottr Vondyr
		["Kraxa"] = 103271; --Kraxa
		["Krol la Lama"] = 96210; --Krol the Blade
		["Kudzilla"] = 99362; --Kudzilla
		["Dama Rivantas"] = 106526; --Lady Rivantas
		["Lagertha"] = 109015; --Lagertha
		["Tenente Strathmar"] = 102303; --Lieutenant Strathmar
		["Lilin il Vorace"] = 100516; --Lilin the Ravenous
		["Ippogrifo del Passato"] = 108366; --Long-Forgotten Hippogryph
		["Luggut il Mangiauova"] = 98024; --Luggut the Eggeater
		["Lyrath Lunapiuma"] = 98241; --Lyrath Moonfeather
		["Lysanis Animombrosa"] = 111939; --Lysanis Shadesoul
		["Lytheron"] = 109692; --Lytheron
		["Henryk il Pazzo"] = 95221; --Mad Henryk
		["Magistro Phaedris"] = 109954; --Magister Phaedris
		["Magistra Vilessa"] = 112757; --Magistrix Vilessa
		["Maia la Bianca"] = 112497; --Maia the White
		["Grancorno Maestoso"] = 96410; --Majestic Elderhorn
		["Mal'dreth il Corruttore"] = 110024; --Mal'Dreth the Corruptor
		["Malisandra"] = 109281; --Malisandra
		["Mar'tura"] = 112802; --Mar'tura
		["Marblub il Colossale"] = 109653; --Marblub the Massive
		["Matrona Hagatha"] = 111329; --Matron Hagatha
		["Mawat'aki"] = 104517; --Mawat'aki
		["Mellok, Figlio di Torok"] = 96621; --Mellok, Son of Torok
		["Miasu"] = 111653; --Miasu
		["Ratto della Piaga Mostruoso"] = 111055; --Monstrous Plague Rat
		["Mordvigbjorn"] = 93371; --Mordvigbjorn
		["Mortiferus"] = 93622; --Mortiferous
		["Madre Chelona"] = 91780; --Mother Clacker
		["Mrrgrl il Razziatore delle Maree"] = 89865; --Mrrgrl the Tide Reaver
		["Mrrklr"] = 98311; --Mrrklr
		["Mynta Strillartigli"] = 97593; --Mynta Talonscreech
		["Myonix"] = 110340; --Myonix
		["Mythana"] = 101641; --Mythana
		["P.A.T.Z."] = 107477; --N.U.T.Z.
		["Necromagus Toldrethar"] = 108016; --Necromagus Toldrethar
		["Cristallo dell'Incubo"] = 110451; --Nightmare Crystal
		["Guardiano dell'Incubo"] = 106165; --Nightmare WardenNOT SPAWNED
		["Nithogg"] = 107023; --Nithogg
		["Normantis il Deposto"] = 90248; --Normantis the Deposed
		["Normantis il Deposto"] = 90217; --Normantis the Deposed
		["Normantis il Deposto"] = 90253; --Normantis the Deposed
		["Notgarn"] = 105657; --Notgarn
		["Nylaathria la Dimenticata"] = 109990; --Nylaathria the Forgotten
		["Oglok il Furioso"] = 105899; --Oglok the Furious
		["Vecchio Eary"] = 108715; --Ol' Eary
		["Vecchio Muddle"] = 107617; --Ol' Muddle
		["Olokk lo Spezzanavi"] = 104484; --Olokk the Shipbreaker
		["Oreth il Vile"] = 110577; --Oreth the Vile
		["Ormagrogg"] = 104524; --Ormagrogg
		["Oubdob il Fracassatore"] = 95204; --Oubdob da Smasher
		["Sovrintendente Brutarg"] = 97057; --Overseer Brutarg
		["Terra Pacifica"] = 99886; --Pacified Earth
		["Alatorva Pallido"] = 110364; --Pale Dreadwing
		["Pashya"] = 113694; --Pashya
		["Perrexx"] = 95318; --Perrexx
		["Serrapinze"] = 107846; --Pinchshank
		["Faucinfette"] = 103045; --Plaguemaw
		["Inquinus il Fetido"] = 94485; --Pollous the Fetid
		["Maestro delle Polveri Maclin"] = 108010; --Powdermaster Maclin
		["Signore del Branco Meowl"] = 90901; --Pridelord Meowl
		["Sacerdotessa Liza"] = 92613; --Priestess Liza
		["Puck"] = 100302; --Puck
		["Quin'el, Maestra dei Ghiacci"] = 108256; --Quin'el, Master of Chillwind
		["Rabxach"] = 110342; --Rabxach
		["Marciume della Rabbia"] = 101660; --Rage Rot
		["Faucirabbiose"] = 109504; --Ragemaw
		["Terra Furente"] = 99846; --Raging Earth
		["Ragoul"] = 103199; --Ragoul
		["Ram'pag"] = 97102; --Ram'Pag
		["Mandragora Sfrenata"] = 92140; --Rampant Mandragora
		["Randril"] = 111007; --Randril
		["Rauren"] = 105547; --Rauren
		["Ravyn-Drath"] = 89016; --Ravyn-Drath
		["Signore dei Coralli Raj'his"] = 103575; --Reef Lord Raj'his
		["Rok'nash"] = 103183; --Rok'nash
		["Occhiomarcio"] = 110363; --Roteye
		["Rulf Spezzaossa"] = 109317; --Rulf Bonesnapper
		["Veggente delle Rune Sigvid"] = 109318; --Runeseer Sigvid
		["Ryael Vagasoli"] = 100232; --Ryael Dawndrifter
		["Saepher"] = 111010; --Saepher
		["Saepher"] = 111069; --Saepher
		["Incubo del Marinaio"] = 100184; --Sailor's Nightmare
		["Sanaar"] = 105739; --Sanaar
		["Maestro della Falce Cil'raman"] = 105728; --Scythemaster Cil'raman
		["Re del Mare Tidross"] = 111434; --Sea King Tidross
		["Seersei"] = 92180; --Seersei
		["Sekhan"] = 101077; --Sekhan
		["Selenyi"] = 104522; --Selenyi
		["Selia, Maestra della Pira"] = 108251; --Selia, Master of Balefire
		["Piumanotte"] = 103841; --Shadowquill
		["Shal'an"] = 109054; --Shal'an
		["Shalas'aman"] = 104523; --Shalas'aman
		["Shara Fiato Vile"] = 97093; --Shara Felbreath
		["Gusciofauci"] = 91788; --Shellmaw
		["Cacciamanti"] = 103605; --Shroudseeker
		["Ombra Cacciamanti"] = 108794; --Shroudseeker's Shadow
		["Shyama il Terrore"] = 92090; --Shyama the Dreaded
		["Maestro d'Assedio Aedrin"] = 110438; --Siegemaster Aedrin
		["Serpente Argenteo"] = 111052; --Silver Serpent
		["Calcafaglie Sinistro"] = 112636; --Sinister Leyrunner
		["Budella"] = 92591; --Sinker
		["Skul'vrax"] = 93654; --Skul'vrax
		["Teschiopileo"] = 95872; --Skullhat
		["Faccialurida"] = 111021; --Sludge Face
		["Dormigliorso"] = 98890; --Slumber
		["Figlio di Spaccacorna"] = 92725; --Son of Goredome
		["Sorallus"] = 112756; --Sorallus
		["Vincolatrice d'Anime Halldora"] = 109195; --Soulbinder Halldora
		["Demonio dell'Anima Tagerma"] = 108494; --Soulfiend Tagerma
		["Logoranime"] = 97630; --Soulthirster
		["Cervo Stellare"] = 107487; --Starbuck
		["Piumatonante"] = 109594; --Stormfeather
		["Artigliotonante"] = 109994; --Stormtalon
		["Matriarca Alatempestosa"] = 91795; --Stormwing Matriarch
		["Brezzasolare"] = 98309; --Sunbreeze [DO NOT SPAWN]
		["Sifonus"] = 90505; --Syphonus
		["Mantocorallino Addestrato"] = 97928; --Tamed Coralback
		["Tarben"] = 98268; --Tarben
		["Taurson"] = 97653; --Taurson
		["Tenpak Totem Fiammante"] = 97203; --Tenpak Flametotem
		["Thane Irglov lo Spietato"] = 91892; --Thane Irglov the Merciless
		["Muscoli"] = 108136; --The Muscle
		["Re Innominato"] = 92763; --The Nameless King
		["Oracolo"] = 89850; --The Oracle
		["Re dei Ratti"] = 111057; --The Rat King
		["La Sussurrante"] = 109620; --The Whisperer
		["Theryssia"] = 92423; --Theryssia
		["Thondrax"] = 93205; --Thondrax
		["Behemoth delle Maree"] = 91114; --Tide Behemoth
		["Behemoth delle Maree"] = 91115; --Tide Behemoth
		["Behemoth delle Maree"] = 91113; --Tide Behemoth
		["Sfregiamaree"] = 110824; --Tideclaw
		["Tiptog il Perduto"] = 93166; --Tiptog the Lost
		["Torrentius"] = 102064; --Torrentius
		["Braccatore Jack"] = 92609; --Tracker Jack
		["Demone del Tesoro"] = 89407; --Treasure Demon
		["Fremilama"] = 95440; --Tremblade
		["Rogna"] = 91663; --Trubble
		["Tartaruga"] = 108881; --Turtle
		["Ultanok"] = 103247; --Ultanok
		["Capo dei Minigrell"] = 109708; --Undergrell Ringleader
		["Urgev lo Scuoiatore"] = 93401; --Urgev the Flayer
		["Valakar l'Assetato"] = 109575; --Valakar the Thirsty
		["Valitos"] = 109606; --Valitos
		["Valiyaka l'Araldo della Tempesta"] = 89650; --Valiyaka the Stormbringer
		["Squalo Balena Malvagio"] = 99899; --Vicious Whale Shark
		["Vinymangy"] = 91640; --Vinyeaty
		["Vinyeti"] = 91661; --Vinyeti
		["Vinyeti"] = 89906; --Vinyeti
		["Vis'ileth"] = 105496; --Vis'ileth
		["Volshax, lo Spezzavolontà"] = 112760; --Volshax, Breaker of Will
		["Vortax"] = 107113; --Vorthax
		["Spirito della Dama della Terra Vrykul"] = 100224; --Vrykul Earthmaiden Spirit
		["Spirito del Forgiaterra Vrykul"] = 100223; --Vrykul Earthshaper Spirit
		["Araldo della Guerra Mox'na"] = 90164; --Warbringer Mox'na
		["Signore della Guerra Vatilash"] = 102092; --Warlord Vatilash
		["Conigliobot Armato"] = 107431; --Weaponized Rabbot
		["Orso Ben Nutrito"] = 103785; --Well-Fed Bear
		["Tifone Acquebianche"] = 92152; --Whitewater Typhoon
		["Taumaturgo Grgl-Brgl"] = 109648; --Witchdoctor Grgl-Brgl
		["Spettrartiglio"] = 97504; --Wraithtalon
		["Signore dell'Ira Lekos"] = 97069; --Wrath-Lord Lekos
		["Xaander"] = 109498; --Xaander
		["Xavrix"] = 104831; --Xavrix
		["Zenobia"] = 100303; --Zenobia
		["Zorux"] = 107170; --Zorux		
		["Mago Frenetico"] = 97587; --Crazed Mage
		["Scheggia"] = 97380; --Splint
		["Farabutto Ladruncolo"] = 97390; --Thieving Scoundrel
		["Xullorax"] = 97388; --Xullorax
		["Segacedi"] = 97384; --Segacedi
		["Uovo Marcio"] = 97589; --Rotten Egg
		["Filtratore di Mana"] = 97387; --Mana Seeper
		["Screek"] = 97381; --Screek
	
		-- Rares Legion 7.1.0
		["Ariadne"] = 115847; --Ariadne
		["Assistente Custode"] = 116185; --Attendant Keeper
		["Sferzarovina"] = 115853; --Doomlash
		["Cortigiano Esotico"] = 116230; --Exotic Concubine
		["Maestro di Volo Volnath"] = 116004; --Flightmaster Volnath
		["Kar'zun"] = 116008; --Kar'zun
		["Divinatore del Pozzo Oscuro"] = 116395; --Nightwell Diviner
		["Alanube Regale"] = 116036; --Regal Cloudwing
		["Alanube Regale"] = 116059; --Regal Cloudwing
		["Re Bovino"] = 116034; --The Cow King
		["Torm il Bruto"] = 115914; --Torm the Brute
		["Cortigiano della Torre"] = 116158; --Tower Concubine
		["Goblin Predone"] = 116652; --Treasure Goblin
		["Cortigiano Scaltro"] = 116159; --Wily Sycophant
		["Incettatore Drachilingua"] = 89407; --Wrymtongue Hoarder
		["Goblin Predone"] = 116041; --Treasure Goblin
	
		-- Rares Legion 7.1.5
		["Volpe Fulminea"] = 118244; --Lightning Paw
		["Lorthalium"] = 115537; --Lorthalium
		
		-- Rares Legion 7.2.0
		["Apocron"] = 121124; --Apocron
		["Malificus"] = 117303; --Malificus
		["Si'vash"] = 117470; --Si'vash
		["Brace Abissale"] = 116666; --Abyssal Ember
		["An'thyna"] = 120675; --An'thyna
		["Gigante del Mare Infuriato"] = 116657; --Angered Sea Giant
		["Osservatore Anomalo"] = 121092; --Anomalous Observer
		["Aqueux"] = 121016; --Aqueux
		["Cavalier Capitano Bieco"] = 121049; --Baleful Knight-Captain
		["Madre della Stirpe Nix"] = 121029; --Brood Mother Nix
		["Fratello Badatin"] = 121046; --Brother Badatin
		["Brutallus"] = 117239; --Brutallus
		["Spaccaossa Corrotto"] = 116953; --Corrupted Bonebreaker
		["Faucifonde"] = 120022; --Deepmaw
		["Shivarra Delirante"] = 121090; --Demented Shivarra
		["Succube Squilibrata"] = 121073; --Deranged Succubus
		["Araldo della Rovina Zar'thoz"] = 117136; --Doombringer Zar'thoz
		["Annientatore Lamanera"] = 117095; --Dreadblade Annihilator
		["Occhiotorvo"] = 118993; --Dreadeye
		["Oratore del Terrore Serilis"] = 120716; --Dreadspeaker Serilis
		["Dresanoth"] = 120012; --Dresanoth
		["Duca Sithizi"] = 121134; --Duke Sithizi
		["Braceviva"] = 117086; --Emberfire
		["Braciron"] = 116671; --Emberon
		["Erdu'val"] = 120020; --Erdu'val
		["Occhio di Gurgh"] = 116166; --Eye of Gurgh
		["Vilannientatore"] = 120681; --Fel Obliterator
		["Vilportatore Xar'thok"] = 117093; --Felbringer Xar'thok
		["Vilinvocatrice Zelthae"] = 117103; --Felcaller Zelthae
		["Vilsegugio"] = 117342; --Felhound
		["Demonio di Braci Vilfauci"] = 117091; --Felmaw Emberfiend
		["Flllurlokkr"] = 120998; --Flllurlokkr
		["Comandante delle Forze Xillious"] = 120665; --Force-Commander Xillious
		["Guerriero Totem Truce"] = 117493; --Grimtotem Warrior
		["Grossir"] = 121037; --Grossir
		["Harth Spaccapietre"] = 118675; --Harth Stonebrew
		["Illisthyndria"] = 120686; --Illisthyndria
		["Madre degli Imp Bruva"] = 119718; --Imp Mother Bruva
		["Inquisitore Devastagelo"] = 117089; --Inquisitor Chillbane
		["Jorvild il Fidato"] = 115732; --Jorvild the Trusted
		["Algadura"] = 120021; --Kelpfist
		["Dama Eldrathe"] = 121107; --Lady Eldrathe
		["Vilsegugio Brillante"] = 121077; --Lambent Felhunter
		["Larithia"] = 120712; --Larithia
		["Sire Hel'nurath"] = 119629; --Lord Hel'Nurath
		["Guardia Maligna Deforme"] = 121056; --Malformed Terrorguard
		["Malgrazoth"] = 117141; --Malgrazoth
		["Malorus il Custode delle Anime"] = 117094; --Malorus the Soulkeeper
		["Dama Dominix"] = 120717; --Mistress Dominix
		["Bruto Mo'arg"] = 116912; --Mo'arg Brute
		["Mor'tec lo Schiavista d'Anime"] = 116668; --Mor'tec the Soulslaver
		["Maestro delle Pozioni Gloop"] = 117096; --Potionmaster Gloop
		["Raga'yut"] = 120715; --Raga'yut
		["Signore dei Demoni Rovinoso"] = 121108; --Ruinous Overfiend
		["Ryul lo Svanente"] = 120019; --Ryul the Fading
		["Salethan il Calcastirpe"] = 117140; --Salethan the Broodwalker
		["Mona la Seduttrice"] = 117850; --Simone the Seductress
		["Skulguloth"] = 120641; --Skulguloth
		["Albatetra"] = 121112; --Somber Dawn
		["Than'otalion"] = 120583; --Than'otalion
		["Inseguitore del Terrore"] = 120013; --The Dread Stalker
		["Abissale Instabile"] = 121051; --Unstable Abyssal
		["Imp Volubile"] = 121068; --Volatile Imp
		["Wa'glur"] = 120713; --Wa'glur
		["Signore della Guerra Darjah"] = 120003; --Warlord Darjah
		["Signore del Vuoto Deforme"] = 121088; --Warped Voidlord
		["Xorogun il Marchiafuoco"] = 117090; --Xorogun the Flamecarver
		["Zirux"] = 116316; --Zirux
		["Guardiano Dorato"] = 112712; --Gilded Guardian
		
		-- Rares Legion 7.2.5
		["Al'abas"] = 123087; --Al'Abas
		["Sgorgasangue"] = 122524; --Bloodfeast
		["Fendiossa"] = 122521; --Bonesunder
		["Cavaliere del Metal"] = 122899; --Death Metal Knight
		["Dregmar Marchiorunico"] = 122519; --Dregmar Runebrand
		["Pugnogelato"] = 122520; --Icefist
		["Rompighiaccio"] = 122522; --Iceshatter
		["Xavinox"] = 122609; --Xavinox
		
		-- Rares Legion 7.3.0
		["Ammiraglio Rel'var"] = 127090; --Admiral Rel'var
		["Xanarian l'Onnisciente"] = 127096; --All-Seer Xanarian
		["Ataxon"] = 126887; --Ataxon
		["Baruut il Sanguinario"] = 126862; --Baruut the Bloodthirsty
		["Faucimarce"] = 122958; --Blistermaw
		["Alamarcia"] = 124479; --Blisterwing
		["Capitano Faruq"] = 126869; --Captain Faruq
		["Capo Alchimista Munculus"] = 127376; --Chief Alchemist Munculus
		["Comandante Endaxis"] = 124775; --Commander Endaxis
		["Comandante Sathrenael"] = 122912; --Commander Sathrenael
		["Comandante Texlaz"] = 127084; --Commander Texlaz
		["Comandante Vecaya"] = 122911; --Commander Vecaya
		["Comandante Xethgar"] = 126910; --Commander Xethgar
		["Invocatore Oscuro"] = 122457; --Darkcaller
		["Scagliarovina Suprax"] = 127703; --Doomcaster Suprax
		["Araldo della Rovina del Fuoco Eterno"] = 127341; --Everburning Doombringer
		["Carnefice Vaal"] = 124717; --Executioner Vaal
		["Occhio del Torturatore"] = 124684; --Eye of the Torturer
		["Feasel il Ladro di Muffin"] = 126864; --Feasel the Muffin Thief
		["Gar'zoth"] = 122999; --Gar'zoth
		["Araldo del Caos"] = 126896; --Herald of Chaos
		["Invocatore dei Segugi Orox"] = 124412; --Houndcaller Orox
		["Maestro dei Segugi Kerrax"] = 127288; --Houndmaster Kerrax
		["Madre degli Imp Laglath"] = 125820; --Imp Mother Laglath
		["Inquisitore Vethroz"] = 126946; --Inquisitor Vethroz
		["Istruttrice Tarahna"] = 126900; --Instructor Tarahna
		["Campione del Jed'hin Vorusk"] = 126899; --Jed'hin Champion Vorusk
		["Kaara la Pallida"] = 126860; --Kaara the Pale
		["Khazaduum"] = 125824; --Khazaduum
		["Luogotenente Xakaar"] = 126254; --Lieutenant Xakaar
		["Dama Il'thendra"] = 122947; --Mistress Il'thendra
		["Madre Rosula"] = 127705; --Mother Rosula
		["Naroua"] = 126419; --Naroua
		["Sovrintendente Y'beda"] = 124440; --Overseer Y'Beda
		["Sovrintendente Y'morna"] = 125498; --Overseer Y'Morna
		["Sovrintendente Y'sorna"] = 125497; --Overseer Y'Sorna
		["Puscilla"] = 126040; --Puscilla
		["Piromante Volarr"] = 124572; --Pyromancer Volarr
		["Rezira il Veggente"] = 127706; --Rezira the Seer
		["Sabuul"] = 126898; --Sabuul
		["Mago d'Ombra Voruun"] = 122838; --Shadowcaster Voruun
		["Maestro d'Assedio Voraan"] = 120393; --Siegemaster Voraan
		["Sorella Subversia"] = 123464; --Sister Subversia
		["Skreeg il Divoratore"] = 126912; --Skreeg the Devourer
		["Slithon l'Estremo"] = 126913; --Slithon the Last
		["Sorolis lo Sfortunato"] = 126889; --Sorolis the Ill-Fated
		["Curatore di Anime Videx"] = 127704; --Soultender Videx
		["Mostruosità dall'Anima Corrotta"] = 126815; --Soultwisted Monstrosity
		["Comandante di Squadrone Vishax"] = 127700; --Squadron Commander Vishax
		["Talestra la Vile"] = 123689; --Talestra the Vile
		["Sputapece"] = 125479; --Tar Spitter
		["Tereck il Selettore"] = 124804; --Tereck the Selector
		["Divoratore dai Mille Volti"] = 127581; --The Many-Faced Devourer
		["Turek il Lucido"] = 126868; --Turek the Lucid
		["Araldo del Crepuscolo Tharuul"] = 127906; --Twilight-Harbinger Tharuul
		["Tirannosauro Rekt"] = 126691; --Tyrannosaurus Rekt
		["Umbraliss"] = 126885; --Umbraliss
		["Vagath il Tradito"] = 125388; --Vagath the Betrayed
		["Varga"] = 126208; --Varga
		["Ven'orn"] = 126115; --Ven'orn
		["Pinnaceleste Codavenefica"] = 126867; --Venomtail Skyfin
		["Vigilante Kuro"] = 126866; --Vigilant Kuro
		["Vigilante Thanos"] = 126865; --Vigilant Thanos
		["Vixx il Collezionista"] = 127882; --Vixx the Collector
		["Guardiana del Vuoto Valsuran"] = 127300; --Void Warden Valsuran
		["Lama del Vuoto Zedaat"] = 127911; --Void-Blade Zedaat
		["Faucivuote"] = 122456; --Voidmaw
		["Vrax'thul"] = 126199; --Vrax'thul
		["Guardiano Aival"] = 127291; --Watcher Aival
		["Spezzamondi Skuul"] = 127118; --Worldsplitter Skuul
		["Mandriano Kravos"] = 126852; --Wrangler Kravos
		["Signore dell'Ira Yarez"] = 126338; --Wrath-Lord Yarez
		["Zul'tan il Molteplice"] = 126908; --Zul'tan the Numerous
		["Zul'zoloth"] = 124680; --Zul'zoloth
		
		-- Rares Legion 7.3.5
		["Gran Maresciallo Fremilama"] = 133044; --Grand Marshal Tremblade
		["Gran Signore della Guerra Volrath"] = 133043; --High Warlord Volrath
		["Guardiano della Morte d'Ossidiana"] = 125951; --Obsidian Deathwarder
		["Ogmot il Pazzo"] = 132591; --Ogmot the Mad
		["Qroshekx"] = 132578; --Qroshekx
		["Maresciallo dei Cieli Gabriel"] = 133042; --Sky Marshall Gabriel
		["Ssinkrix"] = 132580; --Ssinkrix
		["Xaarshej"] = 132584; --Xaarshej
	}
end