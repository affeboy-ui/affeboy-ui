local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Set your target coordinates here (feel free to modify these)
local targetPosition = Vector3.new(470.71, 48.16, -620.37) -- Change this to your desired coordinates

-- Function to show a notification using SetCore
local function showNotification(message)
    -- Check if the GUI service is available
    local success, errorMsg = pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Teleporting";
            Text = message;
            Duration = 5; -- Display the notification for 5 seconds
        })
    end)

    if not success then
        warn("Notification Error: " .. errorMsg)
    end
end

-- Function to teleport to the target position
local function teleportToTarget()
    if humanoidRootPart then
        -- Show the "Teleporting" notification before teleporting
        showNotification("🐵Affeboy Universal🐒")

        -- Teleport the player
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    end
end

-- Execute the teleport when the script runs
teleportToTarget()

-- De-execute: nothing more to do, script ends
