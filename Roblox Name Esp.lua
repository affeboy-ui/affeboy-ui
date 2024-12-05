local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local nameTags = {}  -- Store name tags for players
local MAX_DISTANCE = 300  -- Maximum distance for name tag visibility (in studs)

-- Global flag to toggle name tag ESP
_G.nameTagESP = not _G.nameTagESP

-- Function to notify the user
local function Notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

-- Notify when the script is ready
if _G.nameTagESP then
    Notify("Name Tag ESP Enabled", "🎭  Hexploit 🎭")
else
    Notify("Name Tag ESP Disabled", "🎭  Hexploit 🎭")
end

-- Function to create a name tag for a player
local function CreateNameTag(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = character
    billboardGui.Size = UDim2.new(0, 100, 0, 30)  -- Adjust the size for the name tag
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = head
    billboardGui.StudsOffset = Vector3.new(0, 6, 0)  -- Move the name tag to the position previously used by health text (further down)

    local nameTag = Instance.new("TextLabel")
    nameTag.Parent = billboardGui
    nameTag.Size = UDim2.new(1, 0, 1, 0)  -- Full size of the BillboardGui
    nameTag.BackgroundTransparency = 1
    nameTag.TextColor3 = Color3.new(1, 1, 1)  -- White text color
    nameTag.TextStrokeTransparency = 0.6  -- Adjust outline visibility
    nameTag.TextStrokeColor3 = Color3.new(0, 0, 0)  -- Black stroke for visibility
    nameTag.TextSize = 10  -- Smaller base text size
    nameTag.Text = player.Name  -- Display the player's name

    nameTags[player] = billboardGui  -- Store the entire BillboardGui for later removal
end

-- Function to remove name tags
local function RemoveNameTags()
    for _, billboardGui in pairs(nameTags) do
        if billboardGui then
            billboardGui:Destroy()  -- Destroy the entire BillboardGui
        end
    end
    nameTags = {}  -- Clear the nameTags table
end

-- Function to check if the player is within range for the name tag to appear
local function IsWithinRange(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return distance <= MAX_DISTANCE
    end
    return false
end

-- Handle player join and leave to ensure name tags are updated
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if _G.nameTagESP and IsWithinRange(player) then
            CreateNameTag(player)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    -- Remove name tag when player leaves
    if nameTags[player] then
        nameTags[player]:Destroy()  -- Destroy the entire BillboardGui
        nameTags[player] = nil
    end
end)

-- Periodically update name tags every 1 second
while true do
    -- If name tag ESP is enabled
    if _G.nameTagESP then
        -- Update name tags for players within range
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                if IsWithinRange(player) then
                    -- Create name tag if it doesn't exist
                    if not nameTags[player] then
                        CreateNameTag(player)
                    end
                else
                    -- Remove name tag if player is out of range
                    if nameTags[player] then
                        nameTags[player]:Destroy()  -- Destroy the BillboardGui
                        nameTags[player] = nil
                    end
                end
            end
        end
    else
        -- If name tag ESP is disabled, remove all name tags
        RemoveNameTags()
    end
    wait(1)
end
