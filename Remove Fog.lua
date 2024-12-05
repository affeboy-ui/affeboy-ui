local lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")

-- Check if the fog removal has been executed before
if not _G.FogRemovalExecuted then
    -- Store original fog settings
    _G.OriginalFogSettings = {
        FogEnd = lighting.FogEnd,
        FogStart = lighting.FogStart,
    }

    -- Remove fog by setting extreme values for FogEnd and FogStart
    lighting.FogEnd = 100000  -- Set this to a high value to push fog far away
    lighting.FogStart = 0     -- Set this to 0 to ensure fog doesn't start close

    -- Optionally remove any atmosphere if present
    local atmosphere = lighting:FindFirstChildOfClass("Atmosphere")
    if atmosphere then
        atmosphere:Destroy()
    end

    -- Send a notification to the player
    StarterGui:SetCore("SendNotification", {
        Title = "Fog Removed",
        Text = "🎭 Hexploit 🎭",
        Duration = 5,
    })

    -- Set the flag to indicate it has been executed
    _G.FogRemovalExecuted = true
else
    -- Reset the fog settings back to the original values
    lighting.FogEnd = _G.OriginalFogSettings.FogEnd
    lighting.FogStart = _G.OriginalFogSettings.FogStart

    -- Send a notification to the player that fog has been restored
    StarterGui:SetCore("SendNotification", {
        Title = "Fog Restored",
        Text = "🎭 Hexploit 🎭",
        Duration = 5,
    })

    -- Reset the flag to indicate it's no longer executed
    _G.FogRemovalExecuted = false
end
