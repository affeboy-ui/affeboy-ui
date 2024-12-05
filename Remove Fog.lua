local lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")

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
    Title = "Fog Removed";  -- The title of the notification
    Text = "🎭 Hexploit 🎭";  -- The message shown to the player
    Duration = 5;  -- Duration of the notification (in seconds)
})
