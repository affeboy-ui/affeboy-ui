--[[ 
Controls:
Reinject the script to toggle the SpinBot on or off.
First execution will start the SpinBot.
Second execution will stop the SpinBot and reset the player model's position and orientation.
]]

-- Ensure proper initialization and unloading
if _G.spinBotInitialized == nil then
    _G.spinBotInitialized = false
end

-- If the script is already loaded, we unload it (stopping the spinbot)
if _G.spinBotInitialized then
    -- Disable the spinbot and clean up resources
    _G.spinBotActive = false
    _G.spinBotInitialized = false
    game.StarterGui:SetCore("SendNotification", {
        Title = "SpinBot Stopped";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })

    -- Reset the player model's position and orientation
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    if character then
        local humanoidRoot = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if humanoidRoot and humanoid then
            -- Reset orientation and position
            humanoidRoot.CFrame = CFrame.new(humanoidRoot.Position) -- Reset position and orientation
            humanoid.AutoRotate = true  -- Ensure the player can rotate normally again
        end
    end

    -- Stop the spinning by removing the AngularVelocity instance if it exists
    local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
    local velocity = humRoot:FindFirstChild("Spinbot")
    if velocity then
        velocity:Destroy()
    end
else
    -- Otherwise, load the spinbot functionality (start spinning)
    _G.spinBotActive = true
    _G.spinBotInitialized = true
    game.StarterGui:SetCore("SendNotification", {
        Title = "SpinBot Activated";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })

    -- Variables
    local speed = 50
    local plr = game:GetService("Players").LocalPlayer
    repeat task.wait() until plr.Character
    local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
    plr.Character:WaitForChild("Humanoid").AutoRotate = false

    -- Set up AngularVelocity for spinning
    local velocity = Instance.new("AngularVelocity")
    velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
    velocity.MaxTorque = math.huge
    velocity.AngularVelocity = Vector3.new(0, speed, 0)
    velocity.Parent = humRoot
    velocity.Name = "Spinbot"
end
