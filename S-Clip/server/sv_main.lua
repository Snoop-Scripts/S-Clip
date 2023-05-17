-------------------
--Snoop Dogg#2843--
-------------------

-------------------
--DM IF NEED HELP--
-------------------


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('s_clip:remove')
AddEventHandler('s_clip:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(Config.item["item"], 1)
end)

ESX.RegisterUsableItem(Config.item["item"], function(source)
	TriggerClientEvent('s_clip', source)
end)

