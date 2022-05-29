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
        blippoint = vector3(1061.71, -1978.43, 31.24),
        blipsprite = 651,
        blipscale = 0.65,
        blipcolour = 3,
        label = "Weed Drying"
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
            vector2(1114.97, -2008.14),
            vector2(1111.14, -2005.42),
            vector2(1107.87, -2010.28),
            vector2(1111.82, -2013.07),
        },
        minz = 28.0,
        maxz = 36.0,
    },
}