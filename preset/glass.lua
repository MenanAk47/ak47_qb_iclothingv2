Config.Preset.glass = {
    animation = {
        on = {dir = 'clothingspecs', anim = 'take_off', delay = 1400},
        off = {dir = 'clothingspecs', anim = 'take_off', delay = 1400},
    },
    uni = { -- add item inside this
        black_glass = {
            male = {
                main = {
                    ['glass'] = {item = 4, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['glass'] = {item = 4, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['glass'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['glass'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
