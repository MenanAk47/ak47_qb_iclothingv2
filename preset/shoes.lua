Config.Preset.shoes = {
    animation = {
        on = {dir = 'random@domestic', anim = 'pickup_low', delay = 1200},
        off = {dir = 'random@domestic', anim = 'pickup_low', delay = 1200},
    },
    uni = {
        yellow_shoes = {
            male = {
                main = {
                    ['shoes'] = {item = 12, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['shoes'] = {item = 1, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['shoes'] = {item = 34, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['shoes'] = {item = 35, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
