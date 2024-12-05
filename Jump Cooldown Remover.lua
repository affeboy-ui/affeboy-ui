--[[ 
Script for toggling No Jump Cooldown in Da Hood.
This script will disable the jump cooldown on the first execution and enable it again on the second execution.
It also sends notifications when the state changes.
]]

-- Toggle to check the state of the no jump cooldown feature
_G.noJumpCooldownEnabled = not _G.noJumpCooldownEnabled

if _G.noJumpCooldownEnabled then
    -- Disable jump cooldown
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Disable the jump cooldown
    humanoid.UseJumpPower = false
    print("Jump cooldown disabled!")

    -- Send the notification
    game.StarterGui:SetCore("SendNotification", {
        Title = "Jump Cooldown Removed",
        Text = "🎭  Hexploit 🎭",
        Duration = 5
    })
else
    -- Re-enable the jump cooldown (reset to normal)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Re-enable the jump cooldown
    humanoid.UseJumpPower = true
    print("Jump cooldown enabled!")

    -- Send the notification
    game.StarterGui:SetCore("SendNotification", {
        Title = "Jump Cooldown Enabled",
        Text = "🎭  Hexploit 🎭",
        Duration = 5
    })
end

-- Monitor for respawn and reapply the no jump cooldown setting if enabled
game.Players.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    local humanoid = newCharacter:WaitForChild("Humanoid")
    if _G.noJumpCooldownEnabled then
        humanoid.UseJumpPower = false
    else
        humanoid.UseJumpPower = true
    end
end)
