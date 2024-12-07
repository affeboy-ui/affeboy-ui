-- Toggles the animation state on each execution
_G.animPirateActive = not _G.animPirateActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyPirateAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
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
    
    if _G.animPirateActive then
        print("Applying Pirate animations...")
        applyPirateAnimations(animate)
        notifyUser("Pirate Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
