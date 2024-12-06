repeat wait() until game:IsLoaded()

-- Initialize the global state variable if it does not exist
if _G.UIState == nil then
    _G.UIState = 1 -- First execution state
end

-- Wait 1 second before loading the UI
wait(1)

-- Check if ScreenGui is already created (only do so once)
local ScreenGui = game.CoreGui:FindFirstChild("PerformanceUI")
if not ScreenGui then
    -- Create the ScreenGui if it doesn't exist
    ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "PerformanceUI"  -- Name it so we can find it later
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local BackgroundFrame = Instance.new("Frame")
    local Fps = Instance.new("TextLabel")
    local Ping = Instance.new("TextLabel")
    local HexploitLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")

    -- Properties for the UI components
    BackgroundFrame.Name = "BackgroundFrame"
    BackgroundFrame.Parent = ScreenGui
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
    BackgroundFrame.BackgroundTransparency = 0.3 -- Slightly transparent
    BackgroundFrame.Position = UDim2.new(0.7, 0, 0, 0)
    BackgroundFrame.Size = UDim2.new(0, 150, 0, 100) -- Adjusted size to fit all text properly

    UICorner.Parent = BackgroundFrame
    UICorner.CornerRadius = UDim.new(0, 10) -- Rounded corners

    HexploitLabel.Name = "HexploitLabel"
    HexploitLabel.Parent = BackgroundFrame
    HexploitLabel.BackgroundTransparency = 1
    HexploitLabel.Position = UDim2.new(0.5, -62, 0.05, 0)
    HexploitLabel.Size = UDim2.new(0, 125, 0, 25)
    HexploitLabel.Font = Enum.Font.SourceSans
    HexploitLabel.TextScaled = true
    HexploitLabel.Text = "Hexploit"
    HexploitLabel.TextColor3 = Color3.fromRGB(140, 0, 255)

    Fps.Name = "Fps"
    Fps.Parent = BackgroundFrame
    Fps.BackgroundTransparency = 1
    Fps.Position = UDim2.new(0.5, -62, 0.35, 0)
    Fps.Size = UDim2.new(0, 125, 0, 25)
    Fps.Font = Enum.Font.SourceSans
    Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
    Fps.TextScaled = true

    Ping.Name = "Ping"
    Ping.Parent = BackgroundFrame
    Ping.BackgroundTransparency = 1
    Ping.Position = UDim2.new(0.5, -62, 0.65, 0)
    Ping.Size = UDim2.new(0, 125, 0, 25)
    Ping.Font = Enum.Font.SourceSans
    Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ping.TextScaled = true

    -- Scripts for FPS and Ping
    local fpsScript = Instance.new('LocalScript', Fps)
    local pingScript = Instance.new('LocalScript', Ping)
    local RunService = game:GetService("RunService")
    local Stats = game:GetService("Stats")

    -- Update FPS and Ping every 0.50 seconds
    while true do
        -- FPS calculation
        local frameTime = RunService.RenderStepped:Wait()
        fpsScript.Parent.Text = "FPS: " .. math.round(1 / frameTime) -- Update FPS

        -- Ping calculation (remove decimals)
        local pingValue = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
        pingValue = tonumber(pingValue:match("%d+")) -- Remove decimals
        pingScript.Parent.Text = "Ping: " .. tostring(pingValue) -- Update Ping

        wait(0.50) -- Wait for 0.50 seconds before updating again
    end
end

-- Function to show notifications
local function showNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

-- Handle the different UI states (load/unload the UI)
if _G.UIState == 1 then
    showNotification("Performance UI Loaded", "🎭  Hexploit 🎭")
    _G.UIState = 2 -- Move to the next state (unload)
elseif _G.UIState == 2 then
    showNotification("Performance UI Unloaded", "🎭  Hexploit 🎭")
    ScreenGui.Enabled = false  -- Disable the UI (make it invisible)
    _G.UIState = 3 -- Move to the next state (reload)
elseif _G.UIState == 3 then
    showNotification("Performance UI Loaded", "🎭  Hexploit 🎭")
    ScreenGui.Enabled = true  -- Enable the UI (make it visible)
    _G.UIState = 2 -- Move to the next state (unload)
end
