local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Set your target coordinates here (in the correct order)
local Armor = Vector3.new(-934.23, -25.15, 570.97) -- Armor
local Chicken = Vector3.new(300.70, 52.87, -627.18) -- Chicken
local Revolver = Vector3.new(-642.25, 21.75, -119.24) -- Revolver
local RevolverAmmo = Vector3.new(-635.75, 21.75, -118.74) -- Revolver Ammo
local SilencedPistol = Vector3.new(498.75, 48.16, -621.43) -- Silenced Pistol
local SilencedPistolAmmo = Vector3.new(500.29, 48.16, -616.77) -- Silenced Pistol Ammo
local SilencedAR = Vector3.new(490.37, 48.16, -633.5)  -- Silenced AR
local SilencedARAmmo = Vector3.new(497.37, 48.16, -633.8)  -- Silenced AR Ammo
local TacticalShotgun = Vector3.new(470.71, 48.16, -620.37) -- Tactical Shotgun
local TacticalShotgunAmmo = Vector3.new(493.06, 48.16, -619.97) -- Tactical Shotgun Ammo

-- Function to show a notification using SetCore
local function showNotification(message)
    local success, errorMsg = pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Teleporting";
            Text = message;
            Duration = 5; -- Display the notification for 5 seconds
        })
    end)

    if not success then
        warn("Notification Error: " .. errorMsg)
    end
end

-- Function to teleport to the target position
local function teleportToTarget(targetPosition)
    if humanoidRootPart then
        showNotification("🐵Affeboy Universal🐒")
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    end
end

-- Teleport function based on selected dropdown option
local function handleTeleportSelection(option)
    if option == "Armor" then
        teleportToTarget(Armor)
    elseif option == "Chicken" then
        teleportToTarget(Chicken)
    elseif option == "Revolver" then
        teleportToTarget(Revolver)
    elseif option == "Revolver Ammo" then
        teleportToTarget(RevolverAmmo)
    elseif option == "Silenced Pistol" then
        teleportToTarget(SilencedPistol)
    elseif option == "Silenced Pistol Ammo" then
        teleportToTarget(SilencedPistolAmmo)
    elseif option == "Silenced AR" then
        teleportToTarget(SilencedAR)
    elseif option == "Silenced AR Ammo" then
        teleportToTarget(SilencedARAmmo)
    elseif option == "Tactical Shotgun" then
        teleportToTarget(TacticalShotgun)
    elseif option == "Tactical Shotgun Ammo" then
        teleportToTarget(TacticalShotgunAmmo)
    else
        warn("Invalid option selected.")
    end
end
