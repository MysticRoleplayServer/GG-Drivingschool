local QBCore = exports['qb-core']:GetCoreObject() 

Config = {}

Config.Framework = 'qb-core'    -- your framework name here
Config.Inventory = 'qb'         -- your inventory script here 'qb' - for 'qb-inventory' | 'ox' - for'ox_inventory'
Config.Target = 'qb'            -- your target script name here 'qb' - for 'qb-target' | 'ox' - for 'ox_target' | 'interact' for world interaction

Config.startingped = vector4(-1088.6002, -1269.8413, 5.7643, 196.1501)
Config.MaxErrors       = 5
Config.SpeedMultiplier =  3.6

Config.SpeedLimits = {
	residence = 50,
	town      = 80,
	freeway   = 120
}

Config.Vehicles = 'blista'
Config.FuelScript = 'cdn-fuel'
Config.TestCost = 500

Config.Zones = {
	DMVSchool = {
		Pos   = {x = -1085.89, y = -1267.8, z = 5.77}
	},
}

Config.CheckPoints = {

	{
		Pos = {x = -1065.9305, y = -1264.2313, z = 5.0294},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town') -- 50MPH
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Stop For Traffic and Civilians', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Turn Right to Next Point | Speed Limit 50MPH', "success", 2500)
			end)
		end
	},

	{
		Pos = {x =-1143.8021, y = -1304.1387, z = 4.1192},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Stop For Civilians', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Good, Lets Continue', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -1187.2986, y = -1259.6807, z = 5.8338},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				QBCore.Functions.Notify("Stop for Stop Sign", "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Good, Continue Straight', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -1206.9039, y = -1174.7715, z = 6.7019},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Watch Traffic Light Son', "error", 2500)
		end
	},

	{
		Pos = {x = -1242.0125, y = -1075.4448, z = 7.4786},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Doing great! Go To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1278.7988, y = -941.1923, z = 10.3843},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1356.5883, y = -814.5430, z = 17.9425},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway') -- 75 MPH
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Watch Out for Crazy Drivers!', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Turn Left onto Highway | Speed Limit 75MPH', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -2021.0271, y = -415.0637, z = 10.3281},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Great Job! Lets Continue Straight', "success", 2500)
		end
	},

	{
		Pos = {x = -2141.2847, y = -333.3002, z = 12.0931},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Yield to Traffic on Left', "success", 2500)
		end
	},

	{
		Pos = {x = -1748.2152, y = -359.1699, z = 45.3504},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town') -- 50MPH
			QBCore.Functions.Notify("Watch Your Speed in the City | Speed Limit 50MPH", "success", 2500)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = -1622.3002, y = -310.9038, z = 50.3558},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1569.8596, y = -202.0237, z = 54.4377},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Major intersection! Pay Attention', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Turn Right', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -1509.9376, y = -250.5986, z = 49.3870},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1402.3401, y = -374.6365, z = 35.9903},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1318.6458, y = -491.5047, z = 32.2693},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Stay Alert', "error", 2500)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = -1237.6532, y = -587.1887, z = 26.2370},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1147.1421, y = -694.3411, z = 20.6558},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1099.8096, y = -749.0117, z = 18.4322},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -840.1058, y = -1004.8095, z = 12.5401},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue To Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -785.9594, y = -1101.9583, z = 9.5677},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Lets Return to the DMV', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Turn Right', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -890.7018, y = -1175.7041, z = 3.7257},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Great Job! Almost Done!', "success", 2500)
		end
	},

	{
		Pos = {x = -936.8225, y = -1201.9659, z = 4.1070},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			QBCore.Functions.Notify('Continue to Next Point', "success", 2500)
		end
	},

	{
		Pos = {x = -1051.1122, y = -1267.2712, z = 5.2160},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				QBCore.Functions.Notify('Lets Find Out if You Passed', "error", 2500)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)
				FreezeEntityPosition(vehicle, false)
				QBCore.Functions.Notify('Turn Right into DMV Parking Lot', "success", 2500)
			end)
		end
	},

	{
		Pos = {x = -1080.2761, y = -1257.7416, z = 4.5624},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DeleteVehicle(vehicle)
		end
	}

}
