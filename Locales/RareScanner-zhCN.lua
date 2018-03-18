-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "zhCN", false);

if AL then
	AL["ALARM_MESSAGE"] = "一个稀有NPC刚刚出现，检查你的地图!"
	AL["ALARM_SOUND"] = "Warning sound for rare NPCs"
	AL["ALARM_SOUND_DESC"] = "Sound played when a rare NPC shows up in your minimap."
	AL["ALARM_TREASURES_SOUND"] = "Warning sound for events/treasures"
	AL["ALARM_TREASURES_SOUND_DESC"] = "Sound played when a treasure/chest or event shows up in your minimap."
	AL["AUTO_HIDE_BUTTON"] = "自动隐藏按钮与缩影"
	AL["AUTO_HIDE_BUTTON_DESC"] = "在选择的事件过后自动隐藏按钮与缩影 (以秒计)。 如果您选择0秒按钮与缩影不会自动隐藏。"
	AL["CHECK_MAP"] = "检查你的地图!"
	--Translation missing 
	AL["CLASS_HALLS"] = "Class Halls"
	--Translation missing 
	AL["CLEAR_FILTERS_SEARCH"] = "Clear"
	--Translation missing 
	AL["CLEAR_FILTERS_SEARCH_DESC"] = "Resets the form to the initial state"
	AL["CLICK_TARGET"] = "点击将NPC设为目标"
	--Translation missing 
	AL["DISABLE_SEARCHING_RARE_TOOLTIP"] = "Disable alerts for this rare NPC"
	--Translation missing 
	AL["DISABLE_SOUND"] = "Disable audio alerts"
	--Translation missing 
	AL["DISABLE_SOUND_DESC"] = "When this is activated you won't receive audio alerts"
	--Translation missing 
	AL["DISABLED_SEARCHING_RARE"] = "Disabled alerts for this rare NPC: "
	AL["DISPLAY"] = "显示"
	AL["DISPLAY_BUTTON"] = "按钮与缩影显示开关"
	--Translation missing 
	AL["DISPLAY_BUTTON_CONTAINERS"] = "Toggle showing the button for treasures/chests"
	--Translation missing 
	AL["DISPLAY_BUTTON_CONTAINERS_DESC"] = "Toggle showing the button for treasures/chests. It doesn't affect the alarm sound and the chat alerts"
	AL["DISPLAY_BUTTON_DESC"] = "当取消按钮与缩影显示以后不会再次显示。它不影响报警声音和聊天警报。"
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
	AL["DISPLAY_OPTIONS"] = "显示选项"
	--Translation missing 
	AL["DUNGEONS_SCENARIOS"] = "Dungeons/Scenarios"
	AL["ENABLE_SCAN_CONTAINERS"] = "宝藏或宝箱搜寻开关"
	AL["ENABLE_SCAN_CONTAINERS_DESC"] = "启用以后当每次你的小地图上有宝藏或宝箱出现时会有视觉警告与声音提醒"
	AL["ENABLE_SCAN_EVENTS"] = "事件搜寻开关"
	AL["ENABLE_SCAN_EVENTS_DESC"] = "启用以后当每次你的小地图上有事件出现时会有视觉警告与声音提醒"
	AL["ENABLE_SCAN_GARRISON_CHEST"] = "Toggle searching garrison treasure"
	AL["ENABLE_SCAN_GARRISON_CHEST_DESC"] = "When this is activated you will be warned visually and with a sound everytime your garrison chest shows up in your minimap."
	--Translation missing 
	AL["ENABLE_SCAN_IN_INSTANCE"] = "Toggle scanning in instances"
	--Translation missing 
	AL["ENABLE_SCAN_IN_INSTANCE_DESC"] = "When this is activated the addon will work as usual while you are in an instance (dungeon, raid, etc)"
	AL["ENABLE_SCAN_RARES"] = "稀有NPC搜寻开关"
	AL["ENABLE_SCAN_RARES_DESC"] = "启用以后当每次你的小地图上有稀有NPC出现时会有视觉警告与声音提醒"
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
	AL["GENERAL_OPTIONS"] = "一般选项"
	--Translation missing 
	AL["HYPERLINK_MESSAGE"] = "In combat!. Use this link as the LFG button"
	AL["JUST_SPAWNED"] = " 刚刚出现"
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
	AL["NOT_TARGETEABLE"] = "无法设为目标"
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
	AL["SHOW_CHAT_ALERT"] = "聊天警报显示开关"
	AL["SHOW_CHAT_ALERT_DESC"] = "每次当宝藏、宝箱或NPC出现时在聊天中显示一则私人讯息。"
	AL["SOUND"] = "声音"
	AL["SOUND_OPTIONS"] = "声音选项"
	--Translation missing 
	AL["TEST"] = "Launch Test"
	--Translation missing 
	AL["TEST_DESC"] = "Press the button to show an alert example. You can drag and drop the panel to another position where it will be shown from now on."
	AL["TOC_NOTES"] = "小地图扫描器。 当每次稀有NPC、宝藏/宝箱或事件出现在您的小地图上时，使用一个按钮与缩小的模型视觉化提醒您并拨放声音。"
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
	AL["UNKNOWN_TARGET"] = "未知目标"
	--Translation missing 
	AL["ZONES_FILTER"] = "Zone filters"
	--Translation missing 
	AL["ZONES_FILTERS_SEARCH_DESC"] = "Type the name of the zone to filter the list below"
		
	-- CONTINENT names
	AL["ZONES_CONTINENT_LIST"] = {
		[9999] = "Class Halls"; --Class Halls
		[9998] = "暗月岛"; --Darkmoon Island
		[9997] = "Dungeons/Scenarios"; --Dungeons/Scenarios
		[9996] = "Raids"; --Raids
		[9995] = "Unknown"; --Unknown
	}
	
	-- RARE names
	AL["RARE_LIST"] = {
		-- Rares Pandaria
		["奥伊纳克斯"] = 50062; --Aeonaxx
		["伊萨"] = 58778; --Aetha
		["易西斯"] = 50750; --Aethis
		["漫游者阿波尼"] = 50817; --Ahone the Wanderer
		["艾利·天镜"] = 50821; --Ai-Li Skymirror
		["迅云艾然"] = 50822; --Ai-Ran the Shifting Cloud
		["全知者阿塔比姆"] = 70000; --Al'tabim the All-Seeing
		["安卡"] = 54318; --Ankha
		["安塞瑞丝"] = 54338; --Anthriss
		["烈焰祭司阿克鲁斯"] = 73666; --Archiereus of Flame
		["大祭师克拉达"] = 70243; --Archritualist Kelada
		["邪鳞阿尔尼斯"] = 50787; --Arness the Scale
		["碎脊者乌鲁"] = 70001; --Backbreaker Uru
		["屠夫白锦"] = 58949; --Bai-Jin the Butcher
		["班萨罗斯"] = 54320; --Ban'thalos
		["献祭者宝赉"] = 63695; --Baolai the Immolator
		["黑蹄"] = 51059; --Blackhoof
		["血尖"] = 58474; --Bloodtip
		["波罗波斯"] = 50828; --Bonobos
		["波尔金·黑拳"] = 50341; --Borginn Darkfist
		["布佛"] = 72775; --Bufo
		["黑火勇士"] = 73171; --Champion of the Black Flame
		["蛰龙"] = 72045; --Chelon
		["落烬"] = 73175; --Cinderfall
		["柯尼斯水黾"] = 50768; --Cournith Waterstrider
		["裂齿"] = 58768; --Cracklefang
		["噬鹤者"] = 72049; --Cranegnasher
		["破坏者哒克"] = 50334; --Dak the Breaker
		["达兰·碎夜"] = 68318; --Dalan Nightbreaker
		["德丝缇拉克"] = 54322; --Deth'tilac
		["笛沙·菲尔沃顿"] = 68319; --Disha Fearwarden
		["瑟尔林·卡斯迪诺夫教授"] = 59369; --Doctor Theolen Krastinov
		["幽灵船瓦祖维斯号"] = 73281; --Dread Ship Vazuvius
		["翠羽公鹤"] = 73158; --Emerald Gander
		["艾什隆"] = 50772; --Eshelon
		["吞天"] = 73279; --Evermaw
		["费迪南"] = 51078; --Ferdinand
		["感染者弗赖什鲁克"] = 70429; --Flesh'rok the Diseased
		["燧石领主铠兰"] = 73172; --Flintlord Gairan
		["聚焦之眼"] = 70249; --Focused Eye
		["散毒者贾恩"] = 50340; --Gaarn the Toxic
		["裂魂使高珲"] = 62881; --Gaohun the Soul-Severer
		["嘎洛克"] = 50739; --Gar'lok
		["加尼亚"] = 73282; --Garnia
		["铁木贾将军"] = 63101; --General Temuja
		["鬼脚蟹"] = 50051; --Ghostcrawler
		["苟汗"] = 50331; --Go-Kan
		["铁拳苟畅"] = 62880; --Gochao the Ironfist
		["巨灵神拉姆克"] = 69999; --God-Hulk Ramuk
		["苟达"] = 69998; --Goda
		["高戈纳尔"] = 72970; --Golganarr
		["怒壳巨龟"] = 73161; --Great Turtle Furyshell
		["虫群先锋古赤"] = 72909; --Gu'chi the Swarmbringer
		["哈瓦克"] = 50354; --Havak
		["错乱的夺日者构造体"] = 50358; --Haywire Sunreaver Construct
		["火霜"] = 63691; --Huo-Shuang
		["惑龙"] = 73167; --Huolon
		["聪明的伊克伊克"] = 50836; --Ik-Ik the Nimble
		["帝王巨蟒"] = 73163; --Imperial Python
		["铁鬃钢角牛"] = 73160; --Ironfur Steelhorn
		["玉牙页岩蛛"] = 49822; --Jadefang
		["神战士迦库尔"] = 73169; --Jakur of Ordon
		["虬达"] = 50351; --Jonn-Dar
		["卡提尔"] = 50355; --Kah'tir
		["凋零的卡尔提克"] = 50749; --Kal'tik the Blight
		["灵魂窃贼康戈"] = 50349; --Kang the Soul Thief
		["卡尔·好战者"] = 68321; --Kar Warmaker
		["卡卡诺斯"] = 72193; --Karkanos
		["卡尔金"] = 50959; --Karkin
		["卡洛玛"] = 50138; --Karoma
		["黑化者卡尔"] = 50347; --Karr the Darkener
		["柯尔利克斯"] = 54323; --Kirix
		["克纳斯·夜蛮"] = 50338; --Kor'nas Nightsavage
		["考达·多罗斯"] = 50332; --Korda Torros
		["卡兰卡诺"] = 70323; --Krakkanon
		["克拉希斯伊克"] = 50363; --Krax'ik
		["科里充"] = 63978; --Kri'chon
		["“利刃”科罗尔"] = 50356; --Krol the Blade
		["攫天者库莱"] = 69996; --Ku'lai the Skyclaw
		["剪叶者"] = 73277; --Leafmender
		["漫游者李斯伊克"] = 50734; --Lith'ik the Stalker
		["蛮牛隆恩"] = 50333; --Lon the Bull
		["路班"] = 70002; --Lu-Ban
		["马格瑞亚"] = 54319; --Magria
		["纳纳斯少校"] = 50840; --Major Nanners
		["梅薇思·哈姆斯"] = 68317; --Mavis Harms
		["暴怒先生"] = 50823; --Mister Ferocious
		["独眼摩尔多"] = 50806; --Moldo One-Eye
		["莫托尔"] = 70003; --Molthor
		["莫纳拉"] = 70440; --Monara
		["凶暴钳爪蟹"] = 73166; --Monstrous Spineclaw
		["莫戈林·碎牙"] = 50350; --Morgrinn Crackfang
		["穆尔塔"] = 68322; --Muerta
		["穆塔"] = 69664; --Mumta
		["撕裂者纳拉克"] = 50364; --Nal'lak the Ripper
		["纳拉什·沃登提斯"] = 50776; --Nalash Verdantis
		["纳斯拉·斑皮"] = 50811; --Nasra Spothide
		["预言者奈松"] = 50789; --Nessos the Oracle
		["颂风者诺库"] = 70276; --No'ku Stormsayer
		["诺拉克西"] = 50344; --Norlaxx
		["奥米斯·戈林洛克"] = 50805; --Omnis Grinlok
		["崩裂之怒主宰"] = 50085; --Overlord Sunderfury
		["拉克玛亲王"] = 54533; --Prince Lakma
		["布根尼图斯"] = 69997; --Progenitus
		["柯纳思"] = 50352; --Qu'nas
		["浗"] = 58771; --Quid
		["拉沙"] = 70530; --Ra'sha
		["响骨"] = 72048; --Rattleskew
		["石苔"] = 73157; --Rock Moss
		["岩石恐魔"] = 70430; --Rocky Horror
		["鲁恩·灵爪"] = 50816; --Ruun Ghostpaw
		["萨罕·潮猎者"] = 50780; --Sahn Tidehunter
		["萨尔因作战斥候"] = 50783; --Salyin Warscout
		["桑巴斯"] = 50159; --Sambas
		["萨纳克"] = 50782; --Sarnak
		["斯克里奇"] = 50831; --Scritch
		["塞勒纳"] = 50766; --Sele'na
		["暗影主宰塞铎"] = 63240; --Shadowmaster Sydow
		["研磨者斯特里斯"] = 50791; --Siltriss the Sharpener
		["刀疤"] = 50815; --Skarr
		["斯基提克"] = 50733; --Ski'thik
		["掠行之火"] = 54324; --Skitterflame
		["莎利克斯"] = 54321; --Solix
		["斯普鲁克"] = 71864; --Spelurk
		["玉火之灵"] = 72769; --Spirit of Jadefire
		["牢非的灵魂"] = 58817; --Spirit of Lao-Fe
		["斯普林金"] = 50830; --Spriggin
		["斯汀克布莱德"] = 73704; --Stinkbraid
		["苏里克夏"] = 50339; --Sulik'shor
		["邪恶的塔乌斯"] = 50086; --Tarvus the Vile
		["怒嚎"] = 50832; --The Yowler
		["托里可·伊提斯"] = 50388; --Torik-Ethis
		["查沃卡"] = 72808; --Tsavo'ka
		["鬼祟的乌班提"] = 68320; --Ubunti the Shade
		["不眠之眼"] = 70238; --Unblinking Eye
		["烙印者乌都尔"] = 73173; --Urdur the Cauterizer
		["乌戈拉克斯"] = 50359; --Urgolax
		["行者育鲁碧"] = 50808; --Urobi the Walker
		["钳颚"] = 58769; --Vicejaw
		["维拉克西斯"] = 63977; --Vyraxxis
		["战神多坎"] = 70096; --War-God Dokah
		["斥候奥苏"] = 73170; --Watcher Osu
		["维茨格"] = 73293; --Whizzig
		["威利·怀尔德"] = 70126; --Willy Wilder
		["乌麟"] = 63510; --Wulon
		["利眼约里克"] = 50336; --Yorik Sharpeye
		["俞·野爪"] = 50820; --Yul Wildpaw
		["被放逐的赞伊"] = 50769; --Zai the Outcast
		["赞达拉战争使者"] = 69769; --Zandalari Warbringer cian
		["赞达拉战争使者"] = 69842; --Zandalari Warbringer gray
		["赞达拉战争使者"] = 69841; --Zandalari Warbringer silver
		["赞达拉战斗斥候"] = 69768; --Zandalari Warscout
		["曹卓"] = 69843; --Zao'cho
		["泽泉"] = 72245; --Zesqua
		["泛酸的筑汞"] = 71919; --Zhu-Gon the Sour
		
		-- Rares Draenor
		["阿莫卡瓦"] = 77140; --Amaukwa
		["先祖剑圣"] = 82899; --Ancient Blademaster
		["阿夸利亚"] = 86213; --Aqualir
		["索克雷萨的化身"] = 88043; --Avatar of Socrethar
		["巴鲁恩"] = 82326; --Ba'ruun
		["巴哈麦"] = 81406; --Bahameye
		["巴肖克"] = 82085; --Bashiok
		["塑兽者萨拉玛尔"] = 78150; --Beastcarver Saramor
		["贝蒂斯·爆篮"] = 84887; --Betsi Boombasket
		["剑舞者艾瑞克斯"] = 80614; --Blade-Dancer Aeryx
		["凋零之光"] = 84856; --Blightglow
		["荆棘大王菲里"] = 81639; --Brambleking Fili
		["无息"] = 78867; --Breathless
		["布塔格·利刃"] = 87234; --Brutag Grimblade
		["深峡冰母蜥蜴"] = 71721; --Canyon Icemother
		["炽燃的焦皮"] = 82311; --Char the Burning
		["冻牙"] = 80242; --Chillfang
		["烬喉"] = 72294; --Cindermaw
		["云语者达博"] = 78169; --Cloudspeaker Daber
		["哀恸者冰蹄"] = 77513; --Coldstomp the Griever
		["冷牙"] = 76914; --Coldtusk
		["考尔·裂肉者"] = 77620; --Cro Fleshrender
		["飓风之怒"] = 78621; --Cyclonic Fury
		["暗影余孽"] = 77085; --Dark Emanation
		["黑暗大师高维德"] = 82268; --Darkmaster Go'vid
		["暗爪"] = 82411; --Darktalon
		["神射手奇兹"] = 77763; --Deadshot Kizi
		["深渊之根"] = 82058; --Depthroot
		["恐蹄"] = 86729; --Direhoof
		["格鲁姆博士"] = 77561; --Dr. Gloom
		["杜卡斯·钢喉"] = 84807; --Durkath Steelmaw
		["元素使乌塔尔"] = 77768; --Elementalist Utrah
		["爱娜瓦拉"] = 82676; --Enavra
		["爱娜瓦拉"] = 82742; --Enavra
		["灵光"] = 82207; --Faebright
		["锯齿"] = 82975; --Fangler
		["邪皮"] = 80204; --Felbark
		["魔火扈从"] = 82992; --Felfire Consort
		["脓花"] = 84890; --Festerbloom
		["炎怒巨灵"] = 74971; --Firefury Giant
		["纵火者格拉什"] = 88580; --Firestarter Grash
		["燧皮"] = 83483; --Flinthide
		["熔炉主管塔加"] = 77648; --Forge Matron Targa
		["石化的岩木"] = 85250; --Fossilwood the Petrified
		["疯狂的魔像"] = 77614; --Frenzied Golem
		["戈尔佐玛"] = 78713; --Galzomar
		["加鲁尔"] = 82764; --Gar'lua
		["要塞汽车"] = 86058; --Garrison Ford
		["“蓝焰”戈尔高"] = 81038; --Gelgor of the Blue Flame
		["艾弗德将军"] = 82882; --General Aevd
		["加纳迪安"] = 80471; --Gennadian
		["巨人屠夫库尔"] = 71665; --Giant-Slayer Kul
		["巨人屠夫琪拉"] = 78144; --Giantslayer Kimla
		["闪翼"] = 77719; --Glimmerwing
		["格鲁特"] = 80868; --Glut
		["狂暴的瘤蹄"] = 82778; --Gnarlhoof the Rabid
		["咕噜姆"] = 76380; --Gorum
		["大元帅泰布雷德"] = 82876; --Grand Marshal Tremblade
		["巨羽"] = 82758; --Greatfeather
		["狡猾的戈尔多克"] = 84431; --Greldrok the Cunning
		["灰喉"] = 82912; --Grizzlemaw
		["戈隆追猎者达沃"] = 78128; --Gronnstalker Dawarn
		["林地守卫者雅尔"] = 88583; --Grove Warden Yal
		["劫掠者古图什"] = 80312; --Grutush the Pillager
		["古鲁克"] = 80190; --Gruuk
		["戈伦"] = 80235; --Gurun
		["吞天者哈坤"] = 83008; --Haakun the All-Consuming
		["槌牙"] = 77715; --Hammertooth
		["雌鸟哈米"] = 77626; --Hen-Mother Hami
		["独居的白鬃"] = 86724; --Hermit Palefur
		["高阶督军沃拉斯"] = 82877; --High Warlord Volrath
		["猎人巴尔拉"] = 88672; --Hunter Bal'ra
		["猎手黑齿"] = 83603; --Hunter Blacktooth
		["狩猎大师康恩"] = 78151; --Huntmaster Kuang
		["亥伯里奥斯"] = 78161; --Hyperious
		["伊沙塔尔"] = 83553; --Insha'tar
		["刺颚"] = 82616; --Jabberjaw
		["和平主义者贾鲁克"] = 87600; --Jaluk the Pacifist
		["孢子吞噬者贾斯卡"] = 84955; --Jiasska the Sporegorger
		["浴血的卡洛斯"] = 84810; --Kalos the Bloodbathed
		["卡洛什·黑风"] = 86959; --Karosh Blackwind
		["自负的卡拉佐斯"] = 78710; --Kharazos the Triumphant
		["戮喉"] = 74206; --Killmaw
		["克里奇克斯"] = 78872; --Klikixx
		["虚空先知库塔格"] = 72362; --Ku'targ the Voidseer
		["魔女泰普特莎"] = 85121; --Lady Temptessa
		["读叶者库里"] = 72537; --Leaf-Reader Kurri
		["洛玛格·碎颚"] = 77784; --Lo'marg Jawcrusher
		["领主考利纳克"] = 82920; --Lord Korinak
		["“疯王”斯波隆"] = 77310; --Mad "King" Sporeon
		["马尔洛克·裂石"] = 83643; --Malroc Stonesunder
		["曼达科尔"] = 84406; --Mandrakor
		["加布里埃尔元帅"] = 82878; --Marshal Gabriel
		["卡什·暴炉将军"] = 82880; --Marshal Karsh Stormforge
		["罪孽魔女"] = 82998; --Matron of Sin
		["莫尔瓦·屈魂者"] = 82362; --Morva Soultwister
		["蛛后阿兰妮艾"] = 76473; --Mother Araneae
		["主母奥姆拉"] = 75071; --Mother Om'ra
		["穆塔芬"] = 84417; --Mutafen
		["纳斯·杜柏林"] = 82247; --Nas Dunberlin
		["诺洛什"] = 79334; --No'losh
		["奥菲斯"] = 83409; --Ophiis
		["复仇者奥斯奇拉"] = 84872; --Oskiira the Vengeful
		["侦察骑兵杜莉萨"] = 83680; --Outrider Duretha
		["白鬼鱼贩"] = 78606; --Pale Fishmonger
		["探路者贾洛格"] = 78134; --Pathfinder Jalog
		["寻路者德拉加"] = 77095; --Pathstalker Draga
		["竞技场野兽"] = 88208; --Pit Beast
		["毒药大师波塔斯克"] = 84838; --Poisonmaster Bortusk
		["指挥官穆尔格"] = 76918; --Primalist Mur'og
		["纵火者金德拉"] = 77642; --Pyrecaster Zindra
		["拉坎"] = 77741; --Ra'kahn
		["拉戈尔·逐流"] = 84392; --Ragore Driftstalker
		["莱沃什"] = 82374; --Rai'vosh
		["狂野的赤爪"] = 82755; --Redclaw the Feral
		["烂菌"] = 85504; --Rotcap
		["桑里卡斯"] = 84833; --Sangrikass
		["斥候高斯克"] = 77526; --Scout Goreseeker
		["西恩·怀特斯"] = 83542; --Sean Whitesea
		["影皮"] = 79938; --Shadowbark
		["辛利"] = 82415; --Shinri
		["杀戮魔女丝科西丝"] = 78715; --Sikthiss, Maiden of Slaughter
		["银叶古树"] = 79686; --Silverleaf Ancient
		["银叶古树"] = 79693; --Silverleaf Ancient
		["银叶古树"] = 79692; --Silverleaf Ancient
		["日光放大器"] = 83990; --Solar Magnifier
		["灵牙"] = 80057; --Soulfang
		["钢牙"] = 86549; --Steeltusk
		["践踏者克罗格"] = 79629; --Stomper Kreego
		["岩怒"] = 84805; --Stonespite
		["硫磺之怒"] = 80725; --Sulfurious
		["日爪"] = 86137; --Sunclaw
		["碎棘"] = 84912; --Sunderthorn
		["沼叶"] = 85520; --Swarmleaf
		["迅捷黑色掠夺者"] = 88582; --Swift Onyx Flayer
		["断爪者"] = 84836; --Talonbreaker
		["鸦爪祭司佐卡拉"] = 79485; --Talonpriest Zorkra
		["破碎者特斯卡"] = 84775; --Tesska the Broken
		["打击者"] = 77527; --The Beater
		["托格洛斯"] = 82618; --Tor'goroth
		["图拉卡"] = 83591; --Tura'aka
		["瓦拉沙"] = 82050; --Varasha
		["维洛斯"] = 75482; --Veloss
		["虚空掠夺者乌奈"] = 85078; --Voidreaver Urnae
		["虚空先知卡鲁格"] = 83385; --Voidseer Kalurg
		["乌塞罗斯"] = 77926; --Vulceros
		["游荡的守备官"] = 77776; --Wandering Vindicator
		["战争法师巴尔高"] = 78733; --Warcaster Bargol
		["战争大师布格索尔"] = 79024; --Warmaster Blugthol
		["风牙狼母"] = 75434; --Windfang Matriarch
		["毁灭者埃索瑟尔"] = 82922; --Xothear, the Destroyer
		["疤脸雅佳"] = 79145; --Yaga the Scarred
		["焚化者亚兹拉"] = 77529; --Yazheera the Incinerator
		["伊格德尔"] = 75435; --Yggdrel
		["月牙"] = 71992; --Moonfang
		["上古地狱火"] = 84875; --Ancient Inferno
		["布里豪斯"] = 83819; --Brickhouse
		["戴米多斯"] = 84911; --Demidos
		["黑暗编织者凯斯长老"] = 85771; --Elder Darkweaver Kath
		["血獠"] = 84893; --Goregore
		["科萨尔·噬魂"] = 84110; --Korthall Soulgorger
		["库尔洛什·灭牙"] = 82988; --Kurlosh Doomfang
		["魔女德姆拉什"] = 82942; --Lady Demlash
		["紫菀妖花"] = 83683; --Mandragoraster
		["奥拉戈罗"] = 84904; --Oraggro
		["观察者奥鲁莫"] = 87668; --Orumo the Observer
		["迅豹"] = 83691; --Panthora
		["暗焰恐惧行者"] = 82930; --Shadowflame Terrorwalker
		["提塔鲁斯"] = 83713; --Titarus
		["警戒者帕索斯"] = 88436; --Vigilant Paarthos
		["大魔导师泰卡尔"] = 88072; --Archmagus Tekar
		["炮兵古戈克"] = 87597; --Bombardier Gu'gok
		["被俘的高沃什塑石者"] = 84746; --Captured Gor'vosh Stoneshaper
		["被诅咒的先驱"] = 85767; --Cursed Harbinger
		["被诅咒的掠食者"] = 85763; --Cursed Ravager
		["被诅咒的利爪战士"] = 85766; --Cursed Sharptalon
		["胆小的吉布利特"] = 87352; --Gibblette the Cowardly
		["吉比"] = 87362; --Gibby
		["古托尔"] = 83019; --Gug'tol
		["霜降"] = 87348; --Hoarfrost
		["燃烧军团先锋"] = 88494; --Legion Vanguard
		["军士长米格拉"] = 85001; --Master Sergeant Milgra
		["莫托玛"] = 82614; --Moltnoma
		["鬣蜥人主母"] = 87351; --Mother of Goren
		["军需官赫沙克"] = 84925; --Quartermaster Hershak
		["暗影语者纳尔"] = 85029; --Shadowspeaker Niir
		["食尸者暴牙"] = 82617; --Slogtusk the Corpse-Eater
		["高拉摩尔之子"] = 82620; --Son of Goramal
		["缚魂者奈拉娜"] = 88083; --Soulbinder Naylana
		["战略家安克尔"] = 88071; --Strategist Ankor
		["白骨爬行者"] = 78265; --The Bone Crawler
		["剑圣罗戈尔"] = 86579; --Blademaster Ro'gor
		["背叛者达兹戈"] = 86566; --Defector Dazgo
		["可恨的杜普"] = 86571; --Durp the Hated
		["高里瓦克斯"] = 82536; --Gorivax
		["豪格"] = 86577; --Horgg
		["发明家布拉莫"] = 86574; --Inventor Blammo
		["疯狂的麦德加"] = 86562; --Maniacal Madgard
		["莫尔戈·凯恩"] = 86582; --Morgo Kain
		["兰提克"] = 77081; --The Lanticore
		["沃卡尔"] = 87357; --Valkor
		["古老的沃罗克"] = 87356; --Vrok the Ancient
		["督军诺克泰"] = 82883; --Warlord Noktyn
		["“屠夫”阿奥克斯"] = 84378; --Ak'ox the Slaughterer
		["阿卡利"] = 86268; --Alkali
		["雪崩"] = 85568; --Avalanche
		["碎骨者"] = 87837; --Bonebreaker
		["炽燃能量"] = 84926; --Burning Power
		["杜戈·碎脊"] = 87788; --Durg Spinecrusher
		["暴食巨人"] = 87019; --Gluttonous Giant
		["瘤颚"] = 78269; --Gnarljaw
		["熔岩鲸吸者高戈阿克"] = 72364; --Gorg'ak the Lava Guzzler
		["高塔格·钢握"] = 87344; --Gortag Steelgrip
		["软泥怪大王"] = 78260; --King Slime
		["卡拉尔·死眼"] = 87239; --Krahl Deadeye
		["跳跃吞噬者"] = 84465; --Leaping Gorger
		["马尔高什·护影"] = 85451; --Malgosh Shadowkeeper
		["机械掠夺者"] = 87026; --Mecha Plunderer
		["莫伽玛戈"] = 88586; --Mogamago
		["老钳子先生"] = 84435; --Mr. Pinchy Sr.
		["纳吉达"] = 85555; --Nagidna
		["暗影巨人"] = 87027; --Shadow Hulk
		["滑溜软泥"] = 84854; --Slippery Slime
		["银喉"] = 85837; --Slivermaw
		["锢魂者托雷克"] = 85026; --Soul-Twister Torek
		["冰封者乌戈洛克"] = 79104; --Ug'lok the Frozen
		["蛛网缠身的士兵"] = 84196; --Web-wrapped Soldier
		["奥盖克松"] = 86774; --Aogexon
		["巴斯滕"] = 86257; --Basten
		["伯格鲁"] = 86732; --Bergruu
		["吞噬者布罗克"] = 72156; --Borrok the Devourer
		["德考汉"] = 86743; --Dekorhan
		["艾奇迪纳"] = 80372; --Echidna
		["野蛮的伽罗格"] = 86771; --Gagrog the Brutal
		["科拉诺斯"] = 80398; --Keravnos
		["开膛者克鲁德"] = 88210; --Krud the Eviscerator
		["莱纳亚"] = 80370; --Lernaea
		["穆格拉"] = 87666; --Mu'gra
		["努尔塔"] = 86258; --Nultra
		["角斗场屠杀者"] = 87846; --Pit Slayer
		["泰克塔伦"] = 86750; --Thek'talon
		["提丰"] = 80371; --Typhon
		["瓦斯提尔"] = 86259; --Valstil
		["维诺拉斯克"] = 86266; --Venolasix
		["邪爪"] = 88951; --Vileclaw
		["艾克加纳克"] = 86835; --Xelganak
		["铁须队长"] = 79725; --Captain Ironbeard
		["加兹奥达"] = 80122; --Gaz'orda
		["灵魔"] = 83401; --Netherspawn
		["鲁克拉"] = 83526; --Ru'klaa
		["唤风者科拉斯特"] = 83428; --Windcaller Korast
		["狂暴T-300系列II型"] = 82826; --Berserk T-300 Series Mark II
		["探险家诺赞德"] = 82486; --Explorer Nozzand
		["血花"] = 83509; --Gorepetal
		["砂齿"] = 84263; --Graveltooth
		["斥候波卡尔"] = 83634; --Scout Pokhar
		["加兹"] = 86978; --Gaze
		["贪鳍"] = 84951; --Gobblefin
		["格布戈尔"] = 85572; --Grrbrrgle
		["阿尔克"] = 77664; --Aarko
		["摩摩尔的回响"] = 77828; --Echo of Murmur
		["摩摩尔的回响"] = 77795; --Echo of Murmur
		["沙兹尔"] = 79543; --Shirzir
		["塔拉多寡妇蛛"] = 77634; --Taladorantula
		["低阶监工血鬃"] = 80524; --Underseer Bloodmane
		["洛克尔"] = 85264; --Rolkor
		["塞尔多斯"] = 86410; --Sylldross
		["虫巢女王斯基卡"] = 83522; --Hive Queen Skrikka
		["巢母里戈艾克"] = 74613; --Broodmother Reeg'ak
		["吉特班"] = 77519; --Giantbane
		["斯尼维尔"] = 86689; --Sneevel
		["怒蹄"] = 86520; --Stompalupagus
		["贝索拉"] = 85907; --Berthora
		["里普塔尔"] = 85970; --Riptar
		["催眠魔蛙"] = 79524; --Hypnocroak
		["岩蹄"] = 72606; --Rockhoof
		["毒影"] = 75492; --Venomshade
		["雷霆纳克"] = 50990; --Nakk the Thunderer
		["戈罗克"] = 50992; --Gorok
		["鲁克胡克"] = 50981; --Luk'hok
		["重拳"] = 50985; --Poundfist
		["泥皮"] = 51015; --Silthide
		["觅径者"] = 50883; --Pathrunner
		["诺卡罗什"] = 81001; --Nok-Karosh
		
		-- Rares Draenor 6.2
		["毁灭者阿格什"] = 91871; --Argosh the Destroyer
		["贝尔高克"] = 92552; --Belgork
		["投掷者比尔克"] = 90884; --Bilkor the Thrower
		["血环恐魔"] = 92657; --Bleeding Hollow Horror
		["猎血者祖尔克"] = 90936; --Bloodhunter Zulk
		["巢母艾克斯科"] = 92429; --Broodlord Ixkor
		["高克玛上尉"] = 93264; --Captain Grok'mar
		["铁须船长"] = 93076; --Captain Ironbeard
		["塞拉卡斯"] = 90434; --Ceraxas
		["“野火”辛达尔"] = 90519; --Cindral the Wildfire
		["黑暗召唤师兰德卡"] = 90081; --Dark Summoner Rendkra
		["嗜血的多格"] = 90887; --Dorg the Bloody
		["德里斯·瓦伊尔"] = 93028; --Driss Vile
		["德努尔"] = 90888; --Drivnul
		["执行官里洛斯"] = 91727; --Executor Riloth
		["邪钻"] = 93168; --Felbore
		["邪能工匠达莫卡"] = 92647; --Felsmith Damorka
		["魔芒"] = 91098; --Felspark
		["黯爪"] = 92508; --Gloomtalon
		["高拉博什"] = 92941; --Gorabosh
		["高阶术士奈瑟库斯"] = 91695; --Grand Warlock Nethekurse
		["格兰诺克"] = 93057; --Grannok
		["格罗索克·碎颅者"] = 90089; --Grobthok Skullbreaker
		["港务长库拉克"] = 90094; --Harbormaster Korak
		["高阶祭司伊克赞"] = 90281; --High Priest Ikzan
		["高阶祭司伊克赞"] = 90777; --High Priest Ikzan
		["小鬼领主瓦勒萨"] = 90429; --Imp-Master Valessa
		["钢铁船长阿格哈"] = 90087; --Iron Captain Argha
		["贾克索尔"] = 90437; --Jax'zor
		["冷静的克莱尔"] = 92517; --Krell the Serene
		["堕落的科斯卡尔"] = 93279; --Kris'kar the Unredeemed
		["奥兰"] = 90438; --Lady Oran
		["麦格威"] = 93002; --Magwia
		["妖女萨弗拉"] = 90442; --Mistress Thavra
		["奥玛克·血箭"] = 90088; --Ormak Bloodbolt
		["大统领玛古斯"] = 92411; --Overlord Ma'gruth
		["苦痛妖女塞萝拉"] = 92274; --Painmistress Selora
		["魔荚大王瓦卡瓦姆"] = 91374; --Podlord Wakkawam
		["普崔萨"] = 91009; --Putre'thar
		["拉瑟"] = 90782; --Rasthe
		["瑞格儿"] = 92197; --Relgor
		["血月残骸"] = 91227; --Remnant of the Blood Moon
		["伦达克"] = 92627; --Rendrak
		["追踪者罗贡德"] = 90885; --Rogond the Tracker
		["鲁克玛兹"] = 94113; --Rukmaz
		["莫加克中士"] = 90024; --Sergeant Mor'grak
		["鞭影"] = 93236; --Shadowthrash
		["刈魂者"] = 92495; --Soulslicer
		["钢吻"] = 92887; --Steelsnout
		["希利萨"] = 92606; --Sylissa
		["扭曲的兹里克"] = 93001; --Szirek the Twisted
		["黑齿"] = 92465; --The Blackfang
		["血爪"] = 92694; --The Goreclaw
		["钢铁训犬师"] = 92977; --The Iron Houndmaster
		["暗夜游魂"] = 92645; --The Night Haunter
		["暗夜游魂"] = 92636; --The Night Haunter
		["索戈尔·血拳"] = 91243; --Tho'gar Gorefist
		["断肠者索玛"] = 92574; --Thromma the Gutslicer
		["该死的瓦里克斯"] = 92451; --Varyx the Damned
		["不朽的艾萨兹"] = 92408; --Xanzith the Everlasting
		["泽特尔"] = 91087; --Zeter'el
		["大块头佐格"] = 90122; --Zoug the Heavy
		["落棘"] = 91093; --Bramblefell
		["指挥官卡格高斯"] = 91232; --Commander Krag'goth
		["指挥官奥格莫克"] = 89675; --Commander Org'mok
		["死爪"] = 95053; --Deathtalon
		["末日之轮"] = 95056; --Doomroller
		["古鲁布洛克"] = 93125; --Glub'glok
		["泰罗菲斯特"] = 95044; --Terrorfist
		["维金斯"] = 95054; --Vengeance
		["温普尔"] = 91921; --Wyrmple
		["泽米考尔"] = 96235; --Xemirkol
		
		-- Rares Draenor 6.2.1
		["甘克"] = 98200; --Guk
		["普格"] = 98199; --Pugg
		["鲁克都格"] = 98198; --Rukdug
		["达库姆"] = 98283; --Drakum
		["贡达"] = 98284; --Gondar
		["萨姆逊·强掠"] = 98285; --Smashum Grabb
		["邪能监工玛德拉普"] = 98408; --Fel Overseer Mudlump
		["蜘蛛兰"] = 96323; --Arachnis
		["艾拉基斯"] = 97209; --Eraakis
		
		-- Rares Legion
		["冷血的杜贡"] = 110378; --Drugon the Frostblood
		["浮骸"] = 99929; --Flotsam
		["胡墨格里斯"] = 108879; --Humongris
		["尼索格"] = 107544; --Nithogg
		["沙索斯"] = 108678; --Shar'thos
		["“百步穿杨”阿尼"] = 100230; --"Sure-Shot" Arnie
		["阿比莎"] = 97348; --Abesha
		["阿克诺斯"] = 112705; --Achronos
		["艾格尔·浪碾"] = 108885; --Aegir Wavecrusher
		["阿拉韦斯特"] = 104481; --Ala'washte
		["阿鲁瓦侬"] = 107960; --Alluvanon
		["奥特莉娅"] = 104521; --Alteria
		["特使德温"] = 111649; --Ambassador D'vwinn
		["伏击的刀齿狼人"] = 92611; --Ambusher Daggerfang
		["阿纳克斯"] = 111197; --Anax
		["爱多·枯蕊"] = 110346; --Aodh Witherpetal
		["药剂师法德伦"] = 110870; --Apothecary Faldren
		["学徒佩雷斯"] = 92634; --Apothecary Perez
		["奥能追猎者"] = 90173; --Arcana Stalker
		["奥术师莉兰德"] = 110656; --Arcanist Lylandre
		["奥术师沙尔曼"] = 107657; --Arcanist Shal'iman
		["超级奥能金刚"] = 109641; --Arcanor Prime
		["阿卡维鲁斯"] = 90244; --Arcavellus
		["阿鲁"] = 97220; --Arru
		["阿斯法尔"] = 99802; --Arthfael
		["阿斯法尔"] = 103801; --Arthfael
		["技师洛萨尔"] = 106351; --Artificer Lothaire
		["刺客胡威"] = 92633; --Assassin Huwe
		["审计员伊塞尔"] = 112758; --Auditor Esiel
		["阿兹加塔"] = 112759; --Az'jatar
		["肉蜥蜴"] = 103787; --Baconlisk
		["巴哈加"] = 110562; --Bahagar
		["虐待者巴拉克斯"] = 97637; --Barax the Mauler
		["滩沙"] = 91187; --Beacher
		["贝崔克丝"] = 111454; --Bestrix
		["拜尔班"] = 107327; --Bilebrain
		["风刀"] = 91874; --Bladesquall
		["鲜血头狼"] = 92599; --Bloodstalker Alpha
		["血鸦"] = 98361; --Bloody Raven
		["囤积者博达什"] = 98299; --Bodash the Hoarder
		["崩岩"] = 98178; --Boulderfall
		["被侵蚀的崩岩"] = 109113; --Boulderfall, the Eroded
		["布拉戈斯"] = 107127; --Brawlgoth
		["复活的盐须"] = 106863; --Brinebeard the Risen
		["蓟槌"] = 97449; --Bristlemaul
		["伯格佐格"] = 91100; --Brogozog
		["强大的波古尔"] = 94877; --Brogrul the Mighty
		["蛛母丽萨克丝"] = 107105; --Broodmother Lizax
		["巢母舒玛利斯"] = 105632; --Broodmother Shu'malis
		["布鲁泽"] = 102863; --Bruiser
		["布尔维克"] = 111463; --Bulvinkel
		["卡德乌斯"] = 110726; --Cadraeus
		["塞林·灰月"] = 91289; --Cailyn Paledoom
		["贝福特船长"] = 92685; --Captain Brvet
		["达昆船长"] = 109163; --Captain Dargun
		["沃洛伦船长"] = 89846; --Captain Volo'ren
		["勇士埃罗迪"] = 92604; --Champion Elodie
		["焦羽"] = 101596; --Charfeather
		["苦水酋长"] = 106990; --Chief Bitterbrine
		["宝物主管加布里尔"] = 109677; --Chief Treasurer Jabrill
		["烬翼"] = 111674; --Cinderwing
		["考勒里安"] = 104698; --Colerian
		["考勒里安"] = 104519; --Colerian
		["指挥官索拉克斯"] = 107266; --Commander Soraax
		["科拉卡"] = 100864; --Cora'kar
		["闪光的花朵"] = 93778; --Coruscating Bloom
		["邪恶伯爵"] = 97058; --Count Nefarious
		["奥能女王柯拉"] = 108255; --Coura, Mistress of Arcana
		["海蟹骑手格姆尔"] = 97933; --Crab Rider Grmlrml
		["饥饿的克劳舒克"] = 97345; --Crawshuk the Hungry
		["晶须"] = 90050; --Crystalbeard
		["赛瑞琳"] = 105619; --Cyrilline
		["刀喙"] = 90057; --Daggerbeak
		["“炸弹狂魔”丹尼尔·沃里克"] = 94313; --Daniel "Boomer" Vorick
		["达高克·雷墟"] = 100231; --Dargok Thunderuin
		["黑暗游侠杰西"] = 92631; --Dark Ranger Jess
		["极致恐惧"] = 92205; --Darkest Fear
		["暗魔拷问者"] = 107924; --Darkfiend Tormentor
		["达弗尔"] = 109501; --Darkful
		["黑暗之影"] = 92965; --Darkshade
		["亡灵卫兵亚当斯"] = 92626; --Deathguard Adams
		["深螯"] = 109702; --Deepclaw
		["德菲丽娅"] = 104513; --Defilia
		["德根"] = 111651; --Degren
		["巢母伊尔瓦"] = 108790; --Den Mother Ylva
		["鬼祟的逐日圣马"] = 112637; --Devious Sunrunner
		["噬人黑暗"] = 100495; --Devouring Darkness
		["哀爪"] = 93088; --Direclaw
		["末日领主卡兹洛克"] = 91579; --Doomlord Kazrok
		["碾压者多巴什"] = 109727; --Dorbash the Smasher
		["恐怖船长塞顿"] = 108543; --Dread Captain Thedon
		["恐怖海盗"] = 108541; --Dread Corsair
		["幽灵船卡扎托亚号"] = 108531; --Dread Ship Krazatoa
		["亡灵骑兵柯提斯"] = 94347; --Dread-Rider Cortis
		["德拉博格"] = 97517; --Dreadbog
		["杜古斯"] = 96072; --Durguth
		["艾尔迪斯"] = 110367; --Ealdis
		["斩兽者厄诺克"] = 96647; --Earlnoc the Beastbreaker
		["不朽者埃格尔"] = 98188; --Egyl the Enduring
		["精灵灾星"] = 99792; --Elfbane
		["被激怒的大地仆从"] = 93372; --Enraged Earthservant
		["双头怪"] = 109728; --Ettin
		["法斯尼尔"] = 91803; --Fathnyr
		["法斯尼尔"] = 98225; --Fathnyr
		["邪翼"] = 105938; --Felwing
		["芬里"] = 92040; --Fenri
		["芬里"] = 98276; --Fenri
		["弗约顿"] = 109584; --Fjordun
		["“墓穴冰魔”弗约拉格"] = 108827; --Fjorlag, the Grave's Chill
		["炎鳞"] = 97793; --Flamescale
		["船长克星弗洛格"] = 89884; --Flog the Captain-Eater
		["霜裂"] = 101649; --Frostshard
		["元素之怒"] = 109729; --Fury
		["加弗鲁格"] = 99610; --Garvrulg
		["征服者加瑟纳克"] = 93679; --Gathenak the Subjugator
		["沃罗斯将军"] = 97370; --General Volroth
		["葛利玛·铁拳"] = 91529; --Glimar Ironfist
		["格鲁布鲁斯"] = 95988; --Globulus
		["“铁鳍”贡尔扎"] = 89816; --Golza the Iron Fin
		["“巨钳”高姆"] = 101411; --Gom Crabbar
		["血喙"] = 92117; --Gorebeak
		["高格罗斯"] = 110832; --Gorgroth
		["女巫格蕾尔达"] = 95123; --Grelda the Hag
		["格瑞姆洛特"] = 107595; --Grimrot
		["格瑞姆洛特"] = 107596; --Grimrot
		["恐怖图腾勇士"] = 112708; --Grimtotem Champion
		["征服者格古尔"] = 98503; --Grrvrgull the Conqueror
		["卫兵索艾尔"] = 110944; --Guardian Thor'el
		["突袭者戈尔伯格"] = 96590; --Gurbog da Basher
		["哈尔弗丹"] = 108823; --Halfdan
		["屠夫汉瓦尔"] = 107926; --Hannval the Butcher
		["贪婪的哈克斯"] = 103214; --Har'kess the Insatiable
		["尖啸先锋"] = 110361; --Harbinger of Screams
		["强夺者哈特里"] = 97326; --Hartli the Snatcher
		["哈提"] = 103154; --Hati
		["冥口劫掠者"] = 92703; --Helmouth Raider
		["冥口劫掠者"] = 92682; --Helmouth Raider
		["赫萨·格里姆多迪"] = 103223; --Hertha Grimdottir
		["蜂巢女王扎拉"] = 91649; --Hivequeen Zsala
		["钩锁"] = 92590; --Hook
		["霍鲁克斯"] = 107169; --Horux
		["驯犬者伊莱"] = 92951; --Houndmaster Ely
		["驯犬者斯托克西斯"] = 107136; --Houndmaster Stroxis
		["狩猎大师胡克罗斯"] = 110486; --Huk'roth the Huntmaster
		["女猎手艾丝蒂德"] = 108822; --Huntress Estrid
		["许德拉侬"] = 100067; --Hydrannon
		["乌索克的影像"] = 92199; --Image of Ursoc
		["乌索尔的影像"] = 92200; --Image of Ursol
		["具像恐魔"] = 92189; --Imagined Horror
		["伊墨利安"] = 109630; --Immolian
		["地狱火领主"] = 90803; --Infernal Lord
		["审判官恩斯坦波克"] = 90139; --Inquisitor Ernstenbok
		["审判官提沃斯"] = 107269; --Inquisitor Tivos
		["审判官沃里提克斯"] = 106532; --Inquisitor Volitix
		["饥饿的贪食犬"] = 93993; --Insatiable Gorger
		["铁枝"] = 93030; --Ironbranch
		["“大锤”伊赛尔"] = 94413; --Isel the Hammer
		["“大锤”伊赛尔"] = 109957; --Isel the Hammer
		["白色哨兵"] = 92751; --Ivory Sentinel
		["杰蒂·黑天"] = 103975; --Jade Darkhaven
		["贾甘拉"] = 101467; --Jaggen-Ra
		["贾克"] = 109500; --Jak
		["杰萨姆"] = 103203; --Jetsam
		["穿刺者吉尼奇"] = 93686; --Jinikki the Puncturer
		["朱倍尔索斯"] = 96208; --Jubei'thos
		["狡猾的卡拉苏斯"] = 94636; --Kalazzius the Guileful
		["卡萨克斯"] = 111731; --Karthax
		["野蛮的卡索尔"] = 109125; --Kathaw the Savage
		["科斯拉佐"] = 96997; --Kethrazor
		["弗加拉什国王"] = 101063; --King Forgalash
		["莫格拉什国王"] = 103827; --King Morgalash
		["蛛王沃拉斯"] = 97059; --King Voras
		["奇兰尼斯·暮语"] = 94414; --Kiranys Duskwhisper
		["考达·多罗斯"] = 96212; --Korda Torros
		["饥渴的库苏莫斯"] = 111573; --Kosumoth the Hungering
		["考特·沃德尔"] = 98421; --Kottr Vondyr
		["克拉萨"] = 103271; --Kraxa
		["“利刃”科罗尔"] = 96210; --Krol the Blade
		["库德兹拉"] = 99362; --Kudzilla
		["瑞瓦塔丝夫人"] = 106526; --Lady Rivantas
		["拉格萨"] = 109015; --Lagertha
		["斯塔瑟玛中尉"] = 102303; --Lieutenant Strathmar
		["贪婪的利林"] = 100516; --Lilin the Ravenous
		["失落已久的角鹰兽"] = 108366; --Long-Forgotten Hippogryph
		["食蛋者卢古特"] = 98024; --Luggut the Eggeater
		["利拉斯·月羽"] = 98241; --Lyrath Moonfeather
		["丽莎妮丝·影魂"] = 111939; --Lysanis Shadesoul
		["利瑟隆"] = 109692; --Lytheron
		["疯狂的亨利克"] = 95221; --Mad Henryk
		["魔导师法蒂斯"] = 109954; --Magister Phaedris
		["魔导师薇尔莎"] = 112757; --Magistrix Vilessa
		["白狼玛亚"] = 112497; --Maia the White
		["威严的大角鹿"] = 96410; --Majestic Elderhorn
		["腐蚀者马尔戴斯"] = 110024; --Mal'Dreth the Corruptor
		["玛丽桑德拉"] = 109281; --Malisandra
		["马图拉"] = 112802; --Mar'tura
		["巨大的玛伯布"] = 109653; --Marblub the Massive
		["主母哈佳萨"] = 111329; --Matron Hagatha
		["马瓦塔奇"] = 104517; --Mawat'aki
		["麦罗克，图鲁克之子"] = 96621; --Mellok, Son of Torok
		["米娅苏"] = 111653; --Miasu
		["巨型瘟疫蝠"] = 111055; --Monstrous Plague Rat
		["莫多维乔"] = 93371; --Mordvigbjorn
		["莫提法洛斯"] = 93622; --Mortiferous
		["龙虾人主母"] = 91780; --Mother Clacker
		["织潮者墨古尔"] = 89865; --Mrrgrl the Tide Reaver
		["墨克尔"] = 98311; --Mrrklr
		["米塔·啸爪"] = 97593; --Mynta Talonscreech
		["米奥妮克丝"] = 110340; --Myonix
		["米萨纳"] = 101641; --Mythana
		["坚果"] = 107477; --N.U.T.Z.
		["通灵师托德瑞萨"] = 108016; --Necromagus Toldrethar
		["梦魇水晶"] = 110451; --Nightmare Crystal
		["梦魇守望者"] = 106165; --Nightmare WardenNOT SPAWNED
		["尼索格"] = 107023; --Nithogg
		["被驱逐的诺曼提斯"] = 90248; --Normantis the Deposed
		["被驱逐的诺曼提斯"] = 90217; --Normantis the Deposed
		["被驱逐的诺曼提斯"] = 90253; --Normantis the Deposed
		["诺特加恩"] = 105657; --Notgarn
		["被遗忘的妮拉西娅"] = 109990; --Nylaathria the Forgotten
		["狂怒的奥格洛克"] = 105899; --Oglok the Furious
		["老艾瑞"] = 108715; --Ol' Eary
		["欧姆德"] = 107617; --Ol' Muddle
		["毁船者欧洛克"] = 104484; --Olokk the Shipbreaker
		["邪恶的欧瑞斯"] = 110577; --Oreth the Vile
		["奥马罗格"] = 104524; --Ormagrogg
		["碾压者奥布多布"] = 95204; --Oubdob da Smasher
		["工头布鲁塔格"] = 97057; --Overseer Brutarg
		["平静的土元素"] = 99886; --Pacified Earth
		["苍白的恐翼蝠"] = 110364; --Pale Dreadwing
		["帕什亚"] = 113694; --Pashya
		["皮里克斯"] = 95318; --Perrexx
		["钳胫"] = 107846; --Pinchshank
		["疫喉"] = 103045; --Plaguemaw
		["恶臭的波洛斯"] = 94485; --Pollous the Fetid
		["火药大师麦克林"] = 108010; --Powdermaster Maclin
		["猫王米奥"] = 90901; --Pridelord Meowl
		["女祭司丽莎"] = 92613; --Priestess Liza
		["帕克"] = 100302; --Puck
		["奎因艾尔，冰风大师"] = 108256; --Quin'el, Master of Chillwind
		["拉布萨克"] = 110342; --Rabxach
		["暴怒的烂菌"] = 101660; --Rage Rot
		["怒喉"] = 109504; --Ragemaw
		["暴怒的土元素"] = 99846; --Raging Earth
		["拉古尔"] = 103199; --Ragoul
		["拉姆帕格"] = 97102; --Ram'Pag
		["暴怒妖花"] = 92140; --Rampant Mandragora
		["兰德尔"] = 111007; --Randril
		["劳伦"] = 105547; --Rauren
		["拉文达斯"] = 89016; --Ravyn-Drath
		["暗礁领主拉希斯"] = 103575; --Reef Lord Raj'his
		["洛克纳什"] = 103183; --Rok'nash
		["烂眼"] = 110363; --Roteye
		["鲁尔夫·断骨"] = 109317; --Rulf Bonesnapper
		["符文先知希格维德"] = 109318; --Runeseer Sigvid
		["瑞伊尔·晨流"] = 100232; --Ryael Dawndrifter
		["萨弗尔"] = 111010; --Saepher
		["萨弗尔"] = 111069; --Saepher
		["水手的梦魇"] = 100184; --Sailor's Nightmare
		["萨纳尔"] = 105739; --Sanaar
		["镰刀大师希尔拉曼"] = 105728; --Scythemaster Cil'raman
		["海底之王泰德罗斯"] = 111434; --Sea King Tidross
		["希尔赛"] = 92180; --Seersei
		["瑟坎"] = 101077; --Sekhan
		["塞莱妮"] = 104522; --Selenyi
		["塞莉娅，灾火大师"] = 108251; --Selia, Master of Balefire
		["影箭"] = 103841; --Shadowquill
		["沙兰"] = 109054; --Shal'an
		["沙拉撒曼"] = 104523; --Shalas'aman
		["莎拉·魔息"] = 97093; --Shara Felbreath
		["甲喉"] = 91788; --Shellmaw
		["逐雾猎犬"] = 103605; --Shroudseeker
		["逐雾猎犬之影"] = 108794; --Shroudseeker's Shadow
		["恐怖的希亚玛"] = 92090; --Shyama the Dreaded
		["攻城大师艾丁"] = 110438; --Siegemaster Aedrin
		["白银之蛇"] = 111052; --Silver Serpent
		["邪恶的魔网奔马"] = 112636; --Sinister Leyrunner
		["铅锤"] = 92591; --Sinker
		["斯库瓦克斯"] = 93654; --Skul'vrax
		["颅盔"] = 95872; --Skullhat
		["泥脸"] = 111021; --Sludge Face
		["斯朗伯"] = 98890; --Slumber
		["血角之子"] = 92725; --Son of Goredome
		["索拉鲁斯"] = 112756; --Sorallus
		["缚魂者哈尔多拉"] = 109195; --Soulbinder Halldora
		["魂魔塔格玛"] = 108494; --Soulfiend Tagerma
		["吸魂者"] = 97630; --Soulthirster
		["星鹿"] = 107487; --Starbuck
		["风暴之羽"] = 109594; --Stormfeather
		["风暴之爪"] = 109994; --Stormtalon
		["风暴之翼主母"] = 91795; --Stormwing Matriarch
		["日风"] = 98309; --Sunbreeze [DO NOT SPAWN]
		["赛法努斯"] = 90505; --Syphonus
		["被驯服的珊脊蟹"] = 97928; --Tamed Coralback
		["塔本"] = 98268; --Tarben
		["陶森"] = 97653; --Taurson
		["坦帕克·烈焰图腾"] = 97203; --Tenpak Flametotem
		["残忍的伊格罗夫领主"] = 91892; --Thane Irglov the Merciless
		["大块头"] = 108136; --The Muscle
		["无名君王"] = 92763; --The Nameless King
		["神谕者"] = 89850; --The Oracle
		["鼠王"] = 111057; --The Rat King
		["低语者"] = 109620; --The Whisperer
		["泰莉西亚"] = 92423; --Theryssia
		["松达克斯"] = 93205; --Thondrax
		["潮汐巨兽"] = 91114; --Tide Behemoth
		["潮汐巨兽"] = 91115; --Tide Behemoth
		["潮汐巨兽"] = 91113; --Tide Behemoth
		["潮爪"] = 110824; --Tideclaw
		["迷失者提普托格"] = 93166; --Tiptog the Lost
		["托伦提斯"] = 102064; --Torrentius
		["追踪者杰克"] = 92609; --Tracker Jack
		["藏宝恶魔"] = 89407; --Treasure Demon
		["Tremblade"] = 95440; --Tremblade
		["图波尔"] = 91663; --Trubble
		["海龟"] = 108881; --Turtle
		["乌塔诺克"] = 103247; --Ultanok
		["地劣魔首领"] = 109708; --Undergrell Ringleader
		["掠夺者乌格夫"] = 93401; --Urgev the Flayer
		["饥渴的瓦拉卡"] = 109575; --Valakar the Thirsty
		["瓦里托斯"] = 109606; --Valitos
		["风暴使者瓦里亚卡"] = 89650; --Valiyaka the Stormbringer
		["邪恶的鲸鲨"] = 99899; --Vicious Whale Shark
		["维伊提"] = 91640; --Vinyeaty
		["维耶迪"] = 91661; --Vinyeti
		["维耶迪"] = 89906; --Vinyeti
		["维斯莱斯"] = 105496; --Vis'ileth
		["挫志者沃沙克斯"] = 112760; --Volshax, Breaker of Will
		["沃萨克斯"] = 107113; --Vorthax
		["维库地母幽灵"] = 100224; --Vrykul Earthmaiden Spirit
		["维库塑地者幽灵"] = 100223; --Vrykul Earthshaper Spirit
		["战争使者莫克纳"] = 90164; --Warbringer Mox'na
		["督军瓦提拉什"] = 102092; --Warlord Vatilash
		["战争机械兔"] = 107431; --Weaponized Rabbot
		["吃饱的熊"] = 103785; --Well-Fed Bear
		["白水台风元素"] = 92152; --Whitewater Typhoon
		["巫医格尔布尔"] = 109648; --Witchdoctor Grgl-Brgl
		["怒爪"] = 97504; --Wraithtalon
		["愤怒领主勒考斯"] = 97069; --Wrath-Lord Lekos
		["桑黛尔"] = 109498; --Xaander
		["萨维克斯"] = 104831; --Xavrix
		["泽诺比亚"] = 100303; --Zenobia
		["佐鲁克斯"] = 107170; --Zorux
		["疯狂法师"] = 97587; --Crazed Mage
		["斯普林特"] = 97380; --Splint
		["行窃的痞子"] = 97390; --Thieving Scoundrel
		["祖洛拉克斯"] = 97388; --Xullorax
		["史加西迪"] = 97384; --Segacedi
		["腐化之蛋"] = 97589; --Rotten Egg
		["法力渗透者"] = 97387; --Mana Seeper
		["斯奎克"] = 97381; --Screek
		
		-- Rares Legion 7.1.0
		["艾丽娅妮"] = 115847; --Ariadne
		["守卫侍从"] = 116185; --Attendant Keeper
		["末日之鞭"] = 115853; --Doomlash
		["异域女妖"] = 116230; --Exotic Concubine
		["飞行管理员沃尔纳斯"] = 116004; --Flightmaster Volnath
		["卡祖恩"] = 116008; --Kar'zun
		["暗夜井预言者"] = 116395; --Nightwell Diviner
		["君王云翼角鹰兽"] = 116036; --Regal Cloudwing
		["君王云翼角鹰兽"] = 116059; --Regal Cloudwing
		["奶牛王"] = 116034; --The Cow King
		["野蛮的托姆"] = 115914; --Torm the Brute
		["高塔女妖"] = 116158; --Tower Concubine
		["财宝地精"] = 116652; --Treasure Goblin
		["狡猾的谄媚者"] = 116159; --Wily Sycophant
		["虫语藏宝者"] = 89407; --Wrymtongue Hoarder
		["财宝地精"] = 116041; --Treasure Goblin
		
		-- Rares Legion 7.1.5
		["电爪"] = 118244; --Lightning Paw
		["洛珊丽姆"] = 115537; --Lorthalium
		
		-- Rares Legion 7.2.0
		["阿波克隆"] = 121124; --Apocron
		["马利费库斯"] = 117303; --Malificus
		["丝瓦什"] = 117470; --Si'vash
		["深渊余烬"] = 116666; --Abyssal Ember
		["安塞娜"] = 120675; --An'thyna
		["愤怒的海巨人"] = 116657; --Angered Sea Giant
		["异常的眼魔"] = 121092; --Anomalous Observer
		["阿奎克斯"] = 121016; --Aqueux
		["怨恨的骑士队长"] = 121049; --Baleful Knight-Captain
		["巢母妮克丝"] = 121029; --Brood Mother Nix
		["巴达丁大师"] = 121046; --Brother Badatin
		["布鲁塔卢斯"] = 117239; --Brutallus
		["腐化的碎骨者"] = 116953; --Corrupted Bonebreaker
		["迪墨"] = 120022; --Deepmaw
		["疯狂的破坏魔"] = 121090; --Demented Shivarra
		["疯狂的魅魔"] = 121073; --Deranged Succubus
		["末日使者扎索斯"] = 117136; --Doombringer Zar'thoz
		["恐刃歼灭者"] = 117095; --Dreadblade Annihilator
		["恐眼"] = 118993; --Dreadeye
		["恐语者塞瑞里斯"] = 120716; --Dreadspeaker Serilis
		["德萨诺斯"] = 120012; --Dresanoth
		["西塞兹公爵"] = 121134; --Duke Sithizi
		["烬火"] = 117086; --Emberfire
		["艾博隆"] = 116671; --Emberon
		["艾杜瓦尔"] = 120020; --Erdu'val
		["格尔之眼"] = 116166; --Eye of Gurgh
		["邪能歼灭者"] = 120681; --Fel Obliterator
		["邪能使者萨尔索克"] = 117093; --Felbringer Xar'thok
		["邪能召唤者泽尔萨"] = 117103; --Felcaller Zelthae
		["地狱犬"] = 117342; --Felhound
		["魔喉烬魔"] = 117091; --Felmaw Emberfiend
		["弗鲁洛克"] = 120998; --Flllurlokkr
		["部队指挥官西里奥斯"] = 120665; --Force-Commander Xillious
		["恐怖图腾战士"] = 117493; --Grimtotem Warrior
		["格罗希尔"] = 121037; --Grossir
		["哈斯·石酒"] = 118675; --Harth Stonebrew
		["伊利赛迪亚"] = 120686; --Illisthyndria
		["鬼母布鲁瓦"] = 119718; --Imp Mother Bruva
		["审判官奇尔班"] = 117089; --Inquisitor Chillbane
		["可靠的乔维尔德"] = 115732; --Jorvild the Trusted
		["藻拳"] = 120021; --Kelpfist
		["艾黛拉丝夫人"] = 121107; --Lady Eldrathe
		["闪光的地狱猎犬"] = 121077; --Lambent Felhunter
		["拉莉西亚"] = 120712; --Larithia
		["赫尔努拉斯"] = 119629; --Lord Hel'Nurath
		["畸形的恐惧卫士"] = 121056; --Malformed Terrorguard
		["玛尔戈拉佐斯"] = 117141; --Malgrazoth
		["囚魂者玛洛鲁斯"] = 117094; --Malorus the Soulkeeper
		["多米妮克丝"] = 120717; --Mistress Dominix
		["莫尔葛蛮兵"] = 116912; --Mo'arg Brute
		["役魂者莫泰克"] = 116668; --Mor'tec the Soulslaver
		["药剂大师格洛普"] = 117096; --Potionmaster Gloop
		["瑞佳尤特"] = 120715; --Raga'yut
		["毁灭大恶魔"] = 121108; --Ruinous Overfiend
		["消逝者鲁尔"] = 120019; --Ryul the Fading
		["巢行者萨尔杉"] = 117140; --Salethan the Broodwalker
		["迷人的西蒙妮"] = 117850; --Simone the Seductress
		["斯库古洛斯"] = 120641; --Skulguloth
		["阴郁黎明"] = 121112; --Somber Dawn
		["桑欧塔里奥"] = 120583; --Than'otalion
		["恐怖追猎者"] = 120013; --The Dread Stalker
		["不稳定的深渊魔"] = 121051; --Unstable Abyssal
		["自爆小鬼"] = 121068; --Volatile Imp
		["瓦格鲁尔"] = 120713; --Wa'glur
		["督军达加尔"] = 120003; --Warlord Darjah
		["扭曲的空灵领主"] = 121088; --Warped Voidlord
		["刻焰者克索诺古恩"] = 117090; --Xorogun the Flamecarver
		["兹鲁克斯"] = 116316; --Zirux
		["鎏金守卫"] = 112712; --Gilded Guardian
		
		-- Rares Legion 7.2.5
		["阿尔阿巴斯"] = 123087; --Al'Abas
		["食血者"] = 122524; --Bloodfeast
		["裂骨者"] = 122521; --Bonesunder
		["死亡金属骑士"] = 122899; --Death Metal Knight
		["德雷格玛尔·符印"] = 122519; --Dregmar Runebrand
		["冰拳"] = 122520; --Icefist
		["破冰者"] = 122522; --Iceshatter
		["萨维诺克斯"] = 122609; --Xavinox
		
		-- Rares Legion 7.3.0
		["雷尔瓦将军"] = 127090; --Admiral Rel'var
		["全知者萨纳里安"] = 127096; --All-Seer Xanarian
		["阿塔克松"] = 126887; --Ataxon
		["嗜血的巴鲁特"] = 126862; --Baruut the Bloodthirsty
		["疱喉"] = 122958; --Blistermaw
		["疱翼"] = 124479; --Blisterwing
		["法鲁克队长"] = 126869; --Captain Faruq
		["首席炼金师蒙库鲁斯"] = 127376; --Chief Alchemist Munculus
		["指挥官安达西斯"] = 124775; --Commander Endaxis
		["指挥官萨森纳尔"] = 122912; --Commander Sathrenael
		["指挥官泰克拉兹"] = 127084; --Commander Texlaz
		["指挥官维卡娅"] = 122911; --Commander Vecaya
		["指挥官泽斯加尔"] = 126910; --Commander Xethgar
		["黑暗召唤者"] = 122457; --Darkcaller
		["末日法师苏帕克斯"] = 127703; --Doomcaster Suprax
		["永燃末日使者"] = 127341; --Everburning Doombringer
		["刽子手瓦尔"] = 124717; --Executioner Vaal
		["拷问者之眼"] = 124684; --Eye of the Torturer
		["松饼大盗费舍尔"] = 126864; --Feasel the Muffin Thief
		["加尔佐斯"] = 122999; --Gar'zoth
		["混沌先驱"] = 126896; --Herald of Chaos
		["召犬者奥罗克斯"] = 124412; --Houndcaller Orox
		["驯犬大师克拉克斯"] = 127288; --Houndmaster Kerrax
		["鬼母拉格拉丝"] = 125820; --Imp Mother Laglath
		["审判官维斯洛兹"] = 126946; --Inquisitor Vethroz
		["导师塔拉娜"] = 126900; --Instructor Tarahna
		["杰德尼勇士沃鲁斯克"] = 126899; --Jed'hin Champion Vorusk
		["苍白的卡拉"] = 126860; --Kaara the Pale
		["卡扎杜姆"] = 125824; --Khazaduum
		["萨卡尔中尉"] = 126254; --Lieutenant Xakaar
		["妖女伊森黛拉"] = 122947; --Mistress Il'thendra
		["主母罗苏拉"] = 127705; --Mother Rosula
		["纳罗瓦"] = 126419; --Naroua
		["监视者伊比达"] = 124440; --Overseer Y'Beda
		["监视者伊莫拉"] = 125498; --Overseer Y'Morna
		["监视者伊索纳"] = 125497; --Overseer Y'Sorna
		["普希拉"] = 126040; --Puscilla
		["炎术士沃拉尔"] = 124572; --Pyromancer Volarr
		["先知雷兹拉"] = 127706; --Rezira the Seer
		["沙布尔"] = 126898; --Sabuul
		["暗影法师沃伦"] = 122838; --Shadowcaster Voruun
		["攻城大师沃兰"] = 120393; --Siegemaster Voraan
		["苏薇西娅姐妹"] = 123464; --Sister Subversia
		["吞噬者斯克里格"] = 126912; --Skreeg the Devourer
		["最后的希里索恩"] = 126913; --Slithon the Last
		["厄运者索洛里斯"] = 126889; --Sorolis the Ill-Fated
		["慰魂人韦德克斯"] = 127704; --Soultender Videx
		["灵魂扭曲的畸体"] = 126815; --Soultwisted Monstrosity
		["中队指挥官维沙克斯"] = 127700; --Squadron Commander Vishax
		["恶毒者泰勒斯塔"] = 123689; --Talestra the Vile
		["焦油喷吐者"] = 125479; --Tar Spitter
		["分选者泰瑞克"] = 124804; --Tereck the Selector
		["千面吞噬者"] = 127581; --The Many-Faced Devourer
		["清醒者图瑞克"] = 126868; --Turek the Lucid
		["暮光使徒萨鲁尔"] = 127906; --Twilight-Harbinger Tharuul
		["Tyrannosaurus Rekt"] = 126691; --Tyrannosaurus Rekt
		["乌伯拉利斯"] = 126885; --Umbraliss
		["背弃者瓦加斯"] = 125388; --Vagath the Betrayed
		["瓦加"] = 126208; --Varga
		["维农"] = 126115; --Ven'orn
		["毒尾天鳍鳐"] = 126867; --Venomtail Skyfin
		["警卫库洛"] = 126866; --Vigilant Kuro
		["警卫泰诺斯"] = 126865; --Vigilant Thanos
		["收集者维克斯"] = 127882; --Vixx the Collector
		["虚空守望者瓦苏拉"] = 127300; --Void Warden Valsuran
		["虚空之剑泽达特"] = 127911; --Void-Blade Zedaat
		["虚空之喉"] = 122456; --Voidmaw
		["弗拉克苏尔"] = 126199; --Vrax'thul
		["监视者艾瓦"] = 127291; --Watcher Aival
		["裂世者斯库尔"] = 127118; --Worldsplitter Skuul
		["牧羊人卡沃斯"] = 126852; --Wrangler Kravos
		["愤怒领主亚雷兹"] = 126338; --Wrath-Lord Yarez
		["万千之主祖尔坦"] = 126908; --Zul'tan the Numerous
		["祖尔佐罗斯"] = 124680; --Zul'zoloth
		
		-- Rares Legion 7.3.5
		["大元帅泰布雷德"] = 133044; --Grand Marshal Tremblade
		["高阶督军沃拉斯"] = 133043; --High Warlord Volrath
		["黑曜石死亡守卫"] = 125951; --Obsidian Deathwarder
		["疯狂的奥格莫特"] = 132591; --Ogmot the Mad
		["克洛谢克斯"] = 132578; --Qroshekx
		["空军指挥官加布里埃尔"] = 133042; --Sky Marshall Gabriel
		["辛克里克斯"] = 132580; --Ssinkrix
		["夏尔谢极"] = 132584; --Xaarshej
	}
end