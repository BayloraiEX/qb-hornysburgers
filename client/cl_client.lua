local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

CreateThread(function()
    HornysBurgers = AddBlipForCoord(1243.78, -359.23, 69.08)
    SetBlipSprite (HornysBurgers, 80)
    SetBlipDisplay(HornysBurgers, 4)
    SetBlipScale  (HornysBurgers, 0.5)
    SetBlipAsShortRange(HornysBurgers, true)
    SetBlipColour(HornysBurgers, 70)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("HornysBurgers")
    EndTextCommandSetBlipName(HornysBurgers)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
        HornysBurgersZones()
    end
end)

AddEventHandler('onResourceStop', function(resourceName) 
    if GetCurrentResourceName() == resourceName then
        for k, v in pairs(Config.Zones) do
            exports['qb-target']:RemoveZone("hornysburgers"..k)
        end
        DeletePed(jobPed)
    end 
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    HornysBurgersZones()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:RemoveZone("hornysburgers"..k)
    end
    DeletePed(jobPed)
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

function HornysBurgersZones()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:AddCircleZone("hornysburgers"..k, v.coords, v.radius, {
            name = "hornysburgers"..k,
            debugPoly = false,
            useZ=true,
        }, {
            options = {
                {
                    type = "client",
                    event = v.event,
                    icon = v.icon,
                    label = v.label,
                    job = v.job,
                },
            },
            distance = 1.5
        })
    end
    if not DoesEntityExist(jobPed) then

    RequestModel(Config.GaragePed) while not HasModelLoaded(Config.GaragePed) do Wait(0) end

    jobPed = CreatePed(0, Config.GaragePed, Config.PedLocation, false, false)

    SetEntityAsMissionEntity(jobPed, true, true)
	SetPedFleeAttributes(jobPed, 0, 0)
	SetBlockingOfNonTemporaryEvents(jobPed, true)
	SetEntityInvincible(jobPed, true)
	FreezeEntityPosition(jobPed, true)
	loadAnimDict("amb@world_human_leaning@female@wall@back@holding_elbow@idle_a")        
	TaskPlayAnim(jobPed, "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", 8.0, 1.0, -1, 01, 0, 0, 0, 0)

	exports['qb-target']:AddTargetEntity(jobPed, { 
	    options = {
		{ 
		    type = "client",
		    event = "qb-hornysburgers:client:jobGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Garage",
		    job = "hornysburger"
		},
		{ 
		    type = "client",
		    event = "qb-hornysburgers:client:storeGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Store Vehicle",
		    job = "hornysburger"
		},
	    }, 
	    distance = 1.5, 
	})
    end
end

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)

RegisterNetEvent('qb-hornysburgers:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "HORNYS"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "t_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 100.0)
    end, coords, true)
end)

RegisterNetEvent('qb-hornysburgers:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "t_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        QBCore.Functions.Notify("You returned the vehicle.", "success")
    else
        QBCore.Functions.Notify("This is not a work vehicle.", "error")
    end
end)

RegisterNetEvent("qb-hornysburgers:client:frontTray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "hornysburgerfoodtray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "hornysburgerfoodtray1", {
        maxweight = 10000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-hornysburgers:client:frontTray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "hornysburgerfoodtray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "hornysburgerfoodtray2", {
        maxweight = 10000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-hornysburgers:client:frontTray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "hornysburgerfoodtray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "hornysburgerfoodtray3", {
        maxweight = 10000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-hornysburgers:client:jobFridge1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "hornysburgerfridge1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "hornysburgerfridge1", {
        maxweight = 3000000,
        slots = 30,
    })
end)

RegisterNetEvent("qb-hornysburgers:client:jobHeater1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Heater")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Heater", {
        maxweight = 100000,
        slots = 30,
    })
end)

RegisterNetEvent("qb-hornysburgers:client:ingredientStore", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "hornysburger", Config.Items)
end)

RegisterNetEvent('qb-hornysburgers:clientToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-hornysburgers:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Cash Register",
		submitText = "Charge",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", 
                type = "text", 
                isRequired = true --
            },
            {
                text = "   Bill Price ($)",
                name = "billprice", 
                type = "number",
                isRequired = false
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-hornysburgers:server:billPlayer", bill.citizenid, bill.billprice)
    end
end)
