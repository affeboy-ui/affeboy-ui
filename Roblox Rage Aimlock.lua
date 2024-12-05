-- Ensure aimlock state is toggled correctly on each execution
if _G.Ragelock == nil then
    _G.Ragelock = false  -- Default value if not previously set
end

-- If aimlock is already on, turn it off; if it's off, turn it on
local previousState = _G.Ragelock
_G.Ragelock = not _G.Ragelock

-- Notification logic and hotkey logic: Send notifications only when the state changes
if _G.Ragelock and not previousState then
    -- Notify when Ragelock is enabled
    game.StarterGui:SetCore("SendNotification", {
        Title = "Ragelock Loaded",
        Text = "🎭  Hexploit 🎭",
        Duration = 5
    })
elseif not _G.Ragelock and previousState then
    -- Notify when Ragelock is disabled
    game.StarterGui:SetCore("SendNotification", {
        Title = "Ragelock Unloaded",
        Text = "🎭  Hexploit 🎭",
        Duration = 5
    })
end

--!strict
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local HighlightService = Instance.new("Folder", game.CoreGui)
HighlightService.Name = "HighlightService"

local isCameraLocked = false
local currentTarget
local currentHighlight

-- Function to create a red transparent outline around a target with a white outline
local function createHighlight(target)
    if currentHighlight then
        currentHighlight:Destroy()
    end

    local highlight = Instance.new("Highlight")
    highlight.Adornee = target
    highlight.FillColor = Color3.new(255, 0, 0)  -- Red fill color
    highlight.FillTransparency = 0.7
    highlight.OutlineTransparency = 0.1  -- Transparent outline
    highlight.OutlineColor = Color3.new(255, 255, 255)  -- White outline
    highlight.Parent = HighlightService
    currentHighlight = highlight
end

-- Function to remove the highlight
local function removeHighlight()
    if currentHighlight then
        currentHighlight:Destroy()
        currentHighlight = nil
    end
end

-- Function to check if a target is visible, within range, and has more than 15% health
local function isValidTarget(player)
    if not player.Character or not player.Character:FindFirstChild("Humanoid") or not player.Character:FindFirstChild("Head") then
        return false
    end

    local humanoid = player.Character.Humanoid
    if humanoid.Health / humanoid.MaxHealth < 0.15 then
        return false
    end

    local head = player.Character.Head
    local origin = Camera.CFrame.Position
    local direction = (head.Position - origin).Unit
    local raycastResult = workspace:Raycast(origin, direction * 500, RaycastParams.new())

    -- Check if the target is within 50 studs for lock through walls
    local distance = (head.Position - origin).Magnitude
    if raycastResult and raycastResult.Instance:IsDescendantOf(player.Character) then
        if distance <= 50 then
            return true  -- Lock through walls if within 50 studs
        end
    end

    -- Check if the target is visible and within 500 studs
    if distance <= 500 and raycastResult and raycastResult.Instance:IsDescendantOf(player.Character) then
        return true  -- Lock if the player is visible and within 500 studs
    end

    return false
end

-- Function to find the closest valid player to the mouse
local function getClosestPlayerToMouse()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isValidTarget(player) then
            local head = player.Character.Head
            local screenPoint = Camera:WorldToViewportPoint(head.Position)
            local distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude

            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

-- Function to switch to the next closest valid player
local function switchToNextClosestPlayer()
    removeHighlight()
    currentTarget = getClosestPlayerToMouse()
    if currentTarget and currentTarget.Character then
        createHighlight(currentTarget.Character)
    end
end

-- Update function to lock the camera to the target
local function updateCamera()
    if isCameraLocked and currentTarget and currentTarget.Character and currentTarget.Character:FindFirstChild("Head") then
        local head = currentTarget.Character.Head

        -- Keep camera's current position but ensure it looks at the target's head
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, head.Position)

        -- Continuously check if the current target is still valid
        local humanoid = currentTarget.Character:FindFirstChild("Humanoid")
        if not humanoid or humanoid.Health / humanoid.MaxHealth < 0.01 then
            switchToNextClosestPlayer()
        end
    else
        removeHighlight()
        Camera.CameraType = Enum.CameraType.Custom
    end
end

-- Toggle camera lock when "Z" is pressed (only if aimlock is enabled)
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    -- Only respond to the hotkey if aimlock is enabled
    if _G.Ragelock then
        if input.KeyCode == Enum.KeyCode.Z then
            isCameraLocked = not isCameraLocked

            if isCameraLocked then
                currentTarget = getClosestPlayerToMouse()
                if currentTarget and currentTarget.Character then
                    createHighlight(currentTarget.Character)
                end
            else
                removeHighlight()
                Camera.CameraType = Enum.CameraType.Custom
                currentTarget = nil
            end
        end
    end
end)

-- Update the camera every frame
RunService.RenderStepped:Connect(updateCamera)
