fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Stramme'
description 'DinFar ReviveScript'
version '1.0.0'


client_scripts {
    'lib/Proxy.lua',
    'lib/Tunnel.lua',
    'client.lua'
}
server_script { 
    '@vrp/lib/utils.lua',
    'server.lua'
}