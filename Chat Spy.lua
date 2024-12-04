--[[ 
    Simple Chat Spy
    Only shows a notification once when the script is executed.
    Removes the "SPY ENABLED" and "SPY DISABLED" messages from the chat.
]]

-- Global variable to track if the script has been executed
if _G.chatSpyExecuted then
    return  -- Prevent re-execution if the script has already been executed
end

-- Mark the script as executed to prevent further notifications
_G.chatSpyExecuted = true

print("-- Chat Spy Executed --")
print("Chat Spy is now ENABLED. Type 'spy' to toggle it on or off.")
print("https://github.com/dehoisted/Chat-Spy")

-- Config
Config = {
    enabled = false,  -- Start with disabled by default
    spyOnMyself = true,
    public = false,
    publicItalics = true
}

-- Customizing Log Output
PrivateProperties = {
    Color = Color3.fromRGB(0, 255, 255),
    Font = Enum.Font.SourceSansBold,
    TextSize = 18
}

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

-- Toggle Chat Spy on execution
_G.chatSpyEnabled = not _G.chatSpyEnabled
Config.enabled = _G.chatSpyEnabled

-- Notify the user about the current Chat Spy status
if Config.enabled then
    StarterGui:SetCore("SendNotification", {Title = "Chat Spy Loaded", Text = "Chat Spy is now ENABLED", Duration = 5})
end

-- Function to handle chat messages
local function onChatted(p, msg)
    if _G.chatSpyInstance == instance then
        if p == player and msg:lower():sub(1, 4) == "/spy" then
            Config.enabled = not Config.enabled
            wait(0.3)
        elseif Config.enabled and (Config.spyOnMyself == true or p ~= player) then
            msg = msg:gsub("[\n\r]", ''):gsub("\t", ' '):gsub("[ ]+", ' ')
            local hidden = true
            local conn = getmsg.OnClientEvent:Connect(function(packet, channel)
                if packet.SpeakerUserId == p.UserId and packet.Message == msg:sub(#msg - #packet.Message + 1) and (channel == "All" or (channel == "Team" and Config.public == false and Players[packet.FromSpeaker].Team == player.Team)) then
                    hidden = false
                end
            end)
            wait(1)
            conn:Disconnect()
            if hidden and Config.enabled then
                if Config.public then
                    saymsg:FireServer((Config.publicItalics and "/me " or '') .. "{SPY} [" .. p.Name .. "]: " .. msg, "All")
                else
                    PrivateProperties.Text = "{SPY} [" .. p.Name .. "]: " .. msg
                    StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
                end
            end
        end
    end
end

-- Connect to chat events
for _, p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p, msg) end)
end

Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p, msg) end)
end)

-- Set the initial status of the Chat Spy
-- Removed the display of "{SPY ENABLED}" or "{SPY DISABLED}" in the chat
-- Removed the notification for Chat Spy Unloaded

-- Make sure the default chat is visible when the spy is enabled
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), chatFrame.ChatChannelParentFrame.Size.Y)
