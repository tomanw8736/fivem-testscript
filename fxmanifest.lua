fx_version 'cerulean'
game 'gta5'
lua54 'yes'
repository 'https://github.com/tomanw8736/fivem-testscript'

author 'tomanw8736'
description 'Test script'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'client.lua',
    'library/menu.lua'
}
