game.UserInputService.InputBegan:Connect(function(i, g)
    if i.UserInputType == Enum.UserInputType.MouseButton1 and not g and not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.equipping.Value then
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.DISABLED.Value = true
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 300 -infinite ammo
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 300 -- infinite stored ammo
    end
end)

for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do if v.Name == 'RecoilControl' then v.Value = 0 end if v.Name == 'MaxSpread' then v.Value = 0 end if v.Name == 'Auto' then v.Value = true end end -- 0 
