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
    ["rage_cframe_fly_enabled"] = false,
    ["rage_cframe_fly_keybind"] = Enum.KeyCode.B, -- Toggle key set to B
    ["rage_cframe_fly_amount"] = 110 -- Fly speed set to 200
}

--// Fly functionality
utility.new_connection(run_service.Heartbeat, function(delta_time)
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

--// Keybind to toggle fly
user_input_service.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == flags["rage_cframe_fly_keybind"] then
        flags["rage_cframe_fly_enabled"] = not flags["rage_cframe_fly_enabled"]
        print("CFrame Fly " .. (flags["rage_cframe_fly_enabled"] and "Enabled" or "Disabled"))
    end
end)
