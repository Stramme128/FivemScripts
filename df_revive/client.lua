RegisterNetEvent("df:revive")
AddEventHandler("df:revive", function()
    local plyCoords = GetEntityCoords(GetPlayerPed(-1), true)
    local healt = GetEntityHealth(GetPlayerPed(-1))
    local healtP = math.ceil(((healt-120)/80)*100)
    if healtP <= 99 then
        ResurrectPed(GetPlayerPed(-1))
        SetEntityHealth(GetPlayerPed(-1), 200)
        ClearPedTasksImmediately(GetPlayerPed(-1))
        TriggerEvent("pNotify:SendNotification",{text = "Du har revivet dig selv", type = "info", timeout = (3000), layout = "centerRight", queue = "global", animation = { open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, killer = true})
    elseif healtP == 100 then
        TriggerEvent("pNotify:SendNotification",{text = "Du har revivet dig selv", type = "info", timeout = (3000), layout = "centerRight", queue = "global", animation = { open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, killer = true})
    end
end)