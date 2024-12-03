-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local noClip = false

-- Function to toggle no-clip
local function toggleNoClip()
    noClip = not noClip

    if noClip then
        -- Enable no-clip by setting the humanoid's CanCollide to false for all parts
        for , part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    else
        -- Disable no-clip by resetting CanCollide to true
        for , part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end

        -- Check if the character is stuck in a wall and reposition slightly
        local characterPosition = character.HumanoidRootPart.Position
        local ray = Ray.new(characterPosition, Vector3.new(0, -5, 0))  -- Raycast downwards to check for collisions
        local hit, position = workspace:FindPartOnRay(ray, character)

        -- If the character is stuck in a part, move it slightly
        if hit then
            local offset = Vector3.new(0, 2, 0)  -- Adjust position to avoid being stuck
            character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame + offset)
        end
    end
end

-- Connect the input detection
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    -- Check if the N key was pressed
    if input.KeyCode == Enum.KeyCode.N then
        toggleNoClip()
    end
end)
