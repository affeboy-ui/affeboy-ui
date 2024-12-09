--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

if (_G.isNoSeatsEnabled==nil) then _G.isNoSeatsEnabled=false;end local function v0(v2) local v3=game:GetDescendants();for v6=44 -(35 + 8) , #v3 do local v7=0;local v8;while true do if (v7==(0 -0)) then v8=v3[v6];if (v8.ClassName~="Seat") then continue;end v7=1;end if (v7==(1267 -(97 + 1169))) then v8.CanTouch= not v2;break;end end end end local function v1(v4,v5) game:GetService("StarterGui"):SetCore("SendNotification",{Title=v4,Text=v5,Duration=5});end if _G.isNoSeatsEnabled then local v9=1065 -(68 + 997) ;while true do if (v9==(1271 -(226 + 1044))) then v0(false);break;end if (v9==(0 -0)) then print("Script executed: No Seats disabled");v1("No Seats Loaded","🎭  Hexploit 🎭");v9=1;end end else local v10=117 -(32 + 85) ;while true do if (1==v10) then v0(true);break;end if (v10==(0 + 0)) then print("Script executed: No Seats enabled");v1("No Seats Unloaded","🎭  Hexploit 🎭");v10=1 + 0 ;end end end _G.isNoSeatsEnabled= not _G.isNoSeatsEnabled;
