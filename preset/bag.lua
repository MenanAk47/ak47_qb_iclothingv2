Config.Preset.bag = {
    animation = {
        on = {dir = 'anim@heists@ornate_bank@grab_cash', anim = 'intro', delay = 1600},
        off = {dir = 'anim@heists@ornate_bank@grab_cash', anim = 'intro', delay = 1600},
    },
    uni = { -- add item inside this
        black_bag = {
            male = {
                main = {
                    ['bag'] = {item = 31, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['bag'] = {item = 31, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['bag'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['bag'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
