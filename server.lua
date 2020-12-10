ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('modeo:BuyPain1')
AddEventHandler('modeo:BuyPain1', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyPain2')
AddEventHandler('modeo:BuyPain2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 2)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyPain3')
AddEventHandler('modeo:BuyPain3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 3)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyPain4')
AddEventHandler('modeo:BuyPain4', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 4)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyPain5')
AddEventHandler('modeo:BuyPain5', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyEau1')
AddEventHandler('modeo:BuyEau1', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyEau2')
AddEventHandler('modeo:BuyEau2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 2)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyEau3')
AddEventHandler('modeo:BuyEau3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 3)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyEau4')
AddEventHandler('modeo:BuyEau4', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 4)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyEau5')
AddEventHandler('modeo:BuyEau5', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyCigarette1')
AddEventHandler('modeo:BuyCigarette1', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cigarett', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyCigarette2')
AddEventHandler('modeo:BuyCigarette2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cigarett', 2)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyCigarette3')
AddEventHandler('modeo:BuyCigarette3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cigarett', 3)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyCigarette4')
AddEventHandler('modeo:BuyCigarette4', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cigarett', 4)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyCigarette5')
AddEventHandler('modeo:BuyCigarette5', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cigarett', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)