--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

_G.animCartoonyActive= not _G.animCartoonyActive;local v0=game.Players.LocalPlayer;local v1=v0.Character or v0.CharacterAdded:Wait() ;local function v2(v6,v7) game.StarterGui:SetCore("SendNotification",{Title=v6,Text=v7,Duration=5});end local function v3(v8) v8.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=742637544";v8.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=742638445";v8.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=742640026";v8.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=742638842";v8.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=742637942";v8.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=742636889";v8.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=742637151";end local function v4(v16) v16.idle.Animation1.AnimationId="http://www.roblox.com/asset/?id=2510196951";v16.idle.Animation2.AnimationId="http://www.roblox.com/asset/?id=2510197257";v16.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=2510202577";v16.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=2510198475";v16.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=2510197830";v16.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=2510195892";v16.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=2510192778";end local function v5() local v24=v1:WaitForChild("Animate");if _G.animCartoonyActive then print("Applying Cartoony animations...");v3(v24);v2("Cartoony Animations Loaded","🎭 Hexploit 🎭");else print("Resetting animations to default...");v4(v24);v2("Reset Animations To R15","🎭  Hexploit 🎭");end end v5();
