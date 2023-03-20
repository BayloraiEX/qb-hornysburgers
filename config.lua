Config = {}

Config.GaragePed = "u_m_m_bikehire_01"

Config.PedLocation = vector4(1247.27, -350.5, 68.09, 347.83)

Config.VehicleSpawn = vector4(1250.03, -339.83, 69.08, 77.64)

Config.Vehicle = 'baller'

HungerFill = {
    -- Breakfast
    ["hb-baconrolls"] = math.random(45, 65),
    ["hb-breakfast"] = math.random(45, 65),
    ["hb-eggs-benedict"] = math.random(45, 65),
    ["hb-eggsbacon"] = math.random(45, 65),
    ["hb-frenchtoast"] = math.random(45, 65),
    ["hb-french-toast-bacon"] = math.random(45, 65),
    ["hb-hashbrowns"] = math.random(45, 65),
    ["hb-sausages"] = math.random(45, 65),
    -- Burgers
    ["hb-chicken-burger"] = math.random(45, 65),
    ["hb-dblchicken-burger"] = math.random(45, 65),
    ["hb-dblhorn-burger"] = math.random(45, 65),
    ["hb-horn-sandwich"] = math.random(45, 65),
    ["hb-hornburger-bacon"] = math.random(45, 65),
    ["hb-hornburger-pickle"] = math.random(45, 65),
    ["hb-hornburger"] = math.random(45, 65),
    -- Chicken
    ["hb-chicken-fillets"] = math.random(45, 65),
    ["hb-chicken-hornstars"] = math.random(45, 65),
    ["hb-chicken-salad"] = math.random(45, 65),
    ["hb-chicken-sandwich"] = math.random(45, 65),
    ["hb-hunks-o-hen"] = math.random(45, 65),
    -- Ice cream
    ["hb-cherry-float"] = math.random(15, 30),
    ["hb-cherrypopper"] = math.random(15, 30),
    ["hb-icecream-cake"] = math.random(25, 50),
    ["hb-icecream-cone"] = math.random(5, 10),
    ["hb-icecream-nuggets"] = math.random(30, 60),
}

ThirstFill = {
    -- Drinks
    ["hb-hercules"] = math.random(45, 65),
    ["hb-junk"] = math.random(45, 65),
    ["hb-orangotang"] = math.random(45, 65),
    ["hb-pepsi"] = math.random(45, 65),
    ["hb-raine"] = math.random(45, 65),
    ["hb-sprunk"] = math.random(45, 65),
    ["hb-water-bottle"] = math.random(45, 65),
    -- Ice cream
    ["hb-cherry-float"] = math.random(20, 40),
    ["hb-cherrypopper"] = math.random(15, 30),
    ["hb-icecream-cake"] = math.random(10, 20),
    ["hb-icecream-cone"] = math.random(15, 30),
    ["hb-icecream-nuggets"] = math.random(10, 20),
}

Config.Zones = {
    [1] = { coords = vector3(1252.23, -351.43, 69.08), radius = 1.35, icon = "fa-solid fa-box-open", event = "qb-hornysburgers:client:ingredientStore", label = "Ingredients", job = "hornysburger" }, -- Ingredient Store
    [2] = { coords = vector3(16.2, -1597.67, 29.38), radius = 0.75, icon = "fa-solid fa-briefcase", event = "qb-bossmenu:client:OpenMenu", label = "Manage Business", job = {['hornysburger'] = 4} }, -- Boss menu
    [3] = { coords = vector3(1249.13, -358.51, 69.08), radius = 0.8, icon = "far fa-clipboard", event = "qb-hornysburgers:client:frontTray1", label = "Tray 1", }, -- Tray #1
    [4] = { coords = vector3(1246.73, -357.07, 69.08), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "qb-hornysburgers:client:drinkStation", label = "Make Drinks", job = "hornysburger" }, -- Drink Station
    [5] = { coords = vector3(1252.96, -355.17, 69.08), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "qb-hornysburgers:client:cookStation", label = "Cook Food", job = "hornysburger" }, -- Cook Zone
    [6] = { coords = vector3(1250.0, -355.12, 69.08), radius = 0.9, icon = "fa-solid fa-square-up-right", event = "qb-hornysburgers:client:jobFridge1", label = "Fridge", job = "honysburger" }, -- Fridge
    [7] = { coords = vector3(1243.51, -350.27, 69.67), radius = 0.6, icon = "fa-solid fa-clock", event = "qb-hornysburgers:clientToggleDuty", label = "Clock In/Out", job = "hornysburger" }, -- On/Off Duty
    [8] = { coords = vector3(1248.27, -358.23, 69.08), radius = 0.5, icon = "fa-brands fa-cc-visa", event = "qb-hornysburgers:bill", label = "Bill Customer", job = "hornysburger" }, -- Cash Register #1
}

Config.Items = {
label = "Shop",
    slots = 9,
    items = {
        [1] = {
            name = "hb-bacon",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "hb-bread",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "hb-bun",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "hb-carbonated-water",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "hb-cheddar",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },       
		[6] = {
            name = "hb-cherrys",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
		[7] = {
            name = "hb-chicken-strips-raw",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
		[8] = {
            name = "hb-chicken",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
		[9] = {
            name = "hb-eggs",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "hb-gratedcheese",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "hb-hot-sauce",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "hb-icecream-mix",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "hb-lettuce",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "hb-patty-raw",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "hb-pickle",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "hb-potatoes",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "hb-sausage",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "hb-sugar-cubes",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "hb-tomato",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "hb-wraps",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 20,
        },
    }
}