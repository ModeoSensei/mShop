ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)



------------ Création du Menu / Sous Menu -----------



RMenu.Add('example', 'main', RageUI.CreateMenu("Magasin", "Menu Magasin"))
RMenu.Add('example', 'boisson', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Boissons", "Menu Boissons"))
RMenu.Add('example', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Nourritures", "Menu Nourritures"))
RMenu.Add('example', 'tabac', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Tabac", "Menu Tabac"))
RMenu.Add('example', 'alcool', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Alcool", "Menu Alcool"))
RMenu.Add('example', 'autre', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Autres", "Menu Autres"))



Citizen.CreateThread(function()

    while true do

        RageUI.IsVisible(RMenu:Get('example', 'main'), true, true, true, function()


            RageUI.Button("Boissons", "Choisi ta Boisson !", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'boisson'))

            RageUI.Button("Nourritures", "Choisi ta Nourriture !", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'nourriture'))

            RageUI.Button("Tabac", "Cigarettes, Briquets etc... !", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'tabac'))


            RageUI.Button("Alcool", "Whisky, Vodka etc... !", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'alcool'))


            RageUI.Button("Autres", "Parapluies, perceuses, Appats etc...", {RightLabel = "→"},true, function() 
            end, RMenu:Get('example', 'autre'))
        end, function()
        end)



        RageUI.IsVisible(RMenu:Get('example', 'boisson'), true, true, true, function()


            RageUI.Button("→ Eau", "Liquide naturel, inodore, incolore et transparent quand il est pur.", {RightLabel = "~g~5€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuyEau')
                end
            end)
                end, function()
                end)





             RageUI.IsVisible(RMenu:Get('example', 'tabac'), true, true, true, function()


                    RageUI.Button("→ Cigarette", "Petit rouleau de tabac haché et enveloppé dans un papier fin.", {RightLabel = "~g~10€"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('modeo:BuyCigarette')
                        end
                    end)



                    RageUI.Button("→ Briquet", "Petit appareil pouvant produire du feu à répétition.", {RightLabel = "~g~50€"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('modeo:BuyBriquet')
                        end
                    end)
                end, function()
                end)



                RageUI.IsVisible(RMenu:Get('example', 'alcool'), true, true, true, function()


                    RageUI.Button("→ Bière", "Boisson alcoolique fermentée, faite avec de l'orge germée et aromatisée avec des fleurs de houblon.", {RightLabel = "~g~27€"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('modeo:BuyBeer')
                        end
                    end)



                    RageUI.Button("→ Jager", "Jägermeister (maître chasseur en allemand) est une marque commerciale allemande de liqueur fabriquée et propriété de Mast-Jägermeister SE. Cette boisson titrant 35° est à base de plantes médicinales. Les 56 herbes qui entrent dans sa composition sont tenues secrètes.", {RightLabel = "~g~47€"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('modeo:BuyJager')
                        end
                    end)
                end, function()
                end)



                    RageUI.IsVisible(RMenu:Get('example', 'autre'), true, true, true, function()


                        RageUI.Button("→ Appat de poisson", "Appliqué au domaine des milieux aquatiques, dans le domaine de la pêche, l'appât est une pâture pour piéger les poissons généralement carnivores, des céphalopodes (pieuvres et calmars) ou divers crustacés (crevettes, homards, langoustes, langoustines, écrevisses...).", {RightLabel = "~g~9€"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                                TriggerServerEvent('modeo:BuyBait')
                            end
                        end)



                        RageUI.Button("→ Jumelles", "Instrument portatif à deux lunettes ; double lorgnette.", {RightLabel = "~g~120€"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                                TriggerServerEvent('modeo:BuyJumelles')
                            end
                        end)



                        RageUI.Button("→ GPS", "Système de localisation (de mobiles) par satellite.", {RightLabel = "~g~60€"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                                TriggerServerEvent('modeo:BuyGPS')
                            end
                        end)


                        RageUI.Button("→ Parapluie", "Matière fabriquée d'abord avec du chiffon, puis avec des fibres végétales (bois) réduites en pâte, traitée pour former une feuille mince.", {RightLabel = "~g~70€"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                                TriggerServerEvent('modeo:BuyBrolly')
                            end
                        end)
                    end, function()
                    end)


                        RageUI.IsVisible(RMenu:Get('example', 'nourriture'), true, true, true, function()

                            RageUI.Button("→ Pain", "Aliment fait de farine, d'eau, de sel et de levain, pétri, levé et cuit au four.", {RightLabel = "~g~5€"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('modeo:BuyPain')
                                end
                            end)

                        

            end, function()
                ---Panels
            end, 1)


            Citizen.Wait(0)
        end
    end)







    ---------------------------------------- Position du Menu --------------------------------------------



    local position = {
        {x = 25.67 , y = -1346.37, z = 29.49 },
        {x = -1222.84 , y = -907.0730, z = 12.32 },
        {x = -1487.64 , y = -379.14, z = 40.16 },
        {x = -707.41 , y = -914.1264, z = 19.21 },
        {x = 373.93 , y = 326.17, z = 103.56 },
        {x = 1163.41 , y = -323.82, z = 69.20 },
        {x = 374.07 , y = 326.73, z = 103.56 },
        {x = 2557.458, y = 382.282, z = 108.319},
        {x = -3038.939, y = 585.954, z = 7.908},
        {x = -3241.927, y = 1001.462, z = 12.830},
        {x = 547.431, y = 2671.710, z = 42.156},
        {x = 1961.464, y = 3740.672, z = 32.343},
        {x = 2678.916, y = 3280.671, z = 55.241},
        {x = 1729.216, y = 6414.131, z = 35.037},
        {x = 1135.808, y = -982.281, z = 46.415},
        {x = -2968.243, y = 390.910, z = 15.043},
        {x = 1166.024, y = 2708.930, z = 38.157},
        {x = 1392.562, y = 3604.648, z = 34.980},
        {x = -48.519, y = -1757.514, z = 29.421},
        {x = -1820.523, y = 792.518, z = 138.118},
        {x = 1698.388, y = 4924.404, z = 42.063}
    }
    
    

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
                if dist <= 1.0 then

                   --[[RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Shop",
                        time_display = 1
                    })--]]

                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('example', 'main'), not RageUI.Visible(RMenu:Get('example', 'main')))
                    end
                end
            end
        end
    end)


    ---------------------------------------- Blips --------------------------------------------





    local blips = {
        {title="Magasin", colour=2, id=52, x = 25.742, y = -1345.741, z = 28.497},
        {title="Magasin", colour=2, id=52,x = 373.875, y = 325.896, z = 100.319},
        {title="Magasin", colour=2, id=52,x = 2557.458, y = 382.282, z = 100.319},
        {title="Magasin", colour=2, id=52,x = -3038.939, y = 585.954, z = 6.908},
        {title="Magasin", colour=2, id=52,x = -3241.927, y = 1001.462, z = 11.830},
        {title="Magasin", colour=2, id=52,x = 547.431, y = 2671.710, z = 41.156},
        {title="Magasin", colour=2, id=52,x = 1961.464, y = 3740.672, z = 31.343},
        {title="Magasin", colour=2, id=52,x = 2678.916, y = 3280.671, z = 54.241},
        {title="Magasin", colour=2, id=52,x = 1729.216, y = 6414.131, z = 34.037},
        {title="Magasin", colour=2, id=52,x = 1135.808, y = -982.281, z = 45.415},
        {title="Magasin", colour=2, id=52,x = -1222.915, y = -906.983, z = 11.326},
        {title="Magasin", colour=2, id=52,x = -1487.553, y = -379.107, z = 39.163},
        {title="Magasin", colour=2, id=52,x = -2968.243, y = 390.910, z = 14.043},
        {title="Magasin", colour=2, id=52,x = 1166.024, y = 2708.930, z = 37.157},
        {title="Magasin", colour=2, id=52,x = 1392.562, y = 3604.648, z = 33.980},
        {title="Magasin", colour=2, id=52,x = -48.519, y = -1757.514, z = 28.421},
        {title="Magasin", colour=2, id=52,x = 1163.373, y = -323.801, z = 68.205},
        {title="Magasin", colour=2, id=52,x = -1820.523, y = 792.518, z = 137.118},
        {title="Magasin", colour=2, id=52,x = -707.41 , y = -914.1264, z = 19.21},
        {title="Magasin", colour=2, id=52,x = 1698.388, y = 4924.404, z = 41.063}

    

    }

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 372.46, 326.56, 102.56, 254.15, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    
    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 24.21, -1346.98, 28.49, 268.25, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 2556.95, 380.76, 107.62, 358.26, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -3039.14, 584.39, 6.90, 15.34, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -3242.57, 999.77, 11.83, 352.11, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    
    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 549.02, 2671.34, 41.15, 100.94, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1959.90, 3740.14, 31.34, 301.24, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    
    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 2677.72, 3279.25, 54.24, 330.50, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1727.87, 6415.53, 34.03, 246.90, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1133.75, -982.23, 45.41, 274.96, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -1222.07, -908.74, 11.32, 32.90, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -1485.92, -378.30, 39.16, 141.25, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -2966.36, 390.60, 14.04, 89.57, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    
    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1166.27, 2711.04, 37.15, 174.64, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1392.61, 3606.57, 33.98, 203.31, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -46.82, -1758.43, 28.42, 54.27, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1165.13, -322.98, 68.20, 95.95, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -1819.76, 794.15, 137.08, 133.77, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", -705.89, -914.01, 18.21, 94.31, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1697.65, 4922.99, 41.06, 328.19, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    

    Citizen.CreateThread(function()
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.7)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end)

    