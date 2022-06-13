QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ak47_qb_iclothingv2:notify')
AddEventHandler('ak47_qb_iclothingv2:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)