local Players = game:GetService("Players")

local function HighlightPlayer(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local highlight = Instance.new("Highlight")
    highlight.Parent = character

    -- Create a BillboardGui for the nametag
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = character
    billboardGui.Size = UDim2.new(0, 200, 0, 50) -- Fixed size in pixels
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = character:WaitForChild("Head")
    billboardGui.StudsOffset = Vector3.new(0, 1.5, 0)

    -- Create a TextLabel for the name
    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = player.DisplayName
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = false -- Prevent scaling
    textLabel.TextSize = 15 -- Fixed text size
    textLabel.Font = Enum.Font.SourceSansBold -- Optional: Make it more readable
end

-- Function to refresh player highlights
local function RefreshHighlights()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            HighlightPlayer(player)
        end
    end
end

-- Highlight all players on game start
Players.PlayerAdded:Connect(HighlightPlayer)
RefreshHighlights() -- Initial refresh

-- Refresh every second
task.spawn(function()
    while true do
        RefreshHighlights()
        task.wait(1) -- Wait 1 second
    end
end)