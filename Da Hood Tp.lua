-- This script should be placed in a LocalScript (e.g., StarterPlayerScripts) or ServerScript (if you want server-side functionality)
-- You may need to adjust the teleport target coordinates or player references based on your use case.

local player = game.Players.LocalPlayer -- for LocalScript, replace with game.Players.<target_player> for ServerScript
local character = player.Character or player.CharacterAdded:Wait()
local targetPosition = Vector3.new(100, 10, 100) -- Set your desired coordinates here

-- Teleport function
local function teleportToTarget()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    end
end

-- Example: Teleport when a key is pressed (e.g., "T" key)
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.T then -- Change "T" to any key you prefer
        teleportToTarget()
    end
end)
