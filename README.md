https://media.discordapp.net/attachments/976934357518397472/980792943835218020/download.png
# qb-weedpicking 

Weed Picking script for QBCore Framework

Any problems contact me via discord Rapidz#2099

# Installation

**Add to qb-shops/config.lua**

*Add into Config.Products*
```
    ["weedsupplies"] = {
        [1] = {
            name = 'scissors',
            price = 150,
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'dryer',
            price = 500,
            amount = 1,
            info = {},
            type = 'item',
            slot = 2,
        },  
    },
```
*Add into Config.Locations*
```
    ["weedsupplies"] = {
        ["label"] = "Weed Picking Supplies",
        ["coords"] = vector4(-179.12, 3026.58, 20.31, 342.06),-- Changethis to change the loco of shop
        ["ped"] = 'a_m_y_smartcaspat_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["weedsupplies"],
        ["showblip"] = true,
        ["blipsprite"] = 567,--Change this to whatever you want --Default Blip
        ["blipcolor"] = 0 --Also Change --Default Color
    },
```

**Add to qb-core/shared.lua**

*Add into QBShared.Items*
```
    	["scissors"]						= {["name"] = "scissors",       		    		["label"] = "Weed Shears",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "wscissors.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Pick you some quality canabis with this"},
	["dryer"]						= {["name"] = "dryer",       		    		["label"] = "Dryer Rack",	 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "dryer.png", 				["unique"] = true, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Dry wet canabis with this!"},
    	["wetcanabis"]						= {["name"] = "wetcanabis",       		    		["label"] = "Wet Canabis",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "wetcanabis.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "You should dry this!"},
	["drycanabis"]						= {["name"] = "drycanabis",       		    		["label"] = "Dry Weed",	 				["weight"] = 3000, 		["type"] = "item", 		["image"] = "drycanabis.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sell it!!"},
```
 
 **Add Images into qb-inventory/html/images**
 
 
 **Download and install mlo needed**
 
 
 **Dependencies**
 
 *By Default you should have these*
 
 qb-core: https://github.com/qbcore-framework/qb-core
 
 qb-inventory: https://github.com/qbcore-framework/qb-inventory
 
 qb-target: https://github.com/qbcore-framework/qb-target
 
 Progressbar: https://github.com/qbcore-framework/progressbar
 
 PolyZone: https://github.com/qbcore-framework/PolyZone
 
 Hidden Weed Lab: https://forum.cfx.re/t/hidden-weed-lab-mlo-fivem/4760558
 
