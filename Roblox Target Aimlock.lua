--[[ Controls:
Reinject the script to toggle the aimlock script on or off.
Execute Lua "G.aimlock = true" to explicitly turn the aimlock script on
Execute Lua "G.aimlock = false" to explicitly turn the aimlock script off
]]

-- Ensure aimlock state is toggled correctly on each execution
if _G.aimlock == nil then
    _G.aimlock = false  -- Default value if not previously set
end

-- If aimlock is already on, turn it off; if it's off, turn it on
_G.aimlock = not _G.aimlock

if _G.aimlock then
    -- Notify readiness
    game.StarterGui:SetCore("SendNotification", {Title="Aimlock Loaded"; Text="🐵Affeboy Universal🐒"; Duration=5;} )
else
    -- Notify aimlock is turned off
    game.StarterGui:SetCore("SendNotification", {Title="Aimlock Unloaded"; Text="🐵Affeboy Universal🐒"; Duration=5;} )
end

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

-- Variable to store the target player's username
local TargetPlayerName = "" 

-- Function to find the closest player's head based on the selected target's username
local function FindTargetPlayerHead()
    local closestPlayer = nil
    local closestDistance = math.huge

    -- Get the mouse location on screen for more accurate locking
    local mousePosition = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            -- If the target player's name matches the selected name
            if player.Name == TargetPlayerName then
                local character = player.Character
                local humanoid = character:FindFirstChild("Humanoid")

                if humanoid and humanoid.Health > 0 then
                    local head = character.Head
                    local headPosition = head.Position
                    local screenPoint = Camera:WorldToScreenPoint(headPosition)
                    local distance = (mousePosition - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude
                    local playerDistance = (Camera.CFrame.Position - headPosition).Magnitude

                    -- Only consider players with more than 0 health for locking
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

-- Function to add a red highlight to the player
local function AddRedHighlight(player)
    if player and player.Character then
        -- Remove any existing highlight
        if highlight then
            highlight:Destroy()
        end

        -- Create a red highlight for the player
        highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- red color
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

-- Function to lock the cursor to the selected player's head
local function LockCursorToHead()
    targetHead, targetPlayer = FindTargetPlayerHead()

    if targetHead then
        -- Add red highlight to the locked player
        AddRedHighlight(targetPlayer)

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

-- Input box for setting the target player
local Input = Aimlock:CreateInput({
   Name = "Target Player",
   CurrentValue = "",
   PlaceholderText = "Enter Player Username (NOT Display Name)",
   RemoveTextAfterFocusLost = false,
   Flag = "TargetPlayer",
   Callback = function(Text)
      TargetPlayerName = Text -- Save the inputted name to the variable

      -- Notify the user about the target
      if TargetPlayerName == "" then
         Rayfield:Notify({
            Title = "Targeting Disabled",
            Content = "No specific target set. Aimlock will work on all players.",
            Duration = 5,
            Image = "info-circle",
         })
      else
         Rayfield:Notify({
            Title = "Target Set",
            Content = "Targeting player: " .. TargetPlayerName,
            Duration = 5,
            Image = "user",
         })
      end
   end,
})

-- Handle key press (C) for locking the cursor
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C then
        -- Only allow locking/unlocking if aimlock is ON
        if _G.aimlock then
            cursorLocked = not cursorLocked -- Toggle locking on/off

            if cursorLocked then
                LockCursorToHead() -- Lock onto the selected player
            else
                UnlockCursor() -- Unlock cursor when released
            end
        end
    end
end)

-- Update loop to follow the cursor's target player when locked
RunService.RenderStepped:Connect(function()
    if cursorLocked and _G.aimlock then
        if targetHead then
            -- Keep the camera locked on the target player's head
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
        end
    end
end)

-- Disable all actions related to aimlock when aimlock is OFF
if not _G.aimlock then
    -- Ensure cursor is unlocked
    cursorLocked = false
    UnlockCursor()  -- Remove the highlight and reset camera focus
end
