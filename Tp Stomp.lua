-- Toggles the script between on or off on every script run
_G.autoTP = not _G.autoTP

if _G.autoTPReady == nil then
    -- Ensures this part only runs once to save resources
    _G.autoTPReady = true

    -- Displays readiness notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto TP Script";
        Text = "Auto TP Loaded. Press 'F' to teleport and stomp.";
        Duration = 5;
    })

    -- Variables
    local player = game.Players.LocalPlayer
    local range = 15 -- Maximum distance to check (15 studs)
    local healthThreshold = 0.15 -- 15% HP threshold

    -- Function to display notifications
    local function showNotification(title, text, duration)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 2 -- Default duration of 2 seconds
        })
    end

    -- Function to find the nearest player within range with low health
    local function findNearestLowHealthPlayer()
        local nearestPlayer = nil
        local shortestDistance = range

        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("Humanoid") then
                local humanoid = otherPlayer.Character.Humanoid
                local torso = otherPlayer.Character:FindFirstChild("UpperTorso") or otherPlayer.Character:FindFirstChild("LowerTorso")
                local playerRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                if humanoid and torso and playerRoot then
                    local distance = (playerRoot.Position - torso.Position).Magnitude
                    local healthPercentage = humanoid.Health / humanoid.MaxHealth

                    if distance <= range and healthPercentage <= healthThreshold and distance < shortestDistance then
                        shortestDistance = distance
                        nearestPlayer = otherPlayer
                    end
                end
            end
        end

        return nearestPlayer
    end

    -- Function to teleport above a player's torso and stomp
    local function teleportAndStomp(targetPlayer)
        if targetPlayer and targetPlayer.Character then
            local targetHumanoid = targetPlayer.Character:FindFirstChild("Humanoid")
            local torso = targetPlayer.Character:FindFirstChild("UpperTorso") or targetPlayer.Character:FindFirstChild("LowerTorso")
            local playerRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

            if targetHumanoid and torso and playerRoot then
                -- Teleport above the player's torso (3 studs above)
                local targetPosition = torso.Position + Vector3.new(0, 3, 0)
                playerRoot.CFrame = CFrame.new(targetPosition)

                -- Notify about teleportation
                showNotification("Auto TP", "Teleported above " .. targetPlayer.Name, 3)

                -- Wait 0.10 seconds before stomping
                wait(0.10)

                -- Trigger the stomp action
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")

                -- Notify about the stomp
                showNotification("Auto TP", "Stomped " .. targetPlayer.Name, 3)
            end
        else
            showNotification("Auto TP", "No valid target found.", 3)
        end
    end

    -- Function to handle key press
    local function onKeyPress(input)
        if _G.autoTP and input.KeyCode == Enum.KeyCode.F then
            local targetPlayer = findNearestLowHealthPlayer()
            teleportAndStomp(targetPlayer)
        end
    end

    -- Connect key press event
    _G.autoTPKeyConnection = game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
else
    -- Disconnect the key press event
    if _G.autoTPKeyConnection then
        _G.autoTPKeyConnection:Disconnect()
        _G.autoTPKeyConnection = nil
    end

    -- Reset the script state
    _G.autoTP = false
    _G.autoTPReady = nil

    -- Displays unloading notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto TP Script";
        Text = "Auto TP Unloaded. Reinjection required to reload.";
        Duration = 5;
    })
end
