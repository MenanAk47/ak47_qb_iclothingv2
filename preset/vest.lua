Config.Preset.vest = {
    animation = {
        on = {dir = 'clothingtie', anim = 'try_tie_negative_a', delay = 1200},
        off = {dir = 'clothingtie', anim = 'try_tie_negative_a', delay = 1200},
    },
    uni = { -- add item inside this
        black_vest = {
            male = {
                main = {
                    ['vest'] = {item = 4, texture = 1}, -- check qb-clothing/client/main.lua
                },
            },
            -- female = {
            --     main = {
            --         ['vest'] = {item = 4, texture = 0}, -- check qb-clothing/client/main.lua
            --     },
            -- },
        },
    },
    non_uni = {
        male = {
            ['vest'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['vest'] = {item = 0, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
