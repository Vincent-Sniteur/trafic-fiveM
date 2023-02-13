-- Author: Sniteur - Vincent
-- Date: 2023-02-13
-- Version: 1.0.0 - Test version

-- Import the vehicle list
local vehicleList = require("vehicleList") -- Path: vehicleList.lua

-- Add the vehicles to the traffic spawn list
Citizen.CreateThread(function()
  for _, vehicleName in pairs(vehicleList) do
    AddVehicleSubtable(vehicleName, "traffic")
  end
end)