local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🐒Affeboy Universal🐵",
   Icon = "shield-check",
   LoadingTitle = "Affeboy Universal",
   LoadingSubtitle = "by Affeboy",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Affeboy UI Config"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Affeboy UI Key",
      Subtitle = "Key System",
      Note = "My Name", -- Use this to tell the user how to get a key
      FileName = "Affeboy UI Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"affeboy"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Aimlock = Window:CreateTab("Aimlock", 136009625510534) -- Title, Image
local AimlockSection = Aimlock:CreateSection("Settings", "cog")

Rayfield:Notify({
   Title = "Affeboy UI Loaded",
   Content = "I Hate Niggers",
   Duration = 6.5,
   Image = "code-xml",
})

local TargetPlayerName = "" -- Variable to store the target player's username

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

local Button = Aimlock:CreateButton({
   Name = "Aimlock Toggle                                 Keybind C",
   Callback = function()
      -- Load the Aimlock script
      local aimlockScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/main/Roblox%20Aimlock.lua"))()

      -- Set custom targeting logic
      aimlockScript:SetTargetingLogic(function(currentTarget)
         if TargetPlayerName == "" then
            -- No target name is set, Aimlock works on all players
            return true
         elseif currentTarget.Name == TargetPlayerName then
            -- Target player name matches the current player
            return true
         else
            -- Target player name does not match, skip this target
            return false
         end
      end)

      -- Activate Aimlock
      aimlockScript:Activate()
   end,
})

local Visuals = Window:CreateTab("Visuals", 124686202083835) -- Title, Image
local VisualsSection = Visuals:CreateSection("Features", "cog")


local Button1 = Visuals:CreateButton({
   Name = "Chams Toggle                                Max 300 Studs",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Roblox%20Chams.lua"))()
   end,
})

local Button2 = Visuals:CreateButton({
   Name = "Health Esp Toggle                         Max 300 Studs",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Roblox%20Health%20Esp.lua"))()
   end,
})

local Button3 = Visuals:CreateButton({
   Name = "Health Esp In % Toggle                Max 300 Studs",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Roblox%20Health%20Esp%20In%20Procent.lua"))()
   end,
})

local Button4 = Visuals:CreateButton({
   Name = "Name Esp Toggle                          Max 300 Studs",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Roblox%20Name%20Esp.lua"))()
   end,
})

local Misc = Window:CreateTab("Misc", 95872766689378) -- Title, Image
local MiscSection = Misc:CreateSection("Features", "cog")

local Button = Misc:CreateButton({
    Name = "Speed Toggle                                 Keybind V",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Speed%20Toggle.lua"))()
        end,
})

local Button = Misc:CreateButton({
    Name = "Flight Toggle                                  Keybind B",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Fly%20Toggle.lua"))()
        end,
})

local Button = Misc:CreateButton({
    Name = "NoClip Toggle                                Keybind N",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/affeboy-ui/affeboy-ui/refs/heads/main/Roblox%20Noclip.lua"))()
        end,
})
