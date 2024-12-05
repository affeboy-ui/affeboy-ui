-- Script to reset the character and show a notification

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Show the notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "🖤🦇Emo aah🥀⛓",
    Text = "🎭  Hexploit 🎭",
    Duration = 2
})

-- Force kill the character immediately
character:BreakJoints()
