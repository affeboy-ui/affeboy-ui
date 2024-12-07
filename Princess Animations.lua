-- Toggles the animation state on each execution
_G.animPrincessActive = not _G.animPrincessActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyPrincessAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
end

local function resetToDefaultAnimations(animate)
    animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
    animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
    animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
    animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
    animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
    animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
    animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
end

local function toggleAnimations()
    local animate = character:WaitForChild("Animate")
    
    if _G.animPrincessActive then
        print("Applying Princess animations...")
        applyPrincessAnimations(animate)
        notifyUser("Princess Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
