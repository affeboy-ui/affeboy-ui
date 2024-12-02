local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local healthBars = {}  -- Store health bars for players

local MAX_DISTANCE = 300  -- Maximum distance for health bar visibility (in studs)

-- Function to create a health bar for a player
local function CreateHealthBar(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = character
    billboardGui.Size = UDim2.new(0, 50, 0, 6)
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = head
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)

    local backgroundFrame = Instance.new("Frame")
    backgroundFrame.Parent = billboardGui
    backgroundFrame.Size = UDim2.new(1, 0, 1, 0)
    backgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    backgroundFrame.BorderSizePixel = 0

    local healthBar = Instance.new("Frame")
    healthBar.Parent = backgroundFrame
    healthBar.Size = UDim2.new(1, 0, 1, 0)
    healthBar.BackgroundColor3 = Color3.new(0, 1, 0)
    healthBar.BorderSizePixel = 0

    local outline = Instance.new("UIStroke")
    outline.Parent = healthBar
    outline.Thickness = 2
    outline.Color = Color3.new(0, 0, 0)
    outline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    healthBars[player] = billboardGui  -- Store the entire BillboardGui for later removal

    -- Update health bar dynamically based on health
    RunService.RenderStepped:Connect(function()
        if character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            local healthPercent = humanoid.Health / humanoid.MaxHealth
            healthBar.Size = UDim2.new(healthPercent, 0, 1, 0)

            if healthPercent > 0.5 then
                healthBar.BackgroundColor3 = Color3.new(0, 1, 0)
            elseif healthPercent > 0.2 then
                healthBar.BackgroundColor3 = Color3.new(1, 1, 0)
            else
                healthBar.BackgroundColor3 = Color3.new(1, 0, 0)
            end
        end
    end)
end

-- Function to check if the player is within range for the health bar to appear
local function IsWithinRange(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return distance <= MAX_DISTANCE
    end
    return false
end

-- Handle player join and leave to ensure health bars are updated
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if IsWithinRange(player) then
            CreateHealthBar(player)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    if healthBars[player] then
        healthBars[player]:Destroy()  -- Destroy the entire BillboardGui
        healthBars[player] = nil
    end
end)

-- Periodically update health bars every 1 second
while true do
    -- Update health bars for players within range
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            if IsWithinRange(player) then
                -- Create health bar if it doesn't exist
                if not healthBars[player] then
                    CreateHealthBar(player)
                end
            else
                -- Remove health bar if player is out of range
                if healthBars[player] then
                    healthBars[player]:Destroy()  -- Destroy the BillboardGui
                    healthBars[player] = nil
                end
            end
        end
    end
    wait(1)
end
