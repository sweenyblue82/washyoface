VORP = exports.vorp_core:vorpAPI()
local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

local VORPInv = {}

VORPInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent("Wash:removesoap")
AddEventHandler("Wash:removesoap", function()

    local _source = source 

--remove an item
VORPInv.subItem(source, "soap", 1)

end)

VORPInv.RegisterUsableItem("soap", function(data)
    TriggerClientEvent('Wash:WashPlayer', data.source)
    print(data.source) -- player using the item
end)