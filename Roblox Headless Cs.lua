-- Roblox LocalScript for Applying Headless Effect (Client-Side)

getgenv().Time = 0.5  -- Delay before applying the headless effect
getgenv().HeadlessOverlay = "rbxassetid://15093053680"  -- Provided headless ID
getgenv().DefaultSmileID = "rbxassetid://144075659"  -- Default smile asset ID

local function notifyUser(title, text)
    -- Send notifications to the user
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = title; Text = text; Duration = 5})
    end)
end

local function applyHeadlessOverlay()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    local head = character:FindFirstChild("Head")
    if not head then return end

    -- Remove any existing face textures
    for _, child in ipairs(head:GetChildren()) do
        if child:IsA("Decal") and child.Name == "face" then
            child:Destroy()
        end
    end

    -- Add the overlay to simulate the headless effect
    local overlay = Instance.new("ImageLabel")
    overlay.Name = "HeadlessOverlay"
    overlay.Image = getgenv().HeadlessOverlay
    overlay.Size = UDim2.new(1, 0, 1, 0)
    overlay.Position = UDim2.new(0, 0, 0, 0)
    overlay.BackgroundTransparency = 1
    overlay.ZIndex = 10
    overlay.Parent = head

    head.Transparency = 1  -- Hide the actual head
end

local function revertFaceToDefaultSmile()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    local head = character:FindFirstChild("Head")
    if not head then return end

    head.Transparency = 0 -- Restore head transparency

    -- Remove any headless overlay
    for _, child in ipairs(head:GetChildren()) do
        if child:IsA("ImageLabel") then
            child:Destroy()
        end
    end

    -- Restore the default smile
    local smileFace = head:FindFirstChild("face")
    if not smileFace then
        smileFace = Instance.new("Decal")
        smileFace.Name = "face"
        smileFace.Texture = getgenv().DefaultSmileID
        smileFace.Parent = head
    else
        smileFace.Texture = getgenv().DefaultSmileID
    end
end

local function toggleHeadlessEffect()
    if _G.headlessEffectActive == nil then
        _G.headlessEffectActive = false  -- Initialize state to false on first script execution
    end

    if not _G.headlessEffectActive then
        -- First execution: Enable the effect
        applyHeadlessOverlay()
        _G.headlessEffectActive = true
        notifyUser(" Cs Headless Enabled", "🎭 Hexploit 🎭")
    else
        -- Second execution: Revert back to normal
        revertFaceToDefaultSmile()
        _G.headlessEffectActive = false
        notifyUser("Cs Headless Disabled", "🎭 Hexploit 🎭")
    end
end

-- Call the toggle on execution
toggleHeadlessEffect()
