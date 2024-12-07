-- Toggles the animation state on each execution
_G.animCartoonyActive = not _G.animCartoonyActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyCartoonyAnimations(animate)
    animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
    animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
    animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
    animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
    animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
    animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
    animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
    animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
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
    
    if _G.animCartoonyActive then
        print("Applying Cartoony animations...")
        applyCartoonyAnimations(animate)
        notifyUser("Cartoony Animations Loaded", "🎭 Hexploit 🎭")
    else
        print("Resetting animations to default...")
        resetToDefaultAnimations(animate)
        notifyUser("Reset Animations To R15", "🎭  Hexploit 🎭")
    end
end

toggleAnimations()
