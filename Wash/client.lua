StartWash = function(dic, anim)
    LoadAnim(dic)
    TaskPlayAnim(PlayerPedId(), dic, anim, 1.0, 8.0, 5000, 0, 0.0, false, false, false)
    Citizen.Wait(5000)
    ClearPedTasks(PlayerPedId())
    Citizen.InvokeNative(0x6585D955A68452A5, PlayerPedId()) -- ClearPedEnvDirt
    Citizen.InvokeNative(0x523C79AEEFCC4A2A, PlayerPedId(), 10, "ALL") -- ClearPedDamageDecalByZone
    Citizen.InvokeNative(0x9C720776DAA43E7E, PlayerPedId())
    Citizen.InvokeNative(0x8FE22675A5A45817, PlayerPedId())  -- ClearPedBloodDamage
    Citizen.InvokeNative(0xE3144B932DFDFF65, PlayerPedId(), 0.0, -1, 1, 1) -- SetPedDirtCleaned
end

LoadAnim = function(dic)
    RequestAnimDict(dic)

    while not (HasAnimDictLoaded(dic)) do
        Citizen.Wait(0)
    end
end





RegisterNetEvent('Wash:WashPlayer')
AddEventHandler('Wash:WashPlayer', function()

    TriggerServerEvent("Wash:removesoap")
    TriggerEvent("vorp:TipBottom", ('Wash That Stank ASS'), 4000)
        StartWash("mech_loco@player@zero@generic@streamed_idles@a", "fidget_dust_off")


end)
