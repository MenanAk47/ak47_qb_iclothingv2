Config.Preset.torso = {
    animation = {
        on = {dir = 'clothingtie', anim = 'try_tie_negative_a', delay = 1500},
        off = {dir = 'clothingtie', anim = 'try_tie_negative_a', delay = 1500},
    },
    uni = { -- add item inside this
        threequarter_raglan_sleeve = {
            male = {
                main = {
                    ['torso2'] = {item = 8, texture = 0} -- check qb-clothing/client/main.lua
                },
                extras = {
                    ['t-shirt'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
                    ['arms'] = {item = 8, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
    },
    non_uni = {
        male = {
            ['torso2'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
            ['t-shirt'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
            ['arms'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
        },
        female = {
            ['torso2'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
            ['t-shirt'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
            ['arms'] = {item = 15, texture = 0}, -- check qb-clothing/client/main.lua
        },
    },
}
