RegisterNetEvent("df:fix")
AddEventHandler("df:fix", function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed) then
        local vehicle = GetVehiclePedIsIn(playerPed)
        SetVehicleEngineHealth(vehicle, 9999)
        SetVehiclePetrolTankHealth(vehicle, 9999)
        SetVehicleFixed(vehicle)
    else
        TriggerEvent("pNotify:SendNotification",{text = "Du har fikset din bil", type = "info", timeout = (3000), layout = "centerRight", queue = "global", animation = { open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, killer = true})
    end
end)

function notificantion(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, false)
end