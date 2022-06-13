Config.Preset.pant = {
    animation = {
        on = {dir = 're@construction', anim = 'out_of_breath', delay = 1300},
        off = {dir = 're@construction', anim = 'out_of_breath', delay = 1300},
    },
    uni = { -- add item inside this
        black_jeans = {
            male = {
                main = {
                    ['pants'] = {item = 4, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['pants'] = {item = 4, texture = 0}, -- check qb-clothing/client/main.lua
                },
            },
        },
    },
    non_uni = {
        male = {
            ['pants'] = {item = 14, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['pants'] = {item = 14, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}

   