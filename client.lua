local QBCore = exports['qb-core']:GetCoreObject()
local source = PlayerPedId()

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
                event = "sg-sinks:washhands",
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
                event = "sg-sinks:washhands", 
              }
            },
            distance = Config.Target.Distance, 
          })

    end

end)

-- Wash hands
RegisterNetEvent('sg-sinks:washhands')
AddEventHandler('sg-sinks:washhands', function()

    if Config.Progress.Type == 'circle' then

        if Config.Sound == 'true' then
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
                blendIn = 1.0,
                duration = 3000,
                scenario = 'PROP_HUMAN_BUM_BIN',
                blendOut = 1.0,
            },
        })
        then
            Wait(100)
            if Config.Notify == 'okok' then
                exports['okokNotify']:Alert(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 3000, 'success', true)
            elseif Config.Notify == 'ox' then
                lib.notify({
                    title = Locals[Config.Language]['SuccessTitle'],
                    description = Locals[Config.Language]['SuccessDescription'],
                    type = 'success'
                })
            elseif Config.Notify == 'mythic' then
                exports['mythic_notify']:DoHudText('success', Locals[Config.Language]['SuccessDescription'])
            end
        else
            ClearPedTasksImmediately(PlayerPedId())
            if Config.Notify == 'okok' then
                exports['okokNotify']:Alert(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 3000, 'error', true)
            elseif Config.Notify == 'ox' then
                lib.notify({
                    title = Locals[Config.Language]['ErrorTitle'],
                    description = Locals[Config.Language]['ErrorDescription'],
                    type = 'error'
                })
            elseif Config.Notify == 'mythic' then
                exports['mythic_notify']:DoHudText('error', Locals[Config.Language]['ErrorDescription'])
            end
        end
    elseif Config.Progress.Type == 'bar' then

        if Config.Sound == 'true' then
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
                blendIn = 1.0,
                duration = 3000,
                scenario = 'PROP_HUMAN_BUM_BIN',
                blendOut = 1.0,
            },
        }) 
        then
        Wait(100)
        if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 3000, 'success', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['SuccessTitle'],
                description = Locals[Config.Language]['SuccessDescription'],
                type = 'success'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('success', Locals[Config.Language]['SuccessDescription'])
        end
    else
        ClearPedTasksImmediately(PlayerPedId())
        if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 3000, 'error', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['ErrorTitle'],
                description = Locals[Config.Language]['ErrorDescription'],
                type = 'error'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('error', Locals[Config.Language]['ErrorDescription'])
        end    
    end
elseif Config.Progress.Type == 'skillcheck' then

    local success = lib.skillCheck({'easy'}, {'e'})

    if success then

        if Config.Sound == 'true' then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 4, "hands", 0.5)
        end
        TaskStartScenarioInPlace(source, 'PROP_HUMAN_BUM_BIN', 0, true)
        Wait(6500)
        ClearPedTasksImmediately(source)

        if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 3000, 'success', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['SuccessTitle'],
                description = Locals[Config.Language]['SuccessDescription'],
                type = 'success'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('success', Locals[Config.Language]['SuccessDescription'])
        end
    else
        lib.cancelSkillCheck()
        ClearPedTasksImmediately(source)
        if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 3000, 'error', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['ErrorTitle'],
                description = Locals[Config.Language]['ErrorDescription'],
                type = 'error'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('error', Locals[Config.Language]['ErrorDescription'])
        end    
    end
elseif Config.Progress.Type == 'qb-bar' then

    if Config.Sound == 'true' then
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 4, "hands", 0.5)
    end

    TaskStartScenarioInPlace(source, 'PROP_HUMAN_BUM_BIN', 0, true)
    QBCore.Functions.Progressbar("washhands", Locals[Config.Language]['ProgressLabel'], Config.Progress.Duration, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
     }, {}, {}, {}, function()
                if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['SuccessTitle'], Locals[Config.Language]['SuccessDescription'], 3000, 'success', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['SuccessTitle'],
                description = Locals[Config.Language]['SuccessDescription'],
                type = 'success'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('success', Locals[Config.Language]['SuccessDescription'])
        end
     end, function()
        ClearPedTasksImmediately(source)
        if Config.Notify == 'okok' then
            exports['okokNotify']:Alert(Locals[Config.Language]['ErrorTitle'], Locals[Config.Language]['ErrorDescription'], 3000, 'error', true)
        elseif Config.Notify == 'ox' then
            lib.notify({
                title = Locals[Config.Language]['ErrorTitle'],
                description = Locals[Config.Language]['ErrorDescription'],
                type = 'error'
            })
        elseif Config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('error', Locals[Config.Language]['ErrorDescription'])
        end  
     end)

end
end)


