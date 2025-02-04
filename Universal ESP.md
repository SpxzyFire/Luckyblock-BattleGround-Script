# Highligh/Cham
```lua
local ESPEnabled = true
local HighlightColor = Color3.fromRGB(255, 255, 255)

local function createESP(player)
    if not player or not player.Character then return end
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
    highlight.Adornee = player.Character
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0.1
    highlight.OutlineColor = HighlightColor
    highlight.FillColor = HighlightColor
    highlight.Enabled = ESPEnabled

    player.CharacterAdded:Connect(function(character)
        highlight.Adornee = character
    end)

    return highlight
end

for _, player in ipairs(game.Players:GetPlayers()) do
    createESP(player)
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESP(player)
    end)
end)
```

