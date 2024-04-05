fx_version 'cerulean'

game 'gta5' 

lua54 'yes'

-- Information
author 'Scripto Goat'
description 'SG Sinks'
version '1.0.0'

-- Shared
shared_script {
    'config.lua',
    '@ox_lib/init.lua' 
}

-- Client
client_scripts {
    'locals/*.lua',
    'bridge/*.lua',
    'client.lua'
}

-- Dependencies
dependencies {'ox_lib'}

