local h_gumb = 74 -- Gumb koji kliknete kada hocete da dodate puske u vas inventory

RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    alert("~r~Izbrisane sve puske iz inventara!") -- Poruka kada napisete u chat /clear, pa vam obrise sve puske koje su vam dodane
end)

local kuracpalac = {
    "weapon_Pistol",
    "weapon_stungun",
    "weapon_raypistol",
    "weapon_APPISTOL",
    "weapon_smg_mk2",
    "weapon_bat",
    "weapon_pistol_mk2",
    "weapon_CombatRifle",
    "weapon_knife",
    "weapon_heavysniper_mk2",
    "weapon_petrolcan",
    "weapon_CombatPDW",
    "weapon_stickybomb",
    "weapon_AssaultRifle_mk2",
    "weapon_CarbineRifle_mk2",
    "weapon_RPG"
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_gumb) then
            for _,v in pairs(kuracpalac) do
                    giveWeapon(v)
            end
            print("Uspijesno dodavanje pusaka!") -- Ovo se pojavi u F8 consoli
            notify("~b~Puske su dodane u tvoj inventar") -- Notifikacija koja se prikazuje kada kliknete "H", poruka se prikazuje iznad mini-mape
        end
    end
end)
