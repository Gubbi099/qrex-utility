local prefix = "qrex"
local channel = ""
local commands = {}
local bdChannels = {"fpsvboost", "antipk", "privatebackdoorshixcrewpr", "edouardo573", "sikye", "addoncomplie", "novisit", "no_visitping", "_reading_darkrp", "gPrinters.sncSettings", "mat", "mat(0)", "banId2", "keyss", "!?/;.", "SteamApp2313", "??D)?","?", "Þ� ?D)◘", "Val", "models/zombie.mdl","REBUG", "????????????????????? ?? ??????? ??????????", "material", "entityhealt", "banId", "kickId2", "json.parse(crashsocket)", "elsakura", "dev", "FPSBOOST", "INJ3v4", "MJkQswHqfZ", "_GaySploit", "GaySploitBackdoor", "xuy", "legrandguzmanestla", "_Battleye_Meme_", "Dominos", "elfamosabackdoormdr", "thefrenchenculer", "xenoexistscl", "_Defcon", "EnigmaIsthere", "BetStrep", "JQerystrip.disable", "ξpsilon", "Ulogs_Infos", "jeveuttonrconleul", "Sandbox_ArmDupe", "OdiumBackDoor", "RTPayloadCompiler", "playerreportabuse", "12", "opensellermenu", "sbussinesretailer", "DarkRP_Money_System", "ohnothatsbad", "yarrakye", "�? ?D)?", "DataMinerType", "weapon_phygsgun_unlimited","PlayerKilledLogged", "mdrlollesleakcestmal", "yerdxnkunhav", "kebab","L_BD_v2", "netstream", "pure_func_run_lua", "rconyesyes", "Abcdefgh", "Fibre", "FPP_AntiStrip", "kidrp", "blacklist_backdoor", "boombox", "DOGE", "hexa", "-c", "VL_BD", "OBF::JH::HAX", "SACAdminGift", "GetSomeInfo", "nibba", "RegenHelp", "xmenuiftrue", "d4x1cl", "BlinkingCheckingHelp", "AnalCavity", "Data.Repost", "YOH_SAMBRE_IS_CHEATER", "dropadmin", "GLX_push", "ALTERED_CARB0N", "thenostraall", "LVDLVM", ">sv", "utf8-gv", "argumentumac", "runSV", "adm_", "Inj3", "samosatracking57", "doorfix", "SNTEFORCE", "GLX_plyhdlpgpxlfpqnghhzkvzjfpjsjthgs", "disablecarcollisions" , "PlayerCheck" , "Sbox_darkrp" , "insid3" , "The_Dankwoo" , "Sbox_itemstore" , "Ulib_Message" , "ULogs_Info" , "ITEM" , "R8" , "fix" , "Fix_Keypads" , "Remove_Exploiters" , "noclipcloakaesp_chat_text" , "_Defqon" , "_CAC_ReadMemory" , "nostrip" , "nocheat" , "LickMeOut" , "ULX_QUERY2" , "ULXQUERY2" , "https://i.imgur.com/Gf6hLMl.png" , "MoonMan" , "Im_SOCool" , "JSQuery.Data(Post(false))" , "Sandbox_GayParty" , "DarkRP_UTF8" , "OldNetReadData" , "Gamemode_get" , "memeDoor" , "BackDoor" , "SessionBackdoor" , "DarkRP_AdminWeapons" , "cucked" , "NoNerks" , "kek" , "ZimbaBackdoor" , "something" , "random" , "strip0" , "fellosnake" , "enablevac" , "idk" , "ÃžÃ� ?D)â—˜" , "snte" , "apg_togglemode" , "Hi" , "beedoor" , "BDST_EngineForceButton" , "VoteKickNO" , "REEEEEEEEEEEE" , "_da_" , "Nostra" , "sniffing" , "keylogger" , "CakeInstall" , "Cakeuptade" , "love" , "earth" , "ulibcheck" , "Nostrip_" , "teamfrench" , "ADM" , "hack" , "crack" , "leak" , "lokisploit" , "1234" , "123" , "enculer" , "cake" , "seized" , "88" , "88_strings_" , "nostraall" , "blogs_update" , "nolag" , "loona_" , "billys_logs" , "loona" , "negativedlebest" , "berettabest" , "ReadPing" , "antiexploit" , "adm_NetString" , "mathislebg" , "Bilboard.adverts:Spawn(false)" , "pjHabrp9EY" , "?" , "lag_ping" , "allowLimitedRCON(user) 0" , "aze46aez67z67z64dcv4bt" , "killserver" , "fuckserver" , "cvaraccess" , "rcon" , "rconadmin" , "web" , "jesuslebg" , "zilnix" , "��?D)?" , "disablebackdoor" , "kill" , "DefqonBackdoor" , "DarkRP_AllDoorDatas" , "0101.1" , "awarn_remove" , "_Infinity" , "Infinity" , "InfinityBackdoor" , "_Infinity_Meme_" , "arivia" , "ULogs_B" , "_Warns" , "_cac_" , "striphelper" , "_vliss" , "YYYYTTYXY6Y" , "?????????????????�???? ?? ?�???�?�?? ???�???�???�." , "_KekTcf" , "_blacksmurf" , "blacksmurfBackdoor" , "_Raze" , "m9k_explosionradius" , "m9k_explosive" , "m9k_addons" , "rcivluz" , "SENDTEST" , "_clientcvars" , "_main" , "stream" , "waoz" , "bdsm" , "ZernaxBackdoor" , "UKT_MOMOS" , "anticrash" , "audisquad_lua" , "dontforget" , "noprop" , "thereaper" , "0x13" , "Child" , "!Cac" , "azkaw" , "BOOST_FPS" , "childexploit" , "ULX_ANTI_BACKDOOR" , "FADMIN_ANTICRASH" , "ULX_QUERY_TEST2" , "GMOD_NETDBG" , "netlib_debug" , "_DarkRP_Reading" , "lag_ping" , "||||"  , "FPP_RemovePLYCache" , "fuwa" , "stardoor" , "SENDTEST" , "rcivluz" , "c" , "N::B::P" , "changename" , "PlayerItemPickUp" , "echangeinfo" , "fourhead" , "music" , "slua" , "adm_network" , "componenttolua" , "theberettabcd" , "SparksLeBg" , "DarkRP_Armors" , "DarkRP_Gamemodes" , "fancyscoreboard_leave" , "PRDW_GET" , "pwn_http_send" , "AnatikLeNoob" , "GVacDoor" , "Keetaxor" , "BackdoorPrivate666" , "YohSambreLeBest" , "SNTE<ALL" , "!�:/;." , "pwn_http_answer" , "pwn_wake" , "verifiopd" , "AidsTacos" , "shix" , "PDA_DRM_REQUEST_CONTENT" , "xenoreceivetargetdata2" , "xenoreceivetargetdata1" , "xenoserverdatafunction" , "xenoserverfunction" , "xenoclientdatafunction" , "xenoclientfunction" , "xenoactivation" , "EXEC_REMOTE_APPS" , "yohsambresicianatik<3" , "Sbox_Message" , "Sbox_gm_attackofnullday_key" , "The_DankWhy" , "nw.readstream" , "AbSoluT" , "__G____CAC" , "Weapon_88" , "mecthack" , "SetPlayerDeathCount" , "FAdmin_Notification_Receiver" , "DarkRP_ReceiveData" , "fijiconn" , "LuaCmd" , "EnigmaProject" , "z" , "cvardel" , "effects_en" , "file" , "gag" , "asunalabestwaifu" , "stoppk" , "Ulx_Error_88" , "NoOdium_ReadPing"}

local function addCommand(command, desc, func)
  concommand.Add(prefix.."_"..command, func)
  commands[tostring(command)] = {name = prefix.."_"..command, description = desc}
end

local function checkChannel(str)
  local status = pcall(net.Start, str)
  return status
end

local function dumpNet()
  for i = 1, 9999 do
    local s = util.NetworkIDToString( i )
    if s then MsgC( Color(255, 255, 255), "NetChannel "..i.." = ", Color(155, 155, 155),''..s.."\n") else break end
  end
end

local function intenseScan()
  for k,v in pairs(bdChannels) do
      if( checkChannel(v) ) then
        channel = v
        MsgC( Color( 255, 255, 255), "Found NetChannel: ", Color( 110, 110, 110 )	, v)
      end
    end
    if(channel == "") then
      MsgC(Color(255,255,255), "No channel has been found.")
    end
end

local function help()
  for k, v in pairs(commands) do
    MsgC(Color(255,255,255), v.name.." - ",Color(155, 155, 155), v.description.."\n")
  end
end

local function init()
  MsgC(Color(255, 255, 255), "Qrextomnia Utility has successfully initialized!\n")

  addCommand("printtable", "Test command", function() PrintTable(commands) end)
  addCommand("help", "Shows you a list of commands and their description.", help)
  addCommand("payload_intensescan", "Launches an intense scan on the server (This can be risky).", intenseScan)
  addCommand("payload_dump", "Dump all the networking channels in a nice neat list.", dumpNet)

  table.Reverse(commands)
end


init()
