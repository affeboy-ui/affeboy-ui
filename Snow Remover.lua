local function safeAccessPlayerGui()
    local player = game.Players.LocalPlayer
    if not player then
        warn("LocalPlayer not found!")
        return
    end

    local success, playerGui = pcall(function()
        return player:WaitForChild("PlayerGui")
    end)

    if not success or not playerGui then
        warn("PlayerGui not found!")
        return
    end

    local gui = playerGui:FindFirstChild("MainScreenGui")
    if not gui then
        warn("MainScreenGui not found in PlayerGui!")
        return
    end

    local snowBallFrame = gui:FindFirstChild("SNOWBALLFRAME")
    if not snowBallFrame then
        warn("SNOWBALLFRAME not found in MainScreenGui!")
        return
    end

    print("All necessary objects are found!")
    return snowBallFrame
end

local function testObjects(State)
    -- Check if ReplicatedStorage exists
    local replicatedStorage = game:FindFirstChild("ReplicatedStorage")
    if not replicatedStorage then
        warn("ReplicatedStorage not found!")
        return
    end

    -- Check if workspace.Ignored exists
    local ignoredFolder = workspace:FindFirstChild("Ignored")
    if not ignoredFolder then
        warn("workspace.Ignored not found!")
        return
    end

    -- Get PlayerGui and SNOWBALLFRAME safely
    local snowBallFrame = safeAccessPlayerGui()
    if not snowBallFrame then
        return
    end

    -- Toggle SNOWBALLFRAME visibility
    snowBallFrame.Visible = not State

    -- Iterate through all objects in workspace.Ignored and debug them
    for _, object in pairs(ignoredFolder:GetDescendants()) do
        print("Found object:", object:GetFullName())
        
        -- Disable ParticleEmitters or Trails related to snow effects
        if object:IsA("ParticleEmitter") or object:IsA("Trail") then
            object.Enabled = not State
        end

        -- Move SnowBlock between ReplicatedStorage and Ignored folder
        if object.Name == "SnowBlock" then
            if State then
                object.Parent = replicatedStorage
            else
                object.Parent = ignoredFolder
            end
        end
    end
end

-- Run the test with 'true' to toggle visibility of the snowball
testObjects(true)
