--// Required services and variables
local run_service = game:GetService("RunService")
local user_input_service = game:GetService("UserInputService")
local local_player = game.Players.LocalPlayer
local utility = {
    has_character = function(player)
        return player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid")
    end,
    new_connection = function(event, callback)
        return event:Connect(callback)
    end
}

--// Configuration flags
local flags = {
    ["rage_cframe_fly_enabled"] = false, -- Initially off
    ["rage_cframe_fly_keybind"] = Enum.KeyCode.B, -- Toggle key set to B
    ["rage_cframe_fly_amount"] = 100 -- Fly speed set to 100
}

-- Ensure proper initialization and unloading
if _G.flyScriptInitialized == nil then
    _G.flyScriptInitialized = false
end

-- If the script is already loaded, we unload it
if _G.flyScriptInitialized then
    -- Disable the fly functionality
    flags["rage_cframe_fly_enabled"] = false
    _G.flyScriptInitialized = false

    -- Send notification for unloading
    game.StarterGui:SetCore("SendNotification", {
        Title = "Fly Mode Unloaded";
        Text = "🐵Affeboy Universal🐒";
        Duration = 5;
    })

    -- Disconnect the hotkey listener
    if _G.flyToggleListener then
        _G.flyToggleListener:Disconnect()
        _G.flyToggleListener = nil
    end

    -- Stop RenderStepped connection for fly
    if _G.flyRenderSteppedConnection then
        _G.flyRenderSteppedConnection:Disconnect()
        _G.flyRenderSteppedConnection = nil
    end
else
    -- Otherwise, load the fly mode functionality
    _G.flyScriptInitialized = true

    -- Send notification for loading
    game.StarterGui:SetCore("SendNotification", {
        Title = "Fly Mode Loaded";
        Text = "🐵Affeboy Universal🐒";
        Duration = 5;
    })

    -- Fly functionality (initially disabled)
    _G.flyRenderSteppedConnection = run_service.Heartbeat:Connect(function(delta_time)
        if flags["rage_cframe_fly_enabled"] and utility.has_character(local_player) then
            local move_direction = local_player.Character.Humanoid.MoveDirection
            local hrp = local_player.Character.HumanoidRootPart

            -- Vertical movement based on key input
            local vertical_speed = (user_input_service:IsKeyDown(Enum.KeyCode.Space) and 1 or user_input_service:IsKeyDown(Enum.KeyCode.LeftShift) and -1 or 0)
            local vertical_movement = Vector3.new(0, vertical_speed, 0)

            -- Combine horizontal and vertical movement for consistent speed
            local movement = (move_direction + vertical_movement).Unit * flags["rage_cframe_fly_amount"] * delta_time

            -- Update position using CFrame
            if movement.Magnitude > 0 then
                hrp.CFrame = hrp.CFrame + movement
            end

            -- Adjust velocity to prevent conflicts
            hrp.Velocity = Vector3.new(0, 0, 0)
        end
    end)

    -- Hotkey listener (B key press)
    _G.flyToggleListener = user_input_service.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end

        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == flags["rage_cframe_fly_keybind"] then
            -- Toggle fly mode
            flags["rage_cframe_fly_enabled"] = not flags["rage_cframe_fly_enabled"]

            -- Send notification when toggling fly mode
            game.StarterGui:SetCore("SendNotification", {
                Title = "Cframe Flight " .. (flags["rage_cframe_fly_enabled"] and "Enabled" or "Disabled");
                Text = "🐵Affeboy Universal🐒";
                Duration = 5;
            })
        end
    end)
end
