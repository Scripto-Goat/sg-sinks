local Config = lib.require('config')
-- Wash hands
local function Washhands()

    if Config.Progress.Type == 'circle' then

        if Config.Sound then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 6, "hands", 0.5)
        end
    
        if lib.progressCircle({
            label = Locals[Config.Language]['ProgressLabel'],
            duration = Config.Progress.Duration,
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
                dict = 'missheist_agency3aig_23',
                clip = 'urinal_sink_loop',
                blendIn = 1.0,
                duration = 3000,
                blendOut = 1.0,
            },
        })
        then
            Wait(100)
            Notify(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 'success')
        else
            ClearPedTasksImmediately(cache.ped)
            Notify(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 'error')
        end
    elseif Config.Progress.Type == 'bar' then

        if Config.Sound then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 8, "hands", 0.5)
        end

        if lib.progressBar({
            duration = Config.Progress.Duration,
            label = Locals[Config.Language]['ProgressLabel'],
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = 'missheist_agency3aig_23',
                clip = 'urinal_sink_loop',
                blendIn = 1.0,
                duration = 3000,
                blendOut = 1.0,
            },
        }) 
        then
            Wait(100)
            Notify(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 'success')
        else
            ClearPedTasksImmediately(cache.ped)
            Notify(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 'error')
        end

    elseif Config.Progress.Type == 'skillcheck' then

        local success = lib.skillCheck({'easy'}, {'e'})

        if success then

            if Config.Sound then
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 4, "hands", 0.5)
            end

            TaskPlayAnim(cache.ped,"missheist_agency3aig_23","urinal_sink_loop", 1.0, -1.0, -1, 1, 1, true, true, true)
            Wait(6500)
            ClearPedTasksImmediately(cache.ped)

            Notify(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 'success')

        else
            lib.cancelSkillCheck()
            ClearPedTasksImmediately(cache.ped)
            Notify(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 'error')
        end
    elseif Config.Progress.Type == 'qb-bar' then

        if Config.Sound then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 4, "hands", 0.5)
        end

        TaskStartScenarioInPlace(cache.ped, Config.Animation, 0, true)
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.Progressbar("washhands", Locals[Config.Language]['ProgressLabel'], Config.Progress.Duration, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
            }, {
            animDict = "missheist_agency3aig_23",
            anim = "urinal_sink_loop",
            }, {}, {}, function()
            Notify(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 'success')
            end, function()
            ClearPedTasksImmediately(cache.ped)
            Notify(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 'error')
        end)
    end
end

-- Target
CreateThread(function()
    if Config.Target.Type == 'ox' then
        exports.ox_target:addModel(Config.Props, {
            {
                name = 'sink',
                label = Locals[Config.Language]['TargetLabel'],
                icon = Config.Target.Icon,
                iconColor = Config.Target.IconColor,
                --item = Config.Target.Item, -- Uncomment if you only want people to see target when they have item in inventory, also uncomment in config.lua
                distance = Config.Target.Distance,
                onSelect = function()
                    Washhands()
                end
            }
        })
    elseif Config.Target.Type == 'qb' then
        exports['qb-target']:AddTargetModel(Config.Props, {
        options = { 
            { 
            label = Locals[Config.Language]['TargetLabel'], 
            icon = Config.Target.Icon,
            --item = Config.Target.Item, -- Uncomment if you only want people to see target when they have item in inventory, also uncomment in config.lua
            type = "client", 
            action = function()
                Washhands()
            end
            }
        },
        distance = Config.Target.Distance, 
        })
    end
end)