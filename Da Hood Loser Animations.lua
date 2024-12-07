-- Toggles the animation state on each execution
_G.animLoserActive = not _G.animLoserActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyLoserAnimations(animate)
  animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
  animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
  animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
  animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
  animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
  animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
  animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
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
    
    if _G.animLoserActive then
        print("Applying Loser animations...")
        applyLoserAnimations(animate)
        notifyUser("Loser Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
