local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local healthTexts = {} -- Store health text labels for players
local MAX_DISTANCE = 300 -- Maximum distance for health text visibility (in studs)

-- Toggle the health text ESP
_G.healthTextESP = not _G.healthTextESP

-- Function to notify the user
local function Notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

-- Notify when the health text ESP is toggled
if _G.healthTextESP then
    Notify("Health Text ESP Enabled", "🎭  Hexploit 🎭")
else
    Notify("Health Text ESP Disabled", "🎭  Hexploit 🎭")
end

-- Function to create a health text for a player (showing health %)
local function CreateHealthText(player)
    if healthTexts[player] then return end -- Avoid duplicates

    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 100, 0, 30)
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = head
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)

    local healthText = Instance.new("TextLabel")
    healthText.Size = UDim2.new(1, 0, 1, 0)
    healthText.BackgroundTransparency = 1
    healthText.TextColor3 = Color3.new(1, 1, 1)
    healthText.TextStrokeTransparency = 0.6
    healthText.TextStrokeColor3 = Color3.new(0, 0, 0)
    healthText.TextSize = 10
    healthText.Parent = billboardGui
    billboardGui.Parent = character

    healthTexts[player] = billboardGui

    -- Dynamic update for health text
    local connection
    connection = RunService.RenderStepped:Connect(function()
        if not character:FindFirstChild("Humanoid") or not billboardGui.Parent or not _G.healthTextESP then
            connection:Disconnect() -- Stop updating if conditions aren't met
            healthTexts[player] = nil
            return
        end

        local humanoid = character.Humanoid
        local healthPercent = humanoid.Health / humanoid.MaxHealth * 100
        healthText.Text = string.format("%.0f%%", healthPercent)

        if healthPercent > 50 then
            healthText.TextColor3 = Color3.new(0, 1, 0)
        elseif healthPercent > 20 then
            healthText.TextColor3 = Color3.new(1, 1, 0)
        else
            healthText.TextColor3 = Color3.new(1, 0, 0)
        end
    end)
end

-- Function to remove health texts
local function RemoveHealthText(player)
    local healthText = healthTexts[player]
    if healthText then
        healthText:Destroy()
        healthTexts[player] = nil
    end
end

-- Function to check if the player is within range
local function IsWithinRange(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return distance <= MAX_DISTANCE
    end
    return false
end

-- Update health texts periodically
RunService.Heartbeat:Connect(function()
    if _G.healthTextESP then
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                if IsWithinRange(player) then
                    if not healthTexts[player] then
                        CreateHealthText(player)
                    end
                else
                    RemoveHealthText(player)
                end
            end
        end
    else
        -- Remove all health texts if disabled
        for player, _ in pairs(healthTexts) do
            RemoveHealthText(player)
        end
    end
end)

-- Handle players joining and leaving
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if _G.healthTextESP and IsWithinRange(player) then
            CreateHealthText(player)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    RemoveHealthText(player)
end)
