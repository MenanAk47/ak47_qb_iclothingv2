Config.Preset.hat = {
    animation = {
        on = {dir = 'mp_masks@standard_car@ds@', anim = 'put_on_mask', delay = 600},
        off = {dir = 'missheist_agency2ahelmet', anim = 'take_off_helmet_stand', delay = 1200},
    },
    uni = { -- add item inside this
        black_hat = {
            male = {
                main = {
                    ['hat'] = {item = 2, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['hat'] = {item = 2, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['hat'] = {item = -1, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['hat'] = {item = -1, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
