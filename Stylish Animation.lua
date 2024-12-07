-- Toggles the animation state on each execution
_G.animStylishActive = not _G.animStylishActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyStylishAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
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
    
    if _G.animStylishActive then
        print("Applying Stylish animations...")
        applyStylishAnimations(animate)
        notifyUser("Stylish Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
