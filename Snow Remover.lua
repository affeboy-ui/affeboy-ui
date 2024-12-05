--[[
Â© 2022 WeAreDevs | The WeAreDevs Infinite Jump script
Created and distributed by https://wearedevs.net/scripts
March 9, 2022

Step 1: Inject this script into any game using a Lua injector like JJSploit
Step 2: When you get the ready notification, spam the space bar to jump as many times as you want

Controls:
Reinject the script to toggle the infinite jump script on or off.
Execute Lua "G.infinjump = true" to explicitly turn the infinite jump script on
Execute Lua "G.infinjump = false" to explicitly turn the infinite jump script off
]]

if _G.snowRemoved == nil then
    -- Ensures the snow is removed only once to save resources
    _G.snowRemoved = true
    
    -- Notify that the snow remover has been enabled
    game.StarterGui:SetCore("SendNotification", {
        Title = "Snow Disabled";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })
    
    -- Disable snow by hiding SNOWBALLFRAME and moving SnowBlock
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local snowBallFrame = playerGui:FindFirstChild("MainScreenGui"):FindFirstChild("SNOWBALLFRAME")
    if snowBallFrame then
        snowBallFrame.Visible = false
    end

    local ignoredFolder = workspace:FindFirstChild("Ignored")
    if ignoredFolder then
        -- Move SnowBlock to ReplicatedStorage and disable particles
        for _, object in pairs(ignoredFolder:GetDescendants()) do
            if object.Name == "SnowBlock" then
                object.Parent = game:GetService("ReplicatedStorage")  -- Move SnowBlock to ReplicatedStorage
            end
            if object:IsA("ParticleEmitter") or object:IsA("Trail") then
                object.Enabled = false  -- Disable particle effects
            end
        end
    end
else
    -- Snow already removed, no need to restore anything
end
