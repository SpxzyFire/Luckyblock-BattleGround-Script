local function toggleTableAttribute(attribute, value)
    for _, gcVal in pairs(getgc(true)) do
        if type(gcVal) == "table" and rawget(gcVal, attribute) then
            gcVal[attribute] = value
        end
    end
end

toggleTableAttribute("ShootCooldown", 0) -- crazy firerate
toggleTableAttribute("ShootSpread", 0) -- no spread
toggleTableAttribute("ShootRecoil", 0) --no recoil
