--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

_G.animLevitationActive = not _G.animLevitationActive;
local v0 = game.Players.LocalPlayer;
local v1 = v0.Character or v0.CharacterAdded:Wait();
local function v2(v6, v7)
	game.StarterGui:SetCore("SendNotification", {Title=v6,Text=v7,Duration=(1 + 4)});
end
local function v3(v8)
	local v9 = 877 - (282 + 595);
	while true do
		if (v9 == 2) then
			v8.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936";
			v8.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713";
			v9 = 1640 - (1523 + 114);
		end
		if (v9 == (0 + 0)) then
			v8.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778";
			v8.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087";
			v9 = 1;
		end
		if (v9 == 3) then
			v8.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863";
			break;
		end
		if (v9 == (1 - 0)) then
			v8.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216";
			v8.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382";
			v9 = 2;
		end
	end
end
local function v4(v10)
	local v11 = 1065 - (68 + 997);
	while true do
		if (v11 == (1272 - (226 + 1044))) then
			v10.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830";
			v10.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892";
			v11 = 12 - 9;
		end
		if (v11 == (118 - (32 + 85))) then
			v10.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577";
			v10.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475";
			v11 = 2;
		end
		if (v11 == (3 + 0)) then
			v10.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778";
			break;
		end
		if (v11 == (0 + 0)) then
			v10.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951";
			v10.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257";
			v11 = 1;
		end
	end
end
local function v5()
	local v12 = 957 - (892 + 65);
	local v13;
	while true do
		if (v12 == (0 - 0)) then
			v13 = v1:WaitForChild("Animate");
			if _G.animLevitationActive then
				print("Applying Levitation animations...");
				v3(v13);
				v2("Levitation Animations Loaded", "🎭 Hexploit 🎭");
			else
				print("Resetting animations to default...");
				v4(v13);
				v2("Reset Animations To R15", "🎭  Hexploit 🎭");
			end
			break;
		end
	end
end
v5();
