-- Ensure proper initialization and unloading
if _G.zoomInitialized == nil then
    _G.zoomInitialized = false
end

-- If the script is already loaded, we unload it
if _G.zoomInitialized then
    -- Reset the max zoom to the default value
    local player = game.Players.LocalPlayer
    player.CameraMaxZoomDistance = 128 -- Reset to default max zoom distance

    -- Show notification for disabling zoom
    game.StarterGui:SetCore("SendNotification", {
        Title = "Infinite Zoom Disabled";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })

    -- Update the state
    _G.zoomInitialized = false

else
    -- Otherwise, load the zoom functionality
    local player = game.Players.LocalPlayer
    player.CameraMaxZoomDistance = math.huge -- Allow infinite zoom out

    -- Show notification for enabling zoom
    game.StarterGui:SetCore("SendNotification", {
        Title = "Infinite Zoom Enabled";
        Text = "🎭  Hexploit 🎭";
        Duration = 5;
    })

    -- Update the state
    _G.zoomInitialized = true
end
