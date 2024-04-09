return {
    Language = 'en', -- en, nl, de, fr, es, it, ar, tr
    Target = {
        Type = 'ox', -- Choose from 'ox' or 'qb'
        Icon = "fas fa-hands-bubbles", -- Choose from https://fontawesome.com/icons
        IconColor = "#9bedff",
        --Item = "soap", -- Uncomment if you only want people to see target when they have item in inventory, also uncomment in client.lua
        Distance = 2.0,
    },
    Progress = {
        Type = 'circle', -- 'circle', 'bar', 'skillcheck' or 'qb-bar'
        Duration = 5000,
    },
    Sound = true, -- true/false
    Notify = 'ox', -- Choose from 'okok', 'ox', 'mythic'
    Props = {
        --'prop_bin_05a', -- For test purposes
        'prop_bar_sink_01', 
        'prop_ff_sink_02', 
        'prop_sink_04', 
        'v_res_mbsink',
        'prop_sink_06',
        'prop_sink_02',
    },
}
