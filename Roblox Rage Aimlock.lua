-- Ensure aimlock state is toggled correctly on each execution
if _G Ragelock == nil then
    _G.Ragelock = false  -- Default value if not previously set
end

-- If aimlock is already on, turn it off; if it's off, turn it on
_G.Ragelock = not _G.Ragelock

if _G.aimlock then
    -- Notify readiness
    game.StarterGui:SetCore("SendNotification", {Title="Ragelock Loaded"; Text="🐵Affeboy Universal🐒"; Duration=5;} )
else
    -- Notify Ragelock is turned off
    game.StarterGui:SetCore("SendNotification", {Title="Ragelock Unloaded"; Text="🐵Affeboy Universal🐒"; Duration=5;} )
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

-- Function to create a red transparent outline around a target
local function createHighlight(target)
    if currentHighlight then
        currentHighlight:Destroy()
    end

    local highlight = Instance.new("Highlight")
    highlight.Adornee = target
    highlight.FillColor = Color3.new(1, 0, 0)
    highlight.FillTransparency = 0.8
    highlight.OutlineTransparency = 1
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
    if humanoid.Health / humanoid.MaxHealth < 0.1 then
        return false
    end

    local head = player.Character.Head
    local origin = Camera.CFrame.Position
    local direction = (head.Position - origin).Unit
    local raycastResult = workspace:Raycast(origin, direction * 500, RaycastParams.new())

    if raycastResult and raycastResult.Instance:IsDescendantOf(player.Character) then
        local distance = (head.Position - origin).Magnitude
        return distance <= 500
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
        if not humanoid or humanoid.Health / humanoid.MaxHealth < 0.1 then
            switchToNextClosestPlayer()
        end
    else
        removeHighlight()
        Camera.CameraType = Enum.CameraType.Custom
    end
end

-- Toggle camera lock when "Z" is pressed
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

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
end)

-- Update the camera every frame
RunService.RenderStepped:Connect(updateCamera)
