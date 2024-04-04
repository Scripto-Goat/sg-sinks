local QBCore = exports['qb-core']:GetCoreObject()

exports.ox_target:addBoxZone({
	name = "Ziekenhuis Kantine",
    coords = vec3(303.5, -599.25, 42.9),
	size = vec3(0.65, 0.6, 0.95),
	rotation = 341.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Polar",
    coords = vec3(270.85, 127.95, 104.35),
	size = vec3(0.7, 1.25, 0.25),
	rotation = 340.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#F8C8DC'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Pearls",
    coords = vec3(-1842.4, -1183.8, 14.0),
	size = vec3(1, 1.1, 1.0),
	rotation = 330.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Pearls WC",
    coords = vec3(-1836.0, -1180.0, 14.35),
	size = vec3(2.45, 0.6, 0.1),
	rotation = 330.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "BurgerShot WC 1",
    coords = vec3(-1205.2, -893.6, 13.85),
	size = vec3(0.5, 0.65, 0.4),
	rotation = 304.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "BurgerShot WC 2",
    coords = vec3(-1201.2, -890.95, 14.0),
	size = vec3(0.5, 0.65, 0.099999999999998),
	rotation = 304.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Ziekenhuis Sink 1",
	coords = vec3(323.6, -572.25, 43.0),
	size = vec3(0.7, 0.7, 1.25),
	rotation = 342.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Ziekenhuis Sink 2",
	coords = vec3(317.25, -570.95, 43.0),
	size = vec3(0.75, 0.6, 1.25),
	rotation = 340.75,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
    name = "Ziekenhuis Sink 3",
    coords = vec3(316.25, -570.65, 42.95),
	size = vec3(0.65, 0.65, 1.25),
	rotation = 340.25,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
    name = "ANWB Sink 1",
	coords = vec3(-347.9, -133.25, 43.25),
	size = vec3(0.8, 0.75, 0.6),
	rotation = 340.5,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Politie 1",
	coords = vec3(-598.35, -919.95, 24.0),
	size = vec3(0.6, 0.65, 0.3),
	rotation = 2.25,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
    name = "Politie 2",
	coords = vec3(-598.4, -921.7, 23.9),
	size = vec3(0.6, 0.65, 0.3),
	rotation = 1.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
    name = "Politie Kantine",
    coords = vec3(-575.7, -931.65, 28.85),
	size = vec3(0.75, 0.8, 0.4),
	rotation = 0.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
    name = "Politie Lab",
	coords = vec3(-568.4, -930.9, 28.9),
	size = vec3(2.35, 0.9, 0.45),
	rotation = 0.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Hookies",
	coords = vec3(-2192.8, 4274.5, 48.8),
	size = vec3(1.25, 0.8, 0.8),
	rotation = 330.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

exports.ox_target:addBoxZone({
	name = "Club77",
	coords = vec3(251.1, -3158.75, -0.25),
	size = vec3(0.75, 1.0, 0.25),
	rotation = 0.0,
    distance = 1.0,
    options = {
        {
          event = "WashHands",
          label = "Handen wassen",
          icon = "fa-solid fa-hands-bubbles",
          iconColor = '#D0EBFF'
        }
    },
})

RegisterNetEvent('WashHands')
AddEventHandler('WashHands', function()

    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "hands", 0.7)

    lib.progressCircle({
        label = 'Handen wassen...',
        duration = 3000,
        position = 'bottom',
        useWhileDead = false,
        allowRagdoll = false,
        allowCuffed = false,
        allowFalling = false,
        canCancel = true,
        disable = {
            move = true,
            combat = true,
            sprint = true,
            car = true,
        },
        anim = {
            blendIn = 1.0,
            duration = 3000,
            scenario = 'PROP_HUMAN_BUM_BIN',
            blendOut = 1.0,
        },

    })

    Wait(100)
    exports['okokNotify']:Alert('Schone handen!', 'Je hebt succesvol je handen gewassen!', 3000, 'success', true)

end)


