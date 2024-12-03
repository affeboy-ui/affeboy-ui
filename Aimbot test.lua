local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local cursorLocked = false
local targetHead = nil -- Stores the current target head
local targetPlayer = nil -- Stores the player locked onto
local highlight = nil -- Stores the highlight instance

getgenv().AimlockEnabled = false -- Global variable to sync with UI toggle

-- Function to find the closest player's head, excluding those with 15% or less health and checking for visibility
local function FindClosestPlayerHead()
    local closestPlayer = nil
    local closestDistance = math.huge

    -- Get the mouse location on screen for more accurate locking
    local mousePosition = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            -- Check if the player has more than 15% health
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health / humanoid.MaxHealth > 0.15 then
                local head = character.Head
                local headPosition = head.Position
                local screenPoint = Camera:WorldToScreenPoint(headPosition)
                local distance = (mousePosition - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude

                -- Perform a raycast to check if the head is visible (not behind a wall)
                local ray = Ray.new(Camera.CFrame.Position, headPosition - Camera.CFrame.Position)
                local hitPart, hitPosition = Workspace:FindPartOnRay(ray, LocalPlayer.Character)

                -- If the ray hits anything other than the player's head, we ignore this player
                if not hitPart or hitPart.Parent == character then
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end

    if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
        return closestPlayer.Character.Head, closestPlayer
    end

    return nil, nil
end

-- Function to add a blue highlight to the player
local function AddBlueHighlight(player)
    if player and player.Character then
        -- Remove any existing highlight
        if highlight then
            highlight:Destroy()
        end

        -- Create a blue highlight for the player
        highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(0, 0, 255) -- Blue color
        highlight.FillTransparency = 0.5 -- Optional: set transparency
    end
end

-- Function to remove the highlight from the player
local function RemoveHighlight()
    if highlight then
        highlight:Destroy()
        highlight = nil
    end
end

-- Function to lock the cursor to the nearest player's head
local function LockCursorToHead()
    targetHead, targetPlayer = FindClosestPlayerHead()

    if targetHead then
        -- Add blue highlight to the locked player
        AddBlueHighlight(targetPlayer)

        -- Hide the mouse when locked
        UserInputService.MouseIconEnabled = false
        
        -- Set the camera to directly look at the target player's head
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
    end
end

-- Function to unlock the cursor
local function UnlockCursor()
    UserInputService.MouseIconEnabled = true -- Show the cursor again
    targetHead = nil
    targetPlayer = nil
    RemoveHighlight() -- Remove the highlight
end

-- Handle key press (C) for locking the cursor
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C and getgenv().AimlockEnabled then
        cursorLocked = not cursorLocked -- Toggle locking on/off

        if cursorLocked then
            LockCursorToHead() -- Lock onto the nearest player
        else
            UnlockCursor() -- Unlock cursor when released
        end
    end
end)

-- Update loop to follow the cursor's target player when locked
RunService.RenderStepped:Connect(function()
    if cursorLocked then
        if targetHead then
            -- Keep the camera locked on the target player's head
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
        end
    end
end)
