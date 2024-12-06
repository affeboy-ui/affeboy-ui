-- Force kill the character immediately
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

-- Force kill the character
if humanoid then
    -- Show the notification
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "🖤🦇Emo aah🥀⛓",
        Text = "🎭 Hexploit 🎭",
        Duration = 2
    })

    -- Force kill the character immediately
    humanoid.Health = 0  -- Set health to 0 to trigger death
end
