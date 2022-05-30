Config = {}

Config.PickingItems = {
    [1] = {
        name = "wetcanabis",
        threshold = 80,
        max = 1,
        remove = nil,
    },
}

Config.DryingItems = {
    [1] = {
        name = "drycanabis",
        threshold = 80,
        max = 3,
        remove = "wetcanabis",
    },
}

Config.Blips = {
    {
        blippoint = vector3(2224.27, 5577.09, 53.85),
        blipsprite = 140,
        blipscale = 0.65,
        blipcolour = 25,
        label = "Weed Field"
    },
    {
        blippoint = vector3(1158.69, -1652.5, 36.83),
        blipsprite = 457,
        blipscale = 0.65,
        blipcolour = 3,
        label = "Weed Drying"
    },
    {
        blippoint = vector3(-1076.9, -1677.3, 4.58),
        blipsprite = 280,
        blipscale = 0.65,
        blipcolour = 0,
        label = "Weed Buyer"
    },

}

Config.Picking = {
    {
        zones = { 
            vector2(2214.28, 5574.71),
            vector2(2214.69, 5580.0),
            vector2(2235.22, 5579.36),
            vector2(2234.75, 5573.2),
        },
        minz = 53.0,
        maxz = 55.0,
    },
}

Config.Drying = {
    {
        zones = {
           vector2(1143.328125, -1659.5051269532),
           vector2(1144.8161621094, -1662.59375),
           vector2(1143.3709716796, -1663.6717529296),
           vector2(1141.4146728516, -1661.088256836),
        },
        minz = 36.0,
        maxz = 38.0,
    },
}
