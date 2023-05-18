local QBCore = exports['qb-core']:GetCoreObject() 

-- Register Event for eating
RegisterNetEvent('qb-hornysburgers:client:Eat', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("eat_something", "Munching..", 5000, false, false, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + HungerFill[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)
-- Register Event for drinking
RegisterNetEvent('qb-hornysburgers:client:Drink', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"soda"})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ThirstFill[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)

-- Register Events for Making Food and then Triggering them
-- Breakfast Category
-- Bacon Rolls
RegisterNetEvent('qb-hornysburgers:client:makeBaconRoll', function()
	local ingredients = QBCore.Functions.HasItem({'hb-bacon'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeBaconRoll")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bacon"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-baconroll"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else	
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Breakfast plate
RegisterNetEvent('qb-hornysburgers:client:makeBreakfast', function()
	local ingredients = QBCore.Functions.HasItem({'hb-lettuce', 'hb-eggs', 'hb-cheddar', 'hb-bread', 'hb-potatoes'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeBreakfast")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-potatoes"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-breakfast"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Eggs N Bacon With Toast
RegisterNetEvent('qb-hornysburgers:client:makeEggsBacon', function()
	local ingredients = QBCore.Functions.HasItem({'hb-eggs', 'hb-bacon', 'hb-bread'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeEggsBacon")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bacon"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggsbacon"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Eggs Benedict
RegisterNetEvent('qb-hornysburgers:client:makeEggsBenedict', function()
	local ingredients = QBCore.Functions.HasItem({'hb-eggs', 'hb-bread', 'hb-cheddar'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeEggsBenedict")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs-benedict"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- French Toast
RegisterNetEvent('qb-hornysburgers:client:makeFrenchToast', function()
	local ingredients = QBCore.Functions.HasItem({'hb-eggs', 'hb-bread'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeFrenchToast")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-frenchtoast"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- French Toast With Bacon
RegisterNetEvent('qb-hornysburgerst:client:makeFrenchToastBacon', function()
	local ingredients = QBCore.Functions.HasItem({'hb-eggs', 'hb-bread', 'hb-bacon'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeFrenchToastBacon")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-eggs"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bacon"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-french-toast-bacon"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Hashbrowns
RegisterNetEvent('qb-hornysburgers:client:makeHashbrowns', function()
	local ingredients = QBCore.Functions.HasItem({'hb-potatoes'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-restaurant:server:makeHashbrowns")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-potatoes"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hashbrowns"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Sausages
RegisterNetEvent('qb-hornysburgers:client:makeSausages', function()
	local ingredients = QBCore.Functions.HasItem({'hb-sausage'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeSausages")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sausage"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sausages"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Burger Category
-- Chicken Burger
RegisterNetEvent('qb-hornysburgers:client:makeChickenBurger', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken', 'hb-bun', 'hb-lettuce'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenBurger")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-burger"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- DBL Chicken Burger
RegisterNetEvent('qb-hornysburgers:client:makeDBLChickenBurger', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken', 'hb-bun', 'hb-lettuce', 'hb-tomato'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeDBLChickenBurger")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblchicken-burger"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- DBL Horn Burger
RegisterNetEvent('qb-hornysburgers:client:makeDBLHornBurger', function()
	local ingredients = QBCore.Functions.HasItem({'hb-patty-raw', 'hb-bun', 'hb-lettuce', 'hb-tomato', 'hb-cheddar'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeDBLHornBurger")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-patty-raw"], "remove", 4)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 4)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 4)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 4)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 4)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblhorn-burger"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Horn Burger
RegisterNetEvent('qb-hornysburgers:client:makeHornBurger', function()
	local ingredients = QBCore.Functions.HasItem({'hb-patty-raw', 'hb-bun', 'hb-lettuce', 'hb-tomato', 'hb-cheddar'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornBurger")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-patty-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Horn Burger Bacon
RegisterNetEvent('qb-hornysburgers:client:makeHornBurgerBacon', function()
	local ingredients = QBCore.Functions.HasItem({'hb-patty-raw', 'hb-bun', 'hb-lettuce', 'hb-tomato', 'hb-cheddar', 'hb-bacon'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornBurgerBacon")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-patty-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bacon"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger-bacon"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Pickle Horn Burger
RegisterNetEvent('qb-hornysburgers:client:makeHornBurgerPickle', function()
	local ingredients = QBCore.Functions.HasItem({'hb-bun', 'hb-cheddar'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornBurgerPickle")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger-pickle"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Horn Sandwich
RegisterNetEvent('qb-hornysburgers:client:makeHornSandwich', function()
	local ingredients = QBCore.Functions.HasItem({'hb-bread', 'hb-cheddar', 'hb-lettuce', 'hb-tomato'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornSandwich")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bread"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cheddar"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-horn-sandwich"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Category
-- Chicken Fillets
RegisterNetEvent('qb-hornysburgers:client:makeChickenFillets', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken-strips-raw'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenFillets")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-strips-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-fillet"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Hornstars
RegisterNetEvent('qb-hornysburgers:client:makeHornstars', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken-strips-raw'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornstars")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-strips-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "add", 4)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Salad
RegisterNetEvent('qb-hornysburgers:client:makeChickenSalad', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken-strips-raw', 'hb-lettuce', 'hb-tomato'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenSalad")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-strips-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-salad"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Sandwich
RegisterNetEvent('qb-hornysburgers:client:makeChickenSandwich', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken-strips-raw', 'hb-lettuce', 'hb-tomato', 'hb-bun'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenSandwich")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-strips-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-lettuce"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-tomato"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-bun"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-sandwich"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Hunks O Hen
RegisterNetEvent('qb-hornysburgers:client:makeHunksHen', function()
	local ingredients = QBCore.Functions.HasItem({'hb-chicken-strips-raw', 'hb-potatoes'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHunksHen")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-strips-raw"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-potatoes"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hunks-o-hen"], "add", 2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('qb-hornysburgers:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Drinks
-- Hercules
RegisterNetEvent('qb-hornysburgers:client:makeHercules', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHercules")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hercules"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- junk
RegisterNetEvent('qb-hornysburgers:client:makeJunkEnergy', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeJunkEnergy")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-Pepsi"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Orang O Tang
RegisterNetEvent('qb-hornysburgers:client:makeOrangTang', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeOrangTang")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-orangotang"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Pepsi
RegisterNetEvent('qb-hornysburgers:client:makePepsi', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.01)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makePepsi")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Raine
RegisterNetEvent('qb-hornysburgers:client:makeRaineWater', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeRaineWater")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-raine"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Sprunk
RegisterNetEvent('qb-hornysburgers:client:makeSprunk', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water", "hb-sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeSprunk")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-sprunk"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Water
RegisterNetEvent('qb-hornysburgers:client:makeWaterBottle', function()
	local ingredients = QBCore.Functions.HasItem({"hb-carbonated-water"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 2000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeWaterBottle")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["water_bottle"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Ice Cream Category
-- Cherry Float
RegisterNetEvent('qb-hornysburgers:client:makeCherryFloat', function()
	local ingredients = QBCore.Functions.HasItem({"hb-icecream-mix", "hb-cherrys"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 3000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeCherryFloat")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-mix"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cherrys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cherry-float"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Cherry Popper
RegisterNetEvent('qb-hornysburgers:client:makeCherryPopper', function()
	local ingredients = QBCore.Functions.HasItem({"hb-icecream-mix", "hb-cherrys"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 3000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeCherryPopper")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-mix"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cherrys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-cherrypopper"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Ice Cream Cake
RegisterNetEvent('qb-hornysburgers:client:makeIcecreamCake', function()
	local ingredients = QBCore.Functions.HasItem({"hb-icecream-mix"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 3000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeIcecreamCake")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-mix"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-cake"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Ice Cream Cone
RegisterNetEvent('qb-hornysburgers:client:makeIcecreamCone', function()
	local ingredients = QBCore.Functions.HasItem({"hb-icecream-mix"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 3000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeIcecreamCone")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-mix"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-cone"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Ice Cream Nuggets
RegisterNetEvent('qb-hornysburgers:client:makeIcecreamNuggets', function()
	local ingredients = QBCore.Functions.HasItem({"hb-icecream-mix"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 3500, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeIcecreamNuggets")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-mix"], "remove", 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-icecream-nuggets"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Package Meal Section
-- Chicken Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makeChickenBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-chicken-burger", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-burger"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- DBLChicken Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makeDBLChickenBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-dblchicken-burger", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeDBLChickenBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblchicken-burger"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblchicken-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- DBLHorn Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makeDBLHornBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-dblhorn-burger", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeDBLHornBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblhorn-burger"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-dblhorn-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makeHornBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-hornburger", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-horn-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Bacon Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makeBaconHornBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-hornburger-bacon", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeBaconHornBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger-bacon"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-baconhorn-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Pickle Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:client:makePickleHornBurgerMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-hornburger-pickle", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makePickleHornBurgerMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-hornburger-pickle"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-picklehorn-burger-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Horn Sandwich Meal
RegisterNetEvent('qb-hornysburgers:client:makeHornSandwichMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-horn-sandwich", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeHornSandwichMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-horn-sandwich"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-horn-sandwich-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Sandwich Meal
RegisterNetEvent('qb-hornysburgers:client:makeChickenSandwichMeal', function()
	local ingredients = QBCore.Functions.HasItem({"hb-chicken-sandwich", "hb-chicken-horn-stars", "hb-pepsi"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "mechanic4", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "No problem..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-hornysburgers:server:makeChickenSandwichMeal")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-sandwich"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-horn-stars"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-pepsi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hb-chicken-sandwich-meal"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('qb-hornysburgers:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- MENUS --     

RegisterNetEvent('qb-hornysburgers:closemenu', function()
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent("qb-menu:closeMenu")
end)

RegisterNetEvent('qb-hornysburgerst:client:cookStation', function()
    SetEntityCoords(PlayerPedId(), 1252.81, -355.4, 69.08)
    SetEntityHeading(PlayerPedId(), 254.42)
    exports['qb-menu']:openMenu({
        {
            header = "Hornys Cooking Station",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Bacon Rolls",
            txt = "Requires:</p>2x Bacon",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeBaconRoll",
            }
        },
        {
            header = "Breakfast Plate",
            txt = "Requires:</p>2x Lettuce | 2x Eggs | 2x Cheddar | 2x Bread | 2x Potatoes ",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeBreakfast",
            }
        },
        {
            header = "Eggs N Bacon with Toast",
            txt = "Requires:</p>2x Eggs | 2x Bacon | 2x Bread",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeEggsBacon",
            }
        },
        {
            header = "Eggs Benedict",
            txt = "Requires:</p>2x Eggs | 2x Bread | 2x Cheddar",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeEggsBenedict",
            }
        },
        {
            header = "French Toast",
            txt = "Requires:</p>2x Eggs | 2x Bread",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeFrenchToast",
            }
        },
        {
            header = "French Toast Bacon",
            txt = "Requires:</p>2x Eggs | 2x Bread | 2x Bacon",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeFrenchToastBacon",
            }
        },
        {
            header = "Hashbrowns",
            txt = "Requires:</p>2x Potatoes",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHashbrowns",
            }
        },
        {
            header = "Sausages",
            txt = "Requires:</p>2x Sausage",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeSausages",
            }
        },
        {
            header = "Chicken Burger",
            txt = "Requires:</p>2x Chicken | 2x Bun | 2x Lettuce",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeChickenBurger",
            }
        },
        {
            header = "DBL Chicken Burger",
            txt = "Requires:</p>2x Chicken | 2x Bun | 2x Lettuce | 2x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeDBLChickenBurger",
            }
        },
        {
            header = "DBL Horn Burger",
            txt = "Requires:</p>4x Raw Patty | 4x Bun | 4x Lettuce | 4x Tomato | 4x Cheddar",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeDBLHornBurger",
            }
        },
        {
            header = "Horn Burger",
            txt = "Requires:</p>2x Raw Patty | 2x Bun | 2x Lettuce | 2x Tomato | 2x Cheddar",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHornBurger",
            }
        },
        {
            header = "Horn Burger Bacon",
            txt = "Requires:</p>2x Raw Patty | 2x Bun | 2x Lettuce | 2x Tomato | 2x Cheddar | 2x Bacon",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHornBurgerBacon",
            }
        },
        {
            header = "Horn Burger Pickle",
            txt = "Requires:</p>2x Bun | 2x Cheddar",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHornBurgerPickle",
            }
        },
        {
            header = "Horn Sandwich",
            txt = "Requires:</p>2x Bread | 2x Cheddar | 2x Lettuce | 2x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHornSandwich",
            }
        },
        {
            header = "Chicken Fillets",
            txt = "Requires:</p>2x Raw Chicken Strips",
            icon = "fa-solid fa-burger",
            params = {
                event = "qqb-hornysburgers:client:makeChickenFillets",
            }
        },
        {
            header = "Chicken Hornstars",
            txt = "Requires:</p>2x Raw Chicken Strips",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHornstars",
            }
        },
        {
            header = "Chicken Salad",
            txt = "Requires:</p>2x Raw Chicken Strips | 2x Lettuce | 2x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeChickenSalad",
            }
        },
        {
            header = "Chicken Sandwich",
            txt = "Requires:</p>2x Raw Chicken Strips | 2x Lettuce | 2x Tomato | 2x Bun",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeChickenSandwich",
            }
        },
        {
            header = "Hunks O Hen",
            txt = "Requires:</p>2x Raw Chicken Strips | 2x Potatoes",
            icon = "fa-solid fa-burger",
            params = {
                event = "qb-hornysburgers:client:makeHunksHen",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-hornysburgers:closemenu"
            }
        },
    })
end)

-- NetEvent Drink Station
RegisterNetEvent('qb-hornysburgers:client:drinkStation', function()
    SetEntityCoords(PlayerPedId(), 1246.79, -357.02, 69.08)
    SetEntityHeading(PlayerPedId(), 74.78)
    exports['qb-menu']:openMenu({
        {
            header = "Hornys Drink Station",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Hercules",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeHercules",
            }
        },
        {
            header = "Junk Energy",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeJunkEnergy",
            }
        },
        {
            header = "Orang O Tango",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeOrangTang",
            }
        },
        {
            header = "Pepsi",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makePepsi",
            }
        },
        {
            header = "Raine",
            txt = "Requires:</p>1x Carbonated Water",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeRaineWater",
            }
        },
        {
            header = "Sprunk",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeSprunk",
            }
        },
        {
            header = "Water",
            txt = "Requires:</p>1x Carbonated Water",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeWaterBottle",
            }
        },
        {
            header = "Cherry Float",
            txt = "Requires:</p>1x Icecream Mix | 1x Cherrys",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeCherryFloat",
            }
        },
        {
            header = "Cherry Popper",
            txt = "Requires:</p>1x Icecream Mix | 1x Cherrys",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeCherryPopper",
            }
        },
        {
            header = "Ice cream Cake",
            txt = "Requires:</p>1x Icecream Mix",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeIcecreamCake",
            }
        },
        {
            header = "Ice cream Cone",
            txt = "Requires:</p>1x Icecream Mix",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeIcecreamCone",
            }
        },
        {
            header = "Ice cream Nuggets",
            txt = "Requires:</p>2x Icecream Mix",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeIcecreamNuggets",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-hornysburgers:closemenu"
            }
        },
    })
end)

RegisterNetEvent('qb-hornysburgers:client:packageStation', function()
    SetEntityCoords(PlayerPedId(), 1249.85, -355.04, 69.08)
    SetEntityHeading(PlayerPedId(), 165.16)
    exports['qb-menu']:openMenu({
        {
            header = "Hornys Package Station",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Chicken Burger Meal",
            txt = "Requires:</p>1x Chicken Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeChickenBurgerMeal",
            }
        },
        {
            header = "DBL Chicken Burger Meal",
            txt = "Requires:</p>1x DBL Chicken Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeDBLChickenBurgerMeal",
            }
        },
        {
            header = "DBL Horn Burger Meal",
            txt = "Requires:</p>1x DBL Horn Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeDBLHornBurgerMeal",
            }
        },
        {
            header = "Horn Burger Meal",
            txt = "Requires:</p>1x Horn Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeHornBurgerMeal",
            }
        },
        {
            header = "Bacon Horn Burger Meal",
            txt = "Requires:</p>1x Bacon Horn Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeBaconHornBurgerMeal",
            }
        },
        {
            header = "Pickle Horn Burger Meal",
            txt = "Requires:</p>1x Pickle Horn Burger | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makePickleHornBurgerMeal",
            }
        },
        {
            header = "Horn Sandwich Meal",
            txt = "Requires:</p>1x Horn Sandwich | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeHornSandwichMeal",
            }
        },
        {
            header = "Chicken Sandwich Meal",
            txt = "Requires:</p>1x Chicken Sandwich | 1x Hornstars | 1x Pepsi",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "qb-hornysburgers:client:makeChickenSandwichMeal",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-hornysburgers:closemenu"
            }
        },
    })
end)
