RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    alert("~r~Izbrisane sve puske iz inventara!") -- Poruka kada napisete u chat /clear, pa vam obrise sve puske koje su vam dodane
end)


Citizen.CreateThread(function()

    local h_gumb = 74 -- Gumb koji kliknete kada hocete da dodate puske u vas inventory
    local x_key = 73
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_gumb) then
            print("Uspijesno dodavanje pusaka!") -- Ovo se pojavi u F8 consoli
            giveWeapon("weapon_Pistol")
            giveWeapon("weapon_stungun")
            giveWeapon("weapon_raypistol")
            giveWeapon("weapon_APPISTOL")
            giveWeapon("weapon_smg_mk2")
            giveWeapon("weapon_bat")
            giveWeapon("weapon_pistol_mk2")
            giveWeapon("weapon_CombatRifle")
            giveWeapon("weapon_knife")
            giveWeapon("weapon_heavysniper_mk2")
            giveWeapon("weapon_petrolcan")
            giveWeapon("weapon_CombatPDW")
            giveWeapon("weapon_stickybomb")
            giveWeapon("weapon_AssaultRifle_mk2")
            giveWeapon("weapon_CarbineRifle_mk2")
            giveWeapon("weapon_RPG")
            notify("~b~Puske su dodane u tvoj inventar") -- Notifikacija koja se prikazuje kada kliknete "H", poruka se prikazuje iznad mini-mape
        end
    end

end)
