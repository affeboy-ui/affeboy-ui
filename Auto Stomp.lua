--[[
Â© 2024 YourName | Auto Stomp Script
Created and distributed by YourName
December 5, 2024

Instructions:
Step 1: Inject this script into any game using a Lua injector.
Step 2: Press the "F" key to toggle the auto stomp script on or off.

Controls:
Press "F" to toggle auto stomp while the script is loaded.
Reinject the script to unload it and disable the functionality.
]]

-- Toggles the auto stomp script between on or off on every script run
_G.autoStomp = not _G.autoStomp

if _G.autoStompReady == nil then
    -- Ensures this part only runs once to save resources
    _G.autoStompReady = true

    -- Displays readiness notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Stomp Loaded";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })

    -- Variables
    local stompRemote = game.ReplicatedStorage.MainEvent -- The event you're firing
    local player = game.Players.LocalPlayer
    local stompInterval = 0.10 -- seconds between each stomp
    local isLooping = false -- Start with stomping disabled

    -- Function to display notifications
    local function showNotification(title, text, duration)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 2 -- Default duration of 2 seconds
        })
    end

    -- Function to toggle stomping with the F key
    local function onKeyPress(input)
        if _G.autoStomp and input.KeyCode == Enum.KeyCode.F then
            isLooping = not isLooping
            if isLooping then
                showNotification("Auto Stomp Enabled", "🎭  Hexploit 🎭", 3)
                task.spawn(function()
                    while isLooping do
                        if player.Character and player.Character:FindFirstChild("Humanoid") then
                            stompRemote:FireServer("Stomp")
                        end
                        wait(stompInterval)
                    end
                end)
            else
                showNotification("Auto Stomp Disabled", "🎭  Hexploit 🎭", 3)
            end
        end
    end

    -- Connect key press event
    _G.autoStompKeyConnection = game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
else
    -- Disconnect the key press event
    if _G.autoStompKeyConnection then
        _G.autoStompKeyConnection:Disconnect()
        _G.autoStompKeyConnection = nil
    end

    -- Reset the stomp loop
    _G.autoStomp = false
    _G.autoStompReady = nil

    -- Displays unloading notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Stomp Unloaded";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })
end
