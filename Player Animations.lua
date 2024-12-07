-- Toggles the animation state on each execution
_G.animAstronautActive = not _G.animAstronautActive

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function notifyUser(title, text)
    -- Sends a notification to the player
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=5;})
end

local function applyAstronautAnimations(animate)
    animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
    animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
    animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
    animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
    animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
    animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
    animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
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
    
    if _G.animAstronautActive then
        print("Astronaut Animations Loaded")
        applyAstronautAnimations(animate)
        notifyUser("🎭  Hexploit 🎭")
    else
        print("Reset Animations To R15")
        resetToDefaultAnimations(animate)
        notifyUser("🎭  Hexploit 🎭")
    end
end

toggleAnimations()
