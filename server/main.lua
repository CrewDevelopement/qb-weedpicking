local QBCore = exports['qb-core']:GetCoreObject()

-- Events
RegisterServerEvent('qb-weedpicking:server:getItem', function(itemlist)
    local Player = QBCore.Functions.GetPlayer(source)
    local itemlist = itemlist
    local removed = false
    for k, v in pairs(itemlist) do
        if v.threshold > math.random(0, 100) then
            Player.Functions.AddItem(v.name, math.random(1, v.max))
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[v.name], "add")
            if v.remove ~= nil and not removed then
                removed = true
                Player.Functions.RemoveItem(v.remove, 1)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[v.remove], "remove")
            end
        end
    end
end)

RegisterNetEvent('qb-weedpicking:server:sellweed', function(args) 
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local args = tonumber(args)
	if args == 1 then 
		local drycanabis = Player.Functions.GetItemByName("drycanabis")
		if drycanabis ~= nil then
			local payment = 200 -- sell price for item
			Player.Functions.RemoveItem("drycanabis", 1, k)
			Player.Functions.AddMoney('bank', payment , "drycanabis-sell")
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["drycanabis"], "remove", 1)
			TriggerClientEvent('QBCore:Notify', src, " 1 Sold for $"..payment, "success")
			TriggerClientEvent("qb-weedpicking:client:sellweed", source)
		else
		    TriggerClientEvent('QBCore:Notify', src, "you have no weed to sell", "error")
        end 
    end
end)

QBCore.Functions.CreateUseableItem("scissors", function(source, item)
	local src = source
    TriggerClientEvent('qb-weedpicking:client:startpicking', src)
end)

QBCore.Functions.CreateUseableItem("dryer", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Player.Functions.GetItemByName("wetcanabis")
    if item ~= nil then
        TriggerClientEvent('qb-weedpicking:client:startdry', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have nothing to Dry!..', 'error')
    end
end)
