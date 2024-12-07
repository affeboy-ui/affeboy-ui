-- Toggles the animation state on each execution
_G.animSuperHeroActive = not _G.animSuperHeroActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applySuperHeroAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
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
    
    if _G.animSuperHeroActive then
        print("Applying SuperHero animations...")
        applySuperHeroAnimations(animate)
        notifyUser("SuperHero Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
