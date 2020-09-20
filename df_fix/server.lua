local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","df_fix")

AddEventHandler('chatMessage', function(source, name, msg)
    if msg == "/fix" then
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id,"player.noclip"}) then
            TriggerClientEvent('df:fix', source);
            CancelEvent();
        end
    end
end)