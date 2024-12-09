--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

if (_G.isNoSeatsEnabled==nil) then _G.isNoSeatsEnabled=false;end local function v0(v2) local v3=877 -(282 + 595) ;local v4;while true do if (v3==(1637 -(1523 + 114))) then v4=game:GetDescendants();for v8=1 + 0 , #v4 do local v9=0;local v10;while true do if (v9==0) then v10=v4[v8];if (v10.ClassName=="Seat") then v10.CanTouch= not v2;end break;end end end break;end end end local function v1(v5,v6) game:GetService("StarterGui"):SetCore("SendNotification",{Title=v5,Text=v6,Duration=5});end if _G.isNoSeatsEnabled then print("Script executed: No Seats disabled");v1("No Seats Unloaded","🎭  Hexploit 🎭");v0(false);else local v7=0 -0 ;while true do if (v7==(1065 -(68 + 997))) then print("Script executed: No Seats enabled");v1("No Seats Loaded","🎭  Hexploit 🎭");v7=1271 -(226 + 1044) ;end if (v7==(4 -3)) then v0(true);break;end end end _G.isNoSeatsEnabled= not _G.isNoSeatsEnabled;
