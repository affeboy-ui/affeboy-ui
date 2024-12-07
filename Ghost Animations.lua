-- Toggles the animation state on each execution
_G.animGhostActive = not _G.animGhostActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyGhostAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
  animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
  animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
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
    
    if _G.animGhostActive then
        print("Applying Ghost animations...")
        applyGhostAnimations(animate)
        notifyUser("Ghost Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
