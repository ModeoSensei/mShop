ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('modeo:BuyPain')

AddEventHandler('modeo:BuyPain', function()



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







RegisterNetEvent('modeo:BuyEau')

AddEventHandler('modeo:BuyEau', function()



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







RegisterNetEvent('modeo:BuyCigarette')

AddEventHandler('modeo:BuyCigarette', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 10

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('cigarett', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyBriquet')

AddEventHandler('modeo:BuyBriquet', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 50

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('briquet', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyBeer')

AddEventHandler('modeo:BuyBeer', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 27

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('beer', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyBait')

AddEventHandler('modeo:BuyBait', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 9

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('bait', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyBrolly')

AddEventHandler('modeo:BuyBrolly', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 70

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('brolly', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)






RegisterNetEvent('modeo:BuyChips')

AddEventHandler('modeo:BuyChips', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 25

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('chips', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyJager')

AddEventHandler('modeo:BuyJager', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 47

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('jager', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyArmand')

AddEventHandler('modeo:BuyArmand', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 7645

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('jagercerbere', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)







RegisterNetEvent('modeo:BuyGPS')

AddEventHandler('modeo:BuyGPS', function()                          



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 60

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('geol', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)






RegisterNetEvent('modeo:BuyJumelles')

AddEventHandler('modeo:BuyJumelles', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 120

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('jumelles', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)