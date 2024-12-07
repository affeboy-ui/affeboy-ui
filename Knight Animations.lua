-- Toggles the animation state on each execution
_G.animKnightActive = not _G.animKnightActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyKnightAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
end

local function resetToDefaultAnimations(animate)
    animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
    animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
    animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
    animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
    animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
    animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
    animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
end

local function toggleAnimations()
    local animate = character:WaitForChild("Animate")
    
    if _G.animKnightActive then
        print("Knight Animations Loaded")
        applyKnightAnimations(animate)
        notifyUser("🎭  Hexploit 🎭")
    else
        print("Reset Animations To R15")
        resetToDefaultAnimations(animate)
        notifyUser("🎭  Hexploit 🎭")
    end
end

toggleAnimations()
