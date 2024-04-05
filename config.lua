Config = {}

Config.Language = 'en' -- en, nl, de, fr, es, it, ar, tr

-- Target Configuration
Config.Target = {
    Icon = "fas fa-hands-bubbles", -- Choose from https://fontawesome.com/icons
    IconColor = "#9bedff",
    --Item = "soap", -- Uncomment if you only want people to see target when they have item in inventory, also uncomment in client.lua
    Distance = 2.0,
}

-- Progress Configuration
Config.Progress = {
    Type = 'circle', -- 'circle', 'bar', 'skillcheck' or 'qb-bar'
    Duration = 5000,
}

-- Animation Configuration
Config.Animation = 'PROP_HUMAN_BUM_BIN' -- If the animation does not work, configure in client.lua

-- Sound Configuration
Config.Sound = 'true' -- Choose 'true' or leave blank

-- Notify Configuration
Config.Notify = 'ox' -- Choose from 'okok', 'ox', 'mythic'

-- Prop Configuration
Config.Props = {
        --'prop_bin_05a', -- For test purposes
        'prop_bar_sink_01', 
        'prop_ff_sink_02', 
        'prop_sink_04', 
        'v_res_mbsink',
        'prop_sink_06',
        'prop_sink_02',
}

QBCore = exports['qb-core']:GetCoreObject()
