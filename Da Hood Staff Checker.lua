--[[ 
    Controls:
    Reinject the script to toggle the staff checker on or off.
    Execute Lua "_G.staffCheckerEnabled = true" to explicitly turn the staff checker on.
    Execute Lua "_G.staffCheckerEnabled = false" to explicitly turn the staff checker off.
]]

-- Ensure staff checker state is toggled correctly on each execution
if _G.staffCheckerEnabled == nil then
    _G.staffCheckerEnabled = false  -- Default value if not previously set
end

-- Toggle the staff checker between on or off
_G.staffCheckerEnabled = not _G.staffCheckerEnabled

-- Services
local Players = game:GetService("Players")

-- Configuration
local staffKeywords = {"ADMIN", "Owner", "Devs", "Contributed", "Monetization", "Moderators"} -- List of roles/keywords to check
local staffGroupId = 4698921 -- Replace with the actual group ID (if applicable)

-- State
local connections = {} -- Holds event connections

-- Function to send a notification
local function sendNotification(title, message, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = message;
        Duration = duration or 5; -- Default duration is 5 seconds
    })
end

-- Function to check if a player matches staff criteria
local function checkForStaff(player)
    if not _G.staffCheckerEnabled then return end -- Stop if the checker is disabled

    -- Check for roles/keywords in the player's username
    for _, keyword in ipairs(staffKeywords) do
        if string.find(string.lower(player.Name), string.lower(keyword)) then
            local message = player.Name .. " is a staff member!"
            print("[STAFF DETECTED] Username match: " .. message)
            sendNotification("Staff Checker", message)
            return true
        end
    end

    -- Check if the player is in the staff group and matches the rank
    local success, isInGroup = pcall(function()
        return player:IsInGroup(staffGroupId)
    end)
    
    if success and isInGroup then
        local rank = player:GetRankInGroup(staffGroupId)
        local message = player.Name .. " is a staff member! Rank: " .. rank
        print("[STAFF DETECTED] Group match: " .. message)
        sendNotification("Staff Checker", message)
        return true
    end

    return false
end

-- Function to enable staff checker
local function enableStaffChecker()
    -- Connect player added event
    table.insert(connections, Players.PlayerAdded:Connect(function(player)
        checkForStaff(player)
    end))

    -- Check current players in the game
    for _, player in ipairs(Players:GetPlayers()) do
        checkForStaff(player)
    end
end

-- Function to disable staff checker
local function disableStaffChecker()
    -- Disconnect all stored connections
    for _, connection in ipairs(connections) do
        connection:Disconnect()
    end
    connections = {}
end

-- Toggle the checker on script execution
if _G.staffCheckerEnabled then
    -- Notify readiness when loaded
    game.StarterGui:SetCore("SendNotification", {Title="Staff Checker Loaded"; Text="🎭  Hexploit 🎭"; Duration=5;})
    enableStaffChecker()
else
    -- Notify when unloaded
    game.StarterGui:SetCore("SendNotification", {Title="Staff Checker Unloaded"; Text="🎭  Hexploit 🎭"; Duration=5;})
    disableStaffChecker()
end
