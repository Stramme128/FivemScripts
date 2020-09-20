local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","df_revive")

AddEventHandler('chatMessage', function(source, name, msg)
    if msg == "/revive" or msg == "/reviveme" then
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id,"player.noclip"}) then
             TriggerClientEvent('df:revive', source);
                vRP.setHunger({user_id, 0})
                vRP.setThirst({user_id, 0})  
             CancelEvent()
        end
    end
end)