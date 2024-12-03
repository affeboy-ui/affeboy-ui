--[[ 
Controls:
Reinject the script to toggle the Cframe Speed script on or off.
Press "V" to toggle Cframe Speed when the script is loaded.

First execution will load the speed toggle.
Second execution will unload the speed toggle.
]]

-- Ensure proper initialization and unloading
if _G.speedBoostInitialized == nil then
    _G.speedBoostInitialized = false
end

-- If the script is already loaded, we unload it
if _G.speedBoostInitialized then
    -- Disable the speed boost and clean up resources
    _G.speedBoostEnabled = false
    _G.speedBoostInitialized = false
    game.StarterGui:SetCore("SendNotification", {
        Title = "Cframe Speed Unloaded";
        Text = "🐵Affeboy Universal🐒";
        Duration = 5;
    })

    -- Disconnect the hotkey listener to stop the toggle functionality
    if _G.toggleListener then
        _G.toggleListener:Disconnect()
        _G.toggleListener = nil
    end

    -- Stop RenderStepped connection
    if _G.renderSteppedConnection then
        _G.renderSteppedConnection:Disconnect()
        _G.renderSteppedConnection = nil
    end
else
    -- Otherwise, load the speed boost functionality
    _G.speedBoostEnabled = true
    _G.speedBoostInitialized = true
    game.StarterGui:SetCore("SendNotification", {
        Title = "Cframe Speed Loaded";
        Text = "🐵Affeboy Universal🐒";
        Duration = 5;
    })

    -- Variables
    local player = game.Players.LocalPlayer
    local runService = game:GetService("RunService")
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local UserInputService = game:GetService("UserInputService")
    local targetSpeed = 70 -- Target speed equivalent to WalkSpeed = 16 * 5

    -- Speed boost toggle (on "V" key press)
    _G.speedBoostActive = false

    -- Hotkey listener (V key press)
    _G.toggleListener = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end

        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.V then
            -- Toggle speed boost if the script is enabled
            if _G.speedBoostEnabled then
                _G.speedBoostActive = not _G.speedBoostActive

                if _G.speedBoostActive then
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Cframe Speed On";
                        Text = "🐵Affeboy Universal🐒";
                        Duration = 5;
                    })

                    -- Activate speed boost
                    _G.renderSteppedConnection = runService.RenderStepped:Connect(function(deltaTime)
                        if _G.speedBoostActive and humanoidRootPart and humanoid then
                            local moveDirection = humanoid.MoveDirection
                            humanoidRootPart.CFrame = humanoidRootPart.CFrame + (moveDirection * targetSpeed * deltaTime)
                        end
                    end)
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Cframe Speed Off";
                        Text = "🐵Affeboy Universal🐒";
                        Duration = 5;
                    })

                    -- Stop speed boost
                    if _G.renderSteppedConnection then
                        _G.renderSteppedConnection:Disconnect()
                        _G.renderSteppedConnection = nil
                    end
                end
            end
        end
    end)
end
