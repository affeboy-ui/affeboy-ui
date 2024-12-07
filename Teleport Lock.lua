--[[ 
Controls:
Reinject the script to toggle the teleportation system on or off.
Press "X" to trigger teleportation sequences while it is enabled.

First execution: Teleportation system loads and works.
Second execution: Teleportation system unloads and disables hotkey.
Third execution: Teleportation system reinitializes and works again.
]]

-- Initialize state tracking
if _G.teleportActive == nil then
    _G.teleportActive = false
end

local teleporting = false
local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local steps = {"forward", "right", "backward", "left"} -- Movement sequence
local stepSize = 15
local initialY = nil
local teleportThread = nil
local Workspace = game.Workspace

local function stopTeleportSequence()
    if teleportThread then
        teleporting = false
        teleportThread = nil
    end
end

local function safeGroundPosition(targetPosition)
    -- Cast a ray down to safely detect ground height
    local rayOrigin = targetPosition + Vector3.new(0, 50, 0) -- Start 50 studs above
    local rayDirection = Vector3.new(0, -100, 0) -- Look down for 100 studs
    local rayResult = Workspace:Raycast(rayOrigin, rayDirection)

    if rayResult then
        -- Clamp the player's Y value safely close to the detected ground
        return Vector3.new(targetPosition.X, rayResult.Position.Y + 2, targetPosition.Z) -- Hover safely 2 studs above
    end

    -- Default fallback to prevent floating issues
    return Vector3.new(targetPosition.X, targetPosition.Y, targetPosition.Z)
end

local function teleportSequence()
    if teleportThread then return end -- Prevent multiple sequences running
    teleporting = true

    teleportThread = coroutine.create(function()
        while teleporting do
            for _, step in ipairs(steps) do
                if not teleporting then break end
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = player.Character.HumanoidRootPart
                    local targetPos = hrp.Position

                    if step == "forward" then
                        targetPos = hrp.Position + Vector3.new(0, 0, stepSize)
                    elseif step == "right" then
                        targetPos = hrp.Position + Vector3.new(stepSize, 0, 0)
                    elseif step == "backward" then
                        targetPos = hrp.Position + Vector3.new(0, 0, -stepSize)
                    elseif step == "left" then
                        targetPos = hrp.Position + Vector3.new(-stepSize, 0, 0)
                    end

                    -- Clamp to ensure we only teleport to valid ground positions
                    local safePos = safeGroundPosition(targetPos)

                    -- Perform the teleport safely
                    hrp.CFrame = CFrame.new(safePos)
                    wait(0.1) -- Wait 1 second between steps
                end
            end
        end
    end)

    coroutine.resume(teleportThread)
end

local function toggleTeleportationSystem()
    if _G.teleportActive then
        -- Unload system
        stopTeleportSequence()
        _G.teleportActive = false

        if _G.hotkeyConnection then
            _G.hotkeyConnection:Disconnect()
            _G.hotkeyConnection = nil
        end

        -- Notification
        game.StarterGui:SetCore("SendNotification", {
            Title = "Teleport Lock Unloaded",
            Text = "🎭  Hexploit 🎭",
            Duration = 5
        })

        print("Teleportation system has been unloaded.")
    else
        -- Load system
        _G.teleportActive = true

        -- Notification
        game.StarterGui:SetCore("SendNotification", {
            Title = "Teleport Lock Loaded",
            Text = "🎭  Hexploit 🎭",
            Duration = 5
        })

        print("Teleportation system has been loaded.")

        -- Set up hotkey listener
        if _G.hotkeyConnection then
            _G.hotkeyConnection:Disconnect()
        end

        _G.hotkeyConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then return end

            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.X then
                if not teleporting then
                    print("Hotkey pressed: Starting teleport sequence...")
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Lock Teleport Enabled",
                        Text = "🎭  Hexploit 🎭",
                        Duration = 5
                    })
                    teleportSequence()
                else
                    print("Hotkey pressed: Stopping teleport sequence...")
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Lock Teleport Disabled",
                        Text = "🎭  Hexploit 🎭",
                        Duration = 5
                    })
                    stopTeleportSequence()
                end
            end
        end)
    end
end

-- Execute toggle on script run
toggleTeleportationSystem()
