repeat wait() until game:IsLoaded() 

local ScreenGui = Instance.new("ScreenGui")
local BackgroundFrame = Instance.new("Frame")
local Fps = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")
local HexploitLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Background Frame properties:
BackgroundFrame.Name = "BackgroundFrame"
BackgroundFrame.Parent = ScreenGui
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
BackgroundFrame.BackgroundTransparency = 0.3 -- Slightly transparent
BackgroundFrame.Position = UDim2.new(0.7, 0, 0, 0)
BackgroundFrame.Size = UDim2.new(0, 150, 0, 100) -- Adjusted size to fit all text properly

-- Adding rounded corners to the background frame
UICorner.Parent = BackgroundFrame
UICorner.CornerRadius = UDim.new(0, 10) -- Rounded corners for smooth edges

-- Hexploit Label properties (centered at the top):
HexploitLabel.Name = "HexploitLabel"
HexploitLabel.Parent = BackgroundFrame
HexploitLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HexploitLabel.BackgroundTransparency = 1.000
HexploitLabel.Position = UDim2.new(0.5, -62, 0.05, 0) -- Centered horizontally, positioned near the top
HexploitLabel.Size = UDim2.new(0, 125, 0, 25)
HexploitLabel.Font = Enum.Font.SourceSans
HexploitLabel.TextScaled = true
HexploitLabel.TextSize = 14.000
HexploitLabel.TextWrapped = true
HexploitLabel.Text = "Hexploit" -- The label text
HexploitLabel.TextColor3 = Color3.fromRGB(140, 0, 255) -- Setting the color to (140, 0, 255) (Purple)

-- FPS Label properties (centered below Hexploit):
Fps.Name = "Fps"
Fps.Parent = BackgroundFrame
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.5, -62, 0.35, 0) -- Centered horizontally and vertically adjusted
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

-- Ping Label properties (centered below FPS):
Ping.Name = "Ping"
Ping.Parent = BackgroundFrame
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.Position = UDim2.new(0.5, -62, 0.65, 0) -- Centered horizontally and vertically adjusted
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

-- Scripts for FPS and Ping:
local fpsScript = Instance.new('LocalScript', Fps)
local pingScript = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

-- Dragging functionality for the background frame:
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    BackgroundFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

BackgroundFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = BackgroundFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

BackgroundFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Update FPS and Ping every second
while true do
    -- FPS calculation
    local frameTime = RunService.RenderStepped:Wait()
    local fps = math.round(1 / frameTime)
    Fps.Text = "FPS: " .. tostring(fps)

    -- Ping calculation
    local pingValue = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    pingValue = tonumber(pingValue:match("%d+")) -- Convert to number and strip decimals
    Ping.Text = "Ping: " .. tostring(pingValue)

    wait(1) -- Update every second
end
