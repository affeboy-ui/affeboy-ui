local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local healthTexts = {}  -- Store health text labels for players
local MAX_DISTANCE = 300  -- Maximum distance for health text visibility (in studs)

-- Global flag to toggle health text ESP
_G.healthTextESP = not _G.healthTextESP

-- Function to notify the user
local function Notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

-- Notify when the health text ESP is enabled
if _G.healthTextESP then
    Notify("Health Text ESP Enabled", "🐵Affeboy Universal🐒")
else
    Notify("Health Text ESP Disabled", "🐵Affeboy Universal🐒")
end

-- Function to create a health text for a player (showing health %)
local function CreateHealthText(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = character
    billboardGui.Size = UDim2.new(0, 100, 0, 30)  -- Adjust the size for health text
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = head
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)  -- Move the health text to the position previously used by name tag

    local healthText = Instance.new("TextLabel")
    healthText.Parent = billboardGui
    healthText.Size = UDim2.new(1, 0, 1, 0)  -- Full size of the BillboardGui
    healthText.BackgroundTransparency = 1
    healthText.TextColor3 = Color3.new(1, 1, 1)  -- White text color
    healthText.TextStrokeTransparency = 0.6  -- Adjust outline visibility
    healthText.TextStrokeColor3 = Color3.new(0, 0, 0)  -- Black stroke for visibility
    healthText.TextSize = 10  -- Smaller base text size

    -- Update health text dynamically based on health
    RunService.RenderStepped:Connect(function()
        if character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            local healthPercent = humanoid.Health / humanoid.MaxHealth * 100  -- Calculate health percentage
            healthText.Text = string.format("%.0f%%", healthPercent)  -- Update the health text to show percentage

            -- Color the text based on the health percentage
            if healthPercent > 50 then
                healthText.TextColor3 = Color3.new(0, 1, 0)  -- Green for high health
            elseif healthPercent > 20 then
                healthText.TextColor3 = Color3.new(1, 1, 0)  -- Yellow for medium health
            else
                healthText.TextColor3 = Color3.new(1, 0, 0)  -- Red for low health
            end
        end
    end)
end

-- Function to remove health texts
local function RemoveHealthTexts()
    for _, healthText in pairs(healthTexts) do
        if healthText then
            healthText.Parent:Destroy()  -- Destroy the entire BillboardGui containing the text
        end
    end
    healthTexts = {}  -- Clear the healthTexts table
end

-- Function to check if the player is within range for the health text to appear
local function IsWithinRange(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return distance <= MAX_DISTANCE
    end
    return false
end

-- Handle player join and leave to ensure health texts are updated
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if _G.healthTextESP and IsWithinRange(player) then
            CreateHealthText(player)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    -- Remove health text when player leaves
    if healthTexts[player] then
        healthTexts[player].Parent:Destroy()  -- Destroy the entire BillboardGui
        healthTexts[player] = nil
    end
end)

-- Periodically update health texts every 1 second
while true do
    -- If health text ESP is enabled
    if _G.healthTextESP then
        -- Update health texts for players within range
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                if IsWithinRange(player) then
                    -- Create health text if it doesn't exist
                    if not healthTexts[player] then
                        CreateHealthText(player)
                    end
                else
                    -- Remove health text if player is out of range
                    if healthTexts[player] then
                        healthTexts[player].Parent:Destroy()  -- Destroy the BillboardGui
                        healthTexts[player] = nil
                    end
                end
            end
        end
    else
        -- If health text ESP is disabled, remove all health texts
        RemoveHealthTexts()
    end
    wait(1)
end
