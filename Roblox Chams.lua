--[[ 
Toggles the cham effect between on or off on every script run
Execute Lua "_G.chams = true" to explicitly turn the chams effect on
Execute Lua "_G.chams = false" to explicitly turn the chams effect off
]]

-- Toggle the cham effect between on or off on every script run
_G.chams = not _G.chams

-- The actual cham effect
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local playerHighlights = {}  -- Store highlights for players
local MAX_DISTANCE = 300  -- Maximum distance for chams effect (in studs)
local highlightColor = Color3.fromRGB(255, 255, 255)  -- White color for chams

-- Function to create a cham (highlight) effect for a player
local function CreateCham(player)
    local character = player.Character or player.CharacterAdded:Wait()
    if not character:FindFirstChild("HumanoidRootPart") then return end

    -- Create the highlight object for the player's character
    local highlight = Instance.new("Highlight")
    highlight.Name = "ChamHighlight"
    highlight.Parent = character
    highlight.Adornee = character  -- Set the highlight target to the entire character
    highlight.FillColor = highlightColor  -- Set color to white
    highlight.FillTransparency = 0.5  -- Make the highlight semi-transparent
    highlight.OutlineTransparency = 1  -- Fully transparent outline (no outline)

    playerHighlights[player] = highlight  -- Store the highlight for later removal
end

-- Function to remove the cham (highlight) effect from a player
local function RemoveCham(player)
    local highlight = playerHighlights[player]
    if highlight then
        highlight:Destroy()  -- Remove the highlight from the player's character
        playerHighlights[player] = nil  -- Clean up the stored reference
    end
end

-- Function to check if the player is within range for the cham effect
local function IsWithinRange(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return distance <= MAX_DISTANCE
    end
    return false
end

-- Function to notify the user
local function Notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

-- Notify when the script is ready
if _G.chams then
    Notify("Chams Enabled", "🎭  Hexploit 🎭")
else
    Notify("Chams Disabled", "🎭  Hexploit 🎭")
end

-- Handle player join and leave to ensure chams are updated
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if _G.chams and IsWithinRange(player) then
            CreateCham(player)  -- Apply cham if enabled and within range
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    -- Remove cham when player leaves
    RemoveCham(player)
end)

-- Periodically update chams for players within range when enabled
RunService.Heartbeat:Connect(function()
    if _G.chams then
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                if IsWithinRange(player) then
                    -- Create cham if it doesn't exist
                    if not playerHighlights[player] then
                        CreateCham(player)
                    end
                else
                    -- Remove cham if player is out of range
                    if playerHighlights[player] then
                        RemoveCham(player)
                    end
                end
            end
        end
    else
        -- Disable the cham effect if _G.chams is false
        for _, player in pairs(Players:GetPlayers()) do
            RemoveCham(player)
        end
    end
end)

-- Execute the toggle when the script is first run
if _G.chams then
    -- Enable the cham effect for players in range
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            if IsWithinRange(player) then
                CreateCham(player)
            end
        end
    end
else
    -- Disable the cham effect for all players
    for _, player in pairs(Players:GetPlayers()) do
        RemoveCham(player)
    end
end
