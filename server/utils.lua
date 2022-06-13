QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	while QBCore == nil do Citizen.Wait(100) end
	for j, k in pairs(Config.Preset) do -- category, data
	    for l, m in pairs(k.uni) do -- item name, data
	        QBCore.Functions.CreateUseableItem(l, function(source)
	            TriggerClientEvent('ak47_qb_iclothingv2:setclothing', source, l, m, k)
	        end)
	    end
	end
end)