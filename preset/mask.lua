Config.Preset.mask = {
    animation = {
        on = {dir = 'mp_masks@standard_car@ds@', anim = 'put_on_mask', delay = 800},
        off = {dir = 'mp_masks@standard_car@ds@', anim = 'put_on_mask', delay = 800},
    },
    uni = { -- add item inside this
        monkey_mask = {
            male = {
                main = {
                    ['mask'] = {item = 3, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['mask'] = {item = 3, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['mask'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['mask'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
