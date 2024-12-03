-- Variables
if _G.noClipLoaded == nil then
    _G.noClipLoaded = false  -- Default state
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local noClip = false

-- Function to toggle no-clip
local function toggleNoClip(state)
    noClip = state ~= nil and state or not noClip

    if noClip then
        -- Enable no-clip by setting the humanoid's CanCollide to false for all parts
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        -- Notify no-clip enabled
        game.StarterGui:SetCore("SendNotification", {
            Title = "NoClip On";
            Text = "Affeboy Universal!";
            Duration = 5;
        })
    else
        -- Disable no-clip by resetting CanCollide to true for all parts
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end

        -- Notify no-clip disabled
        game.StarterGui:SetCore("SendNotification", {
            Title = "No-Clip Deactivated";
            Text = "Collision is back to normal.";
            Duration = 5;
        })
    end
end

-- Forcefully disable no-clip
local function forceDisableNoClip()
    noClip = false
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = true
        end
    end
end

-- Execution toggle logic
if not _G.noClipLoaded then
    -- Script is being loaded
    _G.noClipLoaded = true
    noClip = false  -- Ensure no-clip is off initially

    -- Notify no-clip loaded
    game.StarterGui:SetCore("SendNotification", {
        Title = "No-Clip Script Loaded";
        Text = "Press N to toggle no-clip!";
        Duration = 5;
    })

    -- Connect the input detection
    _G.noClipInputConnection = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end

        -- Check if the N key was pressed
        if input.KeyCode == Enum.KeyCode.N then
            toggleNoClip()
        end
    end)
else
    -- Script is being unloaded
    _G.noClipLoaded = false

    -- Force disable no-clip
    forceDisableNoClip()

    -- Disconnect the input detection
    if _G.noClipInputConnection then
        _G.noClipInputConnection:Disconnect()
        _G.noClipInputConnection = nil
    end

    -- Notify no-clip unloaded
    game.StarterGui:SetCore("SendNotification", {
        Title = "No-Clip Script Unloaded";
        Text = "No-clip hotkey disabled.";
        Duration = 5;
    })
end
