local QBCore = exports['qb-core']:GetCoreObject()

-- Breakfast
-- Create Bacon Rolls
RegisterNetEvent('qb-hornysburgers:server:makeBaconRoll', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-bacon", 2)
    Player.Functions.AddItem("hb-baconroll", 2)
end)

-- Create Breakfast Plate
RegisterNetEvent('qb-hornysburgers:server:makeBreakfast', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-eggs", 2)
    Player.Functions.RemoveItem("hb-cheddar", 2)
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.RemoveItem("hb-potatoes", 2)
    Player.Functions.AddItem("hb-breakfast", 2)
end)

-- Create Eggs N Bacon With Toast
RegisterNetEvent('qb-hornysburgers:server:makeEggsBacon', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-eggs", 2)
    Player.Functions.RemoveItem("hb-bacon", 2)
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.AddItem("hb-eggsbacon", 2)
end)

-- Create Eggs Benedict
RegisterNetEvent('qb-hornysburgers:server:makeEggsBenedict', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-eggs", 2)
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.RemoveItem("hb-cheddar", 2)
    Player.Functions.AddItem("hb-eggs-benedict", 2)
end)

-- Create French Toast
RegisterNetEvent('qb-hornysburgers:server:makeFrenchToast', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-eggs", 2)
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.AddItem("hb-frenchtoast", 2)
end)

-- Create French Toast With Bacon
RegisterNetEvent('qb-hornysburgers:server:makeFrenchToastBacon', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-eggs", 2)
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.RemoveItem("hb-bacon", 2)
    Player.Functions.AddItem("hb-french-toast-bacon", 2)
end)

-- Create Hashbrowns
RegisterNetEvent('qb-hornysburgers:server:makeHashbrowns', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-potatoes", 2)
    Player.Functions.AddItem("hb-hashbrowns", 2)
end)

-- Create Sausages
RegisterNetEvent('qb-hornysburgers:server:makeSausages', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-sausage", 2)
    Player.Functions.AddItem("hb-sausages", 2)
end)

-- Burgers
-- Create Chicken Burger
RegisterNetEvent('qb-hornysburgers:server:makeChickenBurger', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken", 2)
    Player.Functions.RemoveItem("hb-bun", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.AddItem("hb-chicken-burger", 2)
end)

-- Create DBL Chicken Burger
RegisterNetEvent('qb-hornysburgers:server:makeDBLChickenBurger', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken", 2)
    Player.Functions.RemoveItem("hb-bun", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-tomato", 2)
    Player.Functions.AddItem("hb-dblchicken-burger", 2)
end)

-- Create DBL Horn Burger
RegisterNetEvent('qb-hornysburgers:server:makeDBLHornBurger', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-patty-raw", 4)
    Player.Functions.RemoveItem("hb-bun", 4)
    Player.Functions.RemoveItem("hb-lettuce", 4)
    Player.Functions.RemoveItem("hb-tomato", 4)
    Player.Functions.RemoveItem("hb-cheddar", 4)
    Player.Functions.AddItem("hb-dblhorn-burger", 2)
end)

-- Create Horn Burger
RegisterNetEvent('qb-hornysburgers:server:makeHornBurger', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-patty-raw", 4)
    Player.Functions.RemoveItem("hb-bun", 4)
    Player.Functions.RemoveItem("hb-lettuce", 4)
    Player.Functions.RemoveItem("hb-tomato", 4)
    Player.Functions.RemoveItem("hb-cheddar", 4)
    Player.Functions.AddItem("hb-hornburger", 2)
end)

-- Create Horn Burger Bacon
RegisterNetEvent('qb-hornysburgers:server:makeHornBurgerBacon', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-patty-raw", 2)
    Player.Functions.RemoveItem("hb-bun", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-tomato", 2)
    Player.Functions.RemoveItem("hb-cheddar", 2)
    Player.Functions.RemoveItem("hb-bacon", 2)
    Player.Functions.AddItem("hb-hornburger-bacon", 2)
end)

-- Create Horn Burger Pickles
RegisterNetEvent('qb-hornysburgers:server:makeHornBurgerPickle', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-cheddar", 2)
    Player.Functions.RemoveItem("hb-bun", 2)
    Player.Functions.AddItem("hb-hornburger-pickle", 2)
end)

-- Create Horn Sandwich
RegisterNetEvent('qb-hornysburgers:server:makeHornSandwich', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-bread", 2)
    Player.Functions.RemoveItem("hb-cheddar", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-tomato", 2)
    Player.Functions.AddItem("hb-horn-sandwich", 2)
end)

-- Chicken
-- Create Chicken Fillets
RegisterNetEvent('qb-hornysburgers:server:makeChickenFillets', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-strips-raw", 2)
    Player.Functions.AddItem("hb-chicken-fillet", 2)
end)

-- Create Chicken Hornstars
RegisterNetEvent('qb-hornysburgers:server:makeHornstars', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-strips-raw", 2)
    Player.Functions.AddItem("hb-chicken-horn-stars", 4)
end)

-- Create Chicken Salad
RegisterNetEvent('qb-hornysburgers:server:makeChickenSalad', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-strips-raw", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-tomato", 2)
    Player.Functions.AddItem("hb-chicken-salad", 2)
end)

-- Create Chicken Sandwich
RegisterNetEvent('qb-hornysburgers:server:makeChickenSandwich', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-strips-raw", 2)
    Player.Functions.RemoveItem("hb-lettuce", 2)
    Player.Functions.RemoveItem("hb-tomato", 2)
    Player.Functions.RemoveItem("hb-bun", 2)
    Player.Functions.AddItem("hb-chicken-sandwich", 2)
end)

-- Create Hunks O Hen
RegisterNetEvent('qb-hornysburgers:server:makeHunksHen', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-strips-raw", 2)
    Player.Functions.RemoveItem("hb-potatoes", 2)
    Player.Functions.AddItem("hb-hunks-o-hen", 2)
end)

-- Drinks
-- Create Hercules
RegisterNetEvent('qb-hornysburgers:server:makeHercules', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.RemoveItem("hb-sugar-cubes", 1)
    Player.Functions.AddItem("hb-hercules", 1)
end)

-- Create Junk Energy
RegisterNetEvent('qb-hornysburgers:server:makeJunkEnergy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.RemoveItem("hb-sugar-cubes", 1)
    Player.Functions.AddItem("hb-junk", 1)
end)

-- Create Orang O Tang
RegisterNetEvent('qb-hornysburgers:server:makeOrangTang', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.RemoveItem("hb-sugar-cubes", 1)
    Player.Functions.AddItem("hb-orangotang", 1)
end)

-- Create Pepsi
RegisterNetEvent('qb-hornysburgers:server:makePepsi', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.RemoveItem("hb-sugar-cubes", 1)
    Player.Functions.AddItem("hb-pepsi", 1)
end)

-- Create Raine
RegisterNetEvent('qb-hornysburgers:server:makeRaineWater', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.AddItem("hb-raine", 1)
end)

-- Create Sprunk
RegisterNetEvent('qb-hornysburgers:server:makeSprunk', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.RemoveItem("hb-sugar-cubes", 1)
    Player.Functions.AddItem("hb-sprunk", 1)
end)

-- Create Water
RegisterNetEvent('qb-hornysburgers:server:makeWaterBottle', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-carbonated-water", 1)
    Player.Functions.AddItem("water_bottle", 1)
end)

-- Ice Cream
-- Create Cherry Float
RegisterNetEvent('qb-hornysburgers:server:makeCherryFloat', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-icecream-mix", 1)
    Player.Functions.RemoveItem("hb-cherrys", 1)
    Player.Functions.AddItem("hb-cherry-float", 1)
end)

-- Create Cherry Popper
RegisterNetEvent('qb-hornysburgers:server:makeCherryPopper', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-icecream-mix", 1)
    Player.Functions.RemoveItem("hb-cherrys", 1)
    Player.Functions.AddItem("hb-cherrypopper", 1)
end)

-- Create Ice cream Cake
RegisterNetEvent('qb-hornysburgers:server:makeIcecreamCake', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-icecream-mix", 1)
    Player.Functions.AddItem("hb-icecream-cake", 1)
end)

-- Create Ice cream Cone
RegisterNetEvent('qb-hornysburgers:server:makeIcecreamCone', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-icecream-mix", 1)
    Player.Functions.AddItem("hb-icecream-cone", 1)
end)

-- Create Ice cream Nuggets
RegisterNetEvent('qb-hornysburgers:server:makeIcecreamNuggets', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-icecream-mix", 2)
    Player.Functions.AddItem("hb-icecream-nuggets", 1)
end)

-- Pacage Item Section
-- Chicken Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makeChickenBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-burger", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-chicken-burger-meal", 1)
end)

-- DBLChicken Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makeDBLChickenBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-dblchicken-burger", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-dblchicken-burger-meal", 1)
end)

-- DBLHorn Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makeDBLHornBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-dblhorn-burger", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-dblhorn-burger-meal", 1)
end)

-- Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makeHornBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-hornburger", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-horn-burger-meal", 1)
end)

-- Bacon Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makeBaconHornBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-hornburger-bacon", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-baconhorn-burger-meal", 1)
end)

-- Pickle Horn Burger Meal
RegisterNetEvent('qb-hornysburgers:server:makePickleHornBurgerMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-hornburger-pickle", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-picklehorn-burger-meal", 1)
end)

-- Horn Sandwich Meal
RegisterNetEvent('qb-hornysburgers:server:makeHornSandwichMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-horn-sandwich", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-horn-sandwich-meal", 1)
end)

-- Chicken Sandwich Meal
RegisterNetEvent('qb-hornysburgers:server:makeChickenSandwichMeal', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("hb-chicken-sandwich", 1)
    Player.Functions.RemoveItem("hb-chicken-horn-stars", 1)
    Player.Functions.RemoveItem("hb-pepsi", 1)
    Player.Functions.AddItem("hb-chicken-sandwich-meal", 1)
end)

-- Created Useable item Functions
-- Chicken Burger Meal
QBCore.Functions.CreateUseableItem("hb-chicken-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-chicken-burger", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- DBLChicken Burger Meal
QBCore.Functions.CreateUseableItem("hb-dblchicken-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-dblchicken-burger", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- DBLHorn Burger Meal
QBCore.Functions.CreateUseableItem("hb-dblhorn-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-dblhorn-burger", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Horn Burger Meal
QBCore.Functions.CreateUseableItem("hb-horn-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-hornburger", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Bacon Horn Burger Meal
QBCore.Functions.CreateUseableItem("hb-baconhorn-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-hornburger-bacon", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Pickle Horn Burger Meal
QBCore.Functions.CreateUseableItem("hb-picklehorn-burger-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-hornburger-pickle", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Horn Sandwich Meal
QBCore.Functions.CreateUseableItem("hb-horn-sandwich-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-horn-sandwich", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Chicken Sandwich Meal
QBCore.Functions.CreateUseableItem("hb-chicken-sandwich-meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        Player.Functions.AddItem("hb-chicken-sandwich", 1)
        Player.Functions.AddItem("hb-chicken-horn-stars", 1)
        Player.Functions.AddItem("hb-pepsi", 1)
    end
end)

-- Breakfast
-- Bacon Rolls
QBCore.Functions.CreateUseableItem("hb-baconroll", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Breakfast Plate
QBCore.Functions.CreateUseableItem("hb-breakfast", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Eggs N Bacon With Toast
QBCore.Functions.CreateUseableItem("hb-eggsbacon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Eggs Benedict
QBCore.Functions.CreateUseableItem("hb-eggs-benedict", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- French Toast
QBCore.Functions.CreateUseableItem("hb-frenchtoast", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- French Toast With Bacon
QBCore.Functions.CreateUseableItem("hb-french-toast-bacon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Hashbrowns
QBCore.Functions.CreateUseableItem("hb-hashbrowns", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Sausages
QBCore.Functions.CreateUseableItem("hb-sausages", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Burger
-- Chicken Burger
QBCore.Functions.CreateUseableItem("hb-chicken-burger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- DBL Chicken Burger
QBCore.Functions.CreateUseableItem("hb-dblchicken-burger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- DBL Horn Burger
QBCore.Functions.CreateUseableItem("hb-dblhorn-burger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Horn Burger
QBCore.Functions.CreateUseableItem("hb-hornburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Horn Burger Bacon
QBCore.Functions.CreateUseableItem("hb-hornburger-bacon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Horn Burger Pickle
QBCore.Functions.CreateUseableItem("hb-hornburger-pickle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Horn Sandwich
QBCore.Functions.CreateUseableItem("hb-horn-sandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Chicken
-- Chicken Fillets
QBCore.Functions.CreateUseableItem("hb-chicken-fillet", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Chicken Hornstars
QBCore.Functions.CreateUseableItem("hb-chicken-horn-stars", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Chicken Salad
QBCore.Functions.CreateUseableItem("hb-chicken-salad", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Chicken Sandwich
QBCore.Functions.CreateUseableItem("hb-chicken-sandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Hunks O Hen
QBCore.Functions.CreateUseableItem("hb-hunks-o-hen", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Ice creams
-- Cherry Float
QBCore.Functions.CreateUseableItem("hb-cherry-float", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Cherry Popper
QBCore.Functions.CreateUseableItem("hb-cherrypopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Ice cream Cake
QBCore.Functions.CreateUseableItem("hb-icecream-cake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Ice Cream Cone
QBCore.Functions.CreateUseableItem("hb-icecream-cone", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Ice Cream Nuggets
QBCore.Functions.CreateUseableItem("hb-icecream-nuggets", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Eat", source, item.name)
    end
end)

-- Drinks
-- Hercules
QBCore.Functions.CreateUseableItem("hb-hercules", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Junk
QBCore.Functions.CreateUseableItem("hb-junk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- orangotang
QBCore.Functions.CreateUseableItem("hb-orangotang", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- pepsi
QBCore.Functions.CreateUseableItem("hb-pepsi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Raine Water
QBCore.Functions.CreateUseableItem("hb-raine", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- sprunk
QBCore.Functions.CreateUseableItem("hb-sprunk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Water
QBCore.Functions.CreateUseableItem("hb-water-bottle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Ice creams
-- Cherry Float
QBCore.Functions.CreateUseableItem("hb-cherry-float", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Cherry Popper
QBCore.Functions.CreateUseableItem("hb-cherrypopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Ice cream Cake
QBCore.Functions.CreateUseableItem("hb-icecream-cake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Ice Cream Cone
QBCore.Functions.CreateUseableItem("hb-icecream-cone", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Ice Cream Nuggets
QBCore.Functions.CreateUseableItem("hb-icecream-nuggets", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-hornysburgers:client:Drink", source, item.name)
    end
end)

-- Creating Event for billing Player
RegisterNetEvent("qb-hornysburgers:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'hornysburger' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                TriggerClientEvent('QBCore:Notify', source, 'You charged a customer.', 'success')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'You have been charged $'..amount..' for your order at Hornys Burger Shop.')
		        exports['qb-management']:AddMoney('hornysburger', amount)
                --exports['Renewed-Banking']:addAccountMoney('hornysburger', amount)
                else
                    TriggerClientEvent('QBCore:Notify', source, 'Must be a valid amount above 0.', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'You cannot bill yourself.', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'Player not online', 'error')
        end
    end
end)
