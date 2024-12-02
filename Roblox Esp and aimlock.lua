local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local cursorLocked = false
local targetHead = nil -- Stores the current target head
local targetPlayer = nil -- Stores the player locked onto
local highlight = nil -- Stores the highlight instance
local healthBars = {}  -- Store health bars for players

local MAX_DISTANCE = 200  -- Maximum distance for health bar visibility (in studs)

-- Function to create a health bar for a player
local function CreateHealthBar(player)
    local character = player.Character
    if character and character:FindFirstChild("Head") then
        local head = character:FindFirstChild("Head")

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

-- Function to find the closest player's head, excluding those with 15% or less health and checking for visibility
local function FindClosestPlayerHead()
    local closestPlayer = nil
    local closestDistance = math.huge

    -- Get the mouse location on screen for more accurate locking
    local mousePosition = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            -- Check if the player has more than 15% health
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health / humanoid.MaxHealth > 0.15 then
                local head = character.Head
                local headPosition = head.Position
                local screenPoint = Camera:WorldToScreenPoint(headPosition)
                local distance = (mousePosition - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude

                -- Perform a raycast to check if the head is visible (not behind a wall)
                local ray = Ray.new(Camera.CFrame.Position, headPosition - Camera.CFrame.Position)
                local hitPart, hitPosition = Workspace:FindPartOnRay(ray, LocalPlayer.Character)

                -- If the ray hits anything other than the player's head, we ignore this player
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

-- Function to add a red highlight to the player
local function AddRedHighlight(player)
    if player and player.Character then
        -- Remove any existing highlight
        if highlight then
            highlight:Destroy()
        end

        -- Create a red highlight for the player
        highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red color
        highlight.FillTransparency = 0.5 -- Optional: set transparency
    end
end

-- Function to remove the highlight from the player
local function RemoveHighlight()
    if highlight then
        highlight:Destroy()
        highlight = nil
    end
end

-- Function to lock the cursor to the nearest player's head
local function LockCursorToHead()
    targetHead, targetPlayer = FindClosestPlayerHead()

    if targetHead then
        -- Add red highlight to the locked player
        AddRedHighlight(targetPlayer)

        -- Hide the mouse when locked
        UserInputService.MouseIconEnabled = false
        
        -- Set the camera to directly look at the target player's head
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
    end
end

-- Function to unlock the cursor
local function UnlockCursor()
    UserInputService.MouseIconEnabled = true -- Show the cursor again
    targetHead = nil
    targetPlayer = nil
    RemoveHighlight() -- Remove the highlight
end

-- Handle key press (C) for locking the cursor
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C then
        cursorLocked = not cursorLocked -- Toggle locking on/off

        if cursorLocked then
            LockCursorToHead() -- Lock onto the nearest player
        else
            UnlockCursor() -- Unlock cursor when released
        end
    end
end)

-- Update loop to follow the cursor's target player when locked
RunService.RenderStepped:Connect(function()
    if cursorLocked then
        if targetHead then
            -- Keep the camera locked on the target player's head
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
        end
    end
end)

-- Periodically update health bars for players within range
RunService.Heartbeat:Connect(function()
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
end)

-- Handle player join and leave to ensure health bars and highlights are updated
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
    if highlight then
        highlight:Destroy()  -- Remove the highlight when the player leaves
    end
end)
