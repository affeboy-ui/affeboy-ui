-- Force kill the character immediately
character:BreakJoints()

-- Script to reset the character and show a notification

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

if humanoid then
    -- Show the notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "🖤🦇Emo aah🥀⛓",
        Text = "🎭 Hexploit 🎭",
        Duration = 2
    })

    -- Instantly reset the character
    humanoid.Health = 0
else
    -- If no humanoid is found, notify the player
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error",
        Text = "Could not find the Humanoid to reset!",
        Duration = 2
    })
end
