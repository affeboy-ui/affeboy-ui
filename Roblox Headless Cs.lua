-- Roblox LocalScript for Applying Headless Effect (Client-Side)

getgenv().Time = 0.5  -- Delay before applying the headless effect

-- Asset ID for the Headless effect (or transparent head overlay)
getgenv().HeadlessOverlay = "rbxassetid://15093053680"  -- Provided headless ID

-- Function to remove the face and apply the headless effect using an ImageLabel
local function applyHeadlessOverlay()
    local character = game.Players.LocalPlayer.Character
    if not character then return end
    
    local head = character:FindFirstChild("Head")  -- Get the head part
    if not head then return end  -- Ensure the head exists

    -- Remove any face textures (there can be multiple faces on the head)
    for _, child in ipairs(head:GetChildren()) do
        if child:IsA("Decal") and child.Name == "face" then
            child:Destroy()  -- Remove the face decal
        end
    end

    -- Create an overlay (ImageLabel) for the head
    local overlay = Instance.new("ImageLabel")
    overlay.Image = getgenv().HeadlessOverlay  -- Set the headless overlay image
    overlay.Size = UDim2.new(1, 0, 1, 0)  -- Make it the same size as the head
    overlay.Position = UDim2.new(0, 0, 0, 0)  -- Position it exactly over the head
    overlay.BackgroundTransparency = 1  -- Make the background completely transparent
    overlay.ZIndex = 10  -- Ensure it is rendered on top

    overlay.Parent = head  -- Attach the overlay to the head part

    -- Make sure the head's visibility is hidden by the overlay
    head.Transparency = 1  -- Hide the actual head part
end

-- Function to apply the headless effect when the character is added
local function onCharacterAdded(character)
    wait(getgenv().Time)  -- Wait for a short time to ensure the character is fully loaded

    -- Apply the headless effect (overlay the head)
    applyHeadlessOverlay()
end

-- Listen for when the character is added
game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- If the character is already present, apply the headless effect immediately
if game.Players.LocalPlayer.Character then
    onCharacterAdded(game.Players.LocalPlayer.Character)
end
