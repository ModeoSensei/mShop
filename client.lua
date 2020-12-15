local Menu = {
    check = faux,
    check = vraie,
  ------------------
    action = {
        '~m~1',
        '~m~2',
        '~m~3',
        '~m~4',
        '~m~5'
    },
    -------------------
    list = 1,
    num = 0,
    pro = 1,
}


ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

------------ Création du Menu / Sous Menu -----------

RMenu.Add('Modeo', 'main', RageUI.CreateMenu("Magasin", "Menu Magasin"))
RMenu.Add('Modeo', 'boisson', RageUI.CreateSubMenu(RMenu:Get('Modeo', 'main'), "Boissons", "Menu Boissons"))
RMenu.Add('Modeo', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('Modeo', 'main'), "Nourritures", "Menu Nourritures"))
RMenu.Add('Modeo', 'autre', RageUI.CreateSubMenu(RMenu:Get('Modeo', 'main'), "Autres", "Menu Autres"))
RMenu.Add('Modeo', 'choose', RageUI.CreateSubMenu(RMenu:Get('Modeo', 'main'), "Retour", "Choisir une catégorie"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Modeo', 'main'), true, true, true, function()

            RageUI.Button("Boissons", "Choisi ta Boisson !", {RightLabel = "~g~→→"},true, function()
            end, RMenu:Get('Modeo', 'boisson'))

            RageUI.Button("Nourritures", "Choisi ta Nourriture !", {RightLabel = "~g~→→"},true, function()
            end, RMenu:Get('Modeo', 'nourriture'))

            RageUI.Button("Autres", "Choisi les objets dont tu as besoins...", {RightLabel = "~g~→→"},true, function()
            end, RMenu:Get('Modeo', 'autre'))

            RageUI.Separator("~h~↓ ~r~Fermer le Menu~w~ ↓")

            RageUI.Button("~r~Fermer", nil, {RightLabel = "~r~←←"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('Modeo', 'choose'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('Modeo', 'boisson'), true, true, true, function()
            RageUI.Separator("↓ ~b~Boissons~s~ ↓")
            RageUI.List('Eau ← 5$ →', Menu.action, Menu.list, nil, {RightLabel = ""}, true, function(Hovered, Active, Selected, Index)
                if (Selected) then
                    if Index == 1 then
                        TriggerServerEvent('modeo:BuyEau1')
                    elseif Index == 2 then
                        TriggerServerEvent('modeo:BuyEau2')
                    elseif Index == 3 then
                        TriggerServerEvent('modeo:BuyEau3')
                    elseif Index == 4 then
                        TriggerServerEvent('modeo:BuyEau4')
                    elseif Index == 5 then
                        TriggerServerEvent('modeo:BuyEau5')
                    end
                end
                Menu.list = Index;
            end)
                end, function()
                end)

                RageUI.IsVisible(RMenu:Get('Modeo', 'nourriture'), true, true, true, function()
                    RageUI.Separator("↓ ~o~Nourritures~s~ ↓")
                    RageUI.List('Pain ← 5$ →', Menu.action, Menu.list, nil, {RightLabel = ""}, true, function(Hovered, Active, Selected, Index)
                            if (Selected) then
                                if Index == 1 then
                                    TriggerServerEvent('modeo:BuyPain1')
                                elseif Index == 2 then
                                    TriggerServerEvent('modeo:BuyPain2') 
                                elseif Index == 3 then
                                    TriggerServerEvent('modeo:BuyPain3')
                                elseif Index == 4 then
                                    TriggerServerEvent('modeo:BuyPain4')
                                elseif Index == 5 then
                                    TriggerServerEvent('modeo:BuyPain5')
                                end
                            end
                            Menu.list = Index;
                        end)
                   end, function()
                end)

                    RageUI.IsVisible(RMenu:Get('Modeo', 'autre'), true, true, true, function()
                        RageUI.Separator("↓ ~r~Autres~s~ ↓")
                        RageUI.List('Cigarette ← 10$ →', Menu.action, Menu.list, nil, {RightLabel = ""}, true, function(Hovered, Active, Selected, Index)
                            if (Selected) then
                                if Index == 1 then
                                    TriggerServerEvent('modeo:BuyCigarette1')
                                elseif Index == 2 then
                                    TriggerServerEvent('modeo:BuyCigarette2') 
                                elseif Index == 3 then
                                    TriggerServerEvent('modeo:BuyCigarette3')
                                elseif Index == 4 then
                                    TriggerServerEvent('modeo:BuyCigarette4')
                                elseif Index == 5 then
                                    TriggerServerEvent('modeo:BuyCigarette5')
                                end
                            end
                            Menu.list = Index;
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

                   ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Magasin")

                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('Modeo', 'main'), not RageUI.Visible(RMenu:Get('Modeo', 'main')))
                    end
                end
            end
        end
    end)


-------------- LES BLIPS -------------

local blips = {
    {title="Magasins", colour=2, id=642, x = 24.129, y = -1346.156, z = 28.497, h = 266.946},
    {title="Magasins", colour=2, id=642, x = 2557.458, y = 382.282, z = 107.622},
    {title="Magasins", colour=2, id=642, x = -3038.939, y = 585.954, z = 6.97},
    {title="Magasins", colour=2, id=642, x = -3241.927, y = 1001.462, z = 11.850},
    {title="Magasins", colour=2, id=642, x = 547.431, y = 2671.710, z = 41.176},
    {title="Magasins", colour=2, id=642, x = 1961.464, y = 3740.672, z = 31.363},
    {title="Magasins", colour=2, id=642, x = 2678.916, y = 3280.671, z = 54.261},
    {title="Magasins", colour=2, id=642, x = 1729.216, y = 6414.131, z = 34.057},
    {title="Magasins", colour=2, id=642, x = 1135.808, y = -982.281, z = 45.45},
    {title="Magasins", colour=2, id=642, x = -1222.93, y = -906.99, z = 11.35},
    {title="Magasins", colour=2, id=642, x = -1487.553, y = -379.107, z = 39.163},
    {title="Magasins", colour=2, id=642, x = -2968.243, y = 390.910, z = 14.054},
    {title="Magasins", colour=2, id=642, x = 1166.024, y = 2708.930, z = 37.167},
    {title="Magasins", colour=2, id=642, x = 1392.562, y = 3604.684, z = 33.995},
    {title="Magasins", colour=2, id=642, x = -1393.409, y = -606.624, z = 29.319},
    {title="Magasins", colour=2, id=642, x = -1037.618, y = -2737.399, z = 19.169},
    {title="Magasins", colour=2, id=642, x = -48.519, y = -1757.514, z = 28.47},
    {title="Magasins", colour=2, id=642, x = 1163.373, y = -323.801, z = 68.27},
    {title="Magasins", colour=2, id=642, x = -707.67, y = -914.22, z = 18.26},
    {title="Magasins", colour=2, id=642, x = -1820.523, y = 792.518, z = 137.20},
    {title="Magasins", colour=2, id=642, x = 1698.388, y = 4924.404, z = 41.083}
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, 52)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.7)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

-------------- LES PNJ ! -------------

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 24.129, -1346.156, 28.497, 266.946, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)