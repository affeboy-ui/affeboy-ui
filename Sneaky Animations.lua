-- Toggles the animation state on each execution
_G.animSneakyActive = not _G.animSneakyActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applySneakyAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
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
    
    if _G.animSneakyActive then
        print("Applying Sneaky animations...")
        applySneakyAnimations(animate)
        notifyUser("Sneaky Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
