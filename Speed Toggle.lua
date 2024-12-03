-- LocalScript (Place in StarterCharacterScripts)

-- Toggle speed boost on or off with each execution
_G.speedBoostEnabled = not _G.speedBoostEnabled

-- Notify the user of the current state
if _G.speedBoostEnabled then
    game.StarterGui:SetCore("SendNotification", {Title="Cframe Speed On"; Text="Affeboy Universal Cframe Speed"; Duration=5;})
else
    game.StarterGui:SetCore("SendNotification", {Title="Cframe Speed Off"; Text="Affeboy Universal Cframe Speed"; Duration=5;})
end

-- Initialize only once
if _G.speedBoostScriptInitialized == nil then
    _G.speedBoostScriptInitialized = true

    local player = game.Players.LocalPlayer
    local runService = game:GetService("RunService")
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Set speed multiplier to 5
    local speedMultiplier = 5 -- Adjusted multiplier to 5

    -- Smooth Speed Adjustment Loop
    runService.RenderStepped:Connect(function(deltaTime)
        if _G.speedBoostEnabled then
            local moveDirection = humanoid.MoveDirection
            if moveDirection.Magnitude > 0 then
                -- Apply the speed multiplier to the HumanoidRootPart's position directly
                humanoidRootPart.CFrame = humanoidRootPart.CFrame + moveDirection * speedMultiplier * deltaTime * 10
            end
        end
    end)
end

-- When toggling off, no speed manipulation will occur, and the character returns to normal speed
if not _G.speedBoostEnabled then
    -- No need to restore WalkSpeed, as we never modified it
end
