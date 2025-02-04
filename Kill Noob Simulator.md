# Bullet Ammo Changer
should work with every guns normally

```lua

local player = game.Players.LocalPlayer

local gunNames = {
    "AK", "AUGA1", "ARP", "Beretta", "Bullpup", "CZ75", "Deagle", "DoubleBarrel",
    "Draco", "Famas", "Glock18", "M1Grand", "M4A1", "MAC10", "MAG7", "MP5", "MP7",
    "MP9", "Negev", "Nova", "P220", "PPBizon", "Pistol", "RPG", "Revolver", "SA58",
    "SawnOff", "Shotgun", "Uzi"
}

local function resetAmmo()
    for _, gun in pairs(player.Backpack:GetChildren()) do
        if table.find(gunNames, gun.Name) then
            local stats = gun:FindFirstChild("Stats")
            if stats and stats:FindFirstChild("Ammo") then
                local ammo = stats.Ammo
                ammo.Value = 59391
            end
        end
    end
end

player.CharacterAdded:Connect(function()
    player.Backpack.ChildAdded:Connect(function(child)
        if table.find(gunNames, child.Name) then
            resetAmmo()
        end
    end)
    
    resetAmmo()
end)

resetAmmo()
```


