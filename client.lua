local block = false
AddEventHandler('Infram:BuyFood', function(data)
    Citizen.CreateThread(function()
            if not block then
            block = true
            exports.rprogress:Custom({
                Duration = 2000,
                canCancel = false,
                -- Label = "Handing over a package...",
                Label = "Kupujesz coś...",
                Animation = {
                    --scenario = "WORLD_HUMAN_COP_IDLES", -- https://pastebin.com/6mrYTdQv
                    animationDictionary = "mini@sprunk", -- https://alexguirre.github.io/animations-list/
                    animationName = "plyr_buy_drink_pt1",
                },
                DisableControls = {
                    Mouse = true,
                    Player = true,
                    Vehicle = true
                }
            })
            Citizen.Wait(2000)
            block = false
            TriggerServerEvent("Infram:BuySomething", data.itemek, data.cena)
        else
            -- nothing
        end
    end)
end)


exports.qtarget:AddTargetModel({-654402915,-1034034125}, {
	options = {
		{
			event = "Infram:BuyFood",
			icon = "fas fa-cookie-bite",
            itemek = "water",
			label = "Kup Wodę",
            cena = 10,
			num = 1
		},
		{
			event = "Infram:BuyFood",
			icon = "fas fa-cookie-bite",
            itemek = "baton",
			label = "Kup Batona",
            cena = 10,
			num = 2
		},
        {
			event = "Infram:BuyFood",
			icon = "fas fa-cookie-bite",
            itemek = "chips",
			label = "Kup Chipsy",
            cena = 10,
			num = 3
		},
        {
			event = "Infram:BuyFood",
			icon = "fas fa-cookie-bite",
            itemek = "chocolate",
			label = "Kup Czekoladę",
            cena = 10,
			num = 4
		},

	},
	distance = 2.5,
})

exports.qtarget:AddTargetModel({690372739}, {
    options = {
        {
            event = "Infram:BuyFood",
            icon = "fas fa-coffee",
            label = "Kup Kawę",
            cena = 10,
            itemek = "coffee",
			num = 1
        },
        {
            event = "Infram:BuyFood",
            icon = "fas fa-coffee",
            label = "Kup Latte",
            cena = 10,
            itemek = "latte",
			num = 2
        },
        {
            event = "Infram:BuyFood",
            icon = "fas fa-coffee",
            label = "Kup Cappuccino",
            cena = 10,
            itemek = "cappucciono",
			num = 3
        },
    },
    distance = 2.5
})

exports.qtarget:AddTargetModel({1114264700, 992069095}, {
    options = {
        {
            event = "Infram:BuyFood",
            icon = "fas fa-coffee",
            label = "Kup Sprunk'a",
            itemek = "sprunk",
            num = 1
        },
        {
            event = "Infram:BuyFood",
            icon = "fas fa-coffee",
            label = "Kup Cole",
            itemek = "cola",
            num = 2
        },
    },
    distance = 2.5
})