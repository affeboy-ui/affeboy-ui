--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

if (_G.spinBotInitialized==nil) then _G.spinBotInitialized=false;end if _G.spinBotInitialized then local v0=0;local v1;local v2;local v3;local v4;while true do if (v0==(7 -3)) then if v4 then v4:Destroy();end break;end if (v0==(2 + 0)) then v2=v1.Character;if v2 then local v18=0;local v19;local v20;while true do if (v18==(1638 -(1523 + 114))) then if (v19 and v20) then local v21=0 + 0 ;while true do if (v21==(0 -0)) then v19.CFrame=CFrame.new(v19.Position);v20.AutoRotate=true;break;end end end break;end if (v18==(1065 -(68 + 997))) then v19=v2:FindFirstChild("HumanoidRootPart");v20=v2:FindFirstChildOfClass("Humanoid");v18=1271 -(226 + 1044) ;end end end v0=12 -9 ;end if (v0==0) then _G.spinBotActive=false;_G.spinBotInitialized=false;v0=118 -(32 + 85) ;end if (v0==3) then v3=v1.Character:WaitForChild("HumanoidRootPart");v4=v3:FindFirstChild("Spinbot");v0=4;end if (v0==(1 + 0)) then game.StarterGui:SetCore("SendNotification",{Title="SpinBot Stopped",Text="🎭  Hexploit 🎭",Duration=2 + 3 });v1=game:GetService("Players").LocalPlayer;v0=2;end end else _G.spinBotActive=true;_G.spinBotInitialized=true;game.StarterGui:SetCore("SendNotification",{Title="SpinBot Activated",Text="🎭  Hexploit 🎭",Duration=962 -(892 + 65) });local v5=50;local v6=game:GetService("Players").LocalPlayer;repeat task.wait();until v6.Character local v7=v6.Character:WaitForChild("HumanoidRootPart");v6.Character:WaitForChild("Humanoid").AutoRotate=false;local v9=Instance.new("AngularVelocity");v9.Attachment0=v7:WaitForChild("RootAttachment");v9.MaxTorque=math.huge;v9.AngularVelocity=Vector3.new(0 -0 ,v5,0 -0 );v9.Parent=v7;v9.Name="Spinbot";end
