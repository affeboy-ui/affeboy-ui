local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local cursorLocked = false
local targetHead = nil
local targetPlayer = nil
local highlights = {}  -- Store highlights for players
local healthBars = {}  -- Store health bars for players

-- Function to create or update a highlight for a player
local function UpdateHighlight(player, color)
    local character = player.Character or player.CharacterAdded:Wait()

    if not highlights[player] then
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlights[player] = highlight
    end

    local highlight = highlights[player]
    highlight.FillColor = color
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0.5 -- Optional, remove outline if desired
end

-- Function to refresh all highlights, setting non-locked players to white
local function RefreshHighlights()
    -- Set all players to the default white color
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= targetPlayer then
            UpdateHighlight(player, Color3.fromRGB(255, 255, 255)) -- Default to white
        end
    end

    -- Set the locked player to blue
    if targetPlayer then
        UpdateHighlight(targetPlayer, Color3.fromRGB(0, 0, 255)) -- Blue for locked player
    end
end

-- Function to find the closest player's head
local function FindClosestPlayerHead()
    local closestPlayer = nil
    local closestDistance = math.huge
    local mousePosition = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health / humanoid.MaxHealth > 0.15 then
                local head = character.Head
                local headPosition = head.Position
                local screenPoint = Camera:WorldToScreenPoint(headPosition)
                local distance = (mousePosition - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude

                local ray = Ray.new(Camera.CFrame.Position, headPosition - Camera.CFrame.Position)
                local hitPart, _ = Workspace:FindPartOnRay(ray, LocalPlayer.Character)

                if not hitPart or hitPart.Parent == character then
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end

    if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
        return closestPlayer.Character.Head, closestPlayer
    end

    return nil, nil
end

-- Function to lock the cursor to the nearest player's head
local function LockCursorToHead()
    targetHead, targetPlayer = FindClosestPlayerHead()

    if targetHead then
        -- Always update the locked player's highlight to blue
        RefreshHighlights()
        UserInputService.MouseIconEnabled = false
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
    end
end

-- Function to unlock the cursor
local function UnlockCursor()
    UserInputService.MouseIconEnabled = true
    targetHead = nil
    targetPlayer = nil
    RefreshHighlights()
end

-- Function to add a health bar to a player
local function AddHealthBar(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    -- Create a BillboardGui for the health bar
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = character
    billboardGui.Size = UDim2.new(0, 50, 0, 6) -- Smaller size (50x6 pixels)
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = head
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)

    -- Create a frame for the health background
    local backgroundFrame = Instance.new("Frame")
    backgroundFrame.Parent = billboardGui
    backgroundFrame.Size = UDim2.new(1, 0, 1, 0)
    backgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
    backgroundFrame.BorderSizePixel = 0 -- Optional: Remove border

    -- Create a frame for the health bar
    local healthBar = Instance.new("Frame")
    healthBar.Parent = backgroundFrame
    healthBar.Size = UDim2.new(1, 0, 1, 0)
    healthBar.BackgroundColor3 = Color3.new(0, 1, 0) -- Green for health
    healthBar.BorderSizePixel = 0 -- Optional: Remove border

    -- Create the outline for the health bar
    local outline = Instance.new("UIStroke")
    outline.Parent = healthBar
    outline.Thickness = 2
    outline.Color = Color3.new(0, 0, 0) -- Black outline
    outline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    -- Update health bar dynamically
    healthBars[player] = healthBar

    RunService.RenderStepped:Connect(function()
        if character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            local healthPercent = humanoid.Health / humanoid.MaxHealth
            healthBar.Size = UDim2.new(healthPercent, 0, 1, 0)

            -- Change color based on health percentage
            if healthPercent > 0.5 then
                healthBar.BackgroundColor3 = Color3.new(0, 1, 0) -- Green
            elseif healthPercent > 0.2 then
                healthBar.BackgroundColor3 = Color3.new(1, 1, 0) -- Yellow
            else
                healthBar.BackgroundColor3 = Color3.new(1, 0, 0) -- Red
            end
        end
    end)
end

-- Function to ensure health bar and highlight are updated for all players
local function Refresh()
    -- Ensure health bars and highlights are refreshed for all players
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            -- Add health bar if not already done
            if not healthBars[player] then
                AddHealthBar(player)
            end
            -- Update highlight color to white for all players except the locked player
            if player ~= targetPlayer then
                UpdateHighlight(player, Color3.fromRGB(255, 255, 255)) -- Default to white
            end
        end
    end

    -- Ensure the locked player gets updated to blue
    RefreshHighlights()
end

-- Handle player join and leave to ensure data stays updated
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        -- Add health bar and ESP when a player joins or respawns
        AddHealthBar(player)
        UpdateHighlight(player, Color3.fromRGB(255, 255, 255)) -- Default to white
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    -- Remove health bar and highlight when a player leaves
    if healthBars[player] then
        healthBars[player]:Destroy()
        healthBars[player] = nil
    end
    if highlights[player] then
        highlights[player]:Destroy()
        highlights[player] = nil
    end
end)

-- Handle key press (C) for locking the cursor
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C then
        cursorLocked = not cursorLocked

        if cursorLocked then
            LockCursorToHead()
        else
            UnlockCursor()
        end
    end
end)

-- Update loop to follow the cursor's target player when locked
RunService.RenderStepped:Connect(function()
    if cursorLocked and targetHead then
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
    end
end)

-- Periodic refresh using while true do and wait(1)
while true do
    Refresh() -- Update health bars and highlights
    wait(1) -- Wait for 1 second before refreshing again
end