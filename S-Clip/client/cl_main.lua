ESX          = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('s_clip')
AddEventHandler('s_clip', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('s_clip:remove')
      exports.rprogress:Custom({
        Duration = Config.rprogress["duration"],
        Label = Config.rprogress["text"],
        DisableControls = {
            Mouse = Config.rprogress["mouse"],
            Player = Config.rprogress["player"],
            Vehicle = Config.rprogress["vehicle"]
        }
    })
    ExecuteCommand('e uncuff')
    Wait(Config.rprogress["duration"])
    ExecuteCommand('e c')
      AddAmmoToPed(GetPlayerPed(-1), hash,(Config.settings["ammo"]))
      exports['mythic_notify']:DoHudText(Config.notify["type"], Config.notify["used"])
    else
      exports['mythic_notify']:DoHudText(Config.notify["type2"], Config.notify["full_ammo"])
    end
  else
    exports['mythic_notify']:DoHudText(Config.notify["type2"], Config.notify["no_gun"])
  end
end)
