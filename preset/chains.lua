Config.Preset.chains = {
    animation = {
        on = {dir = 'clothingtie', anim = 'try_tie_positive_a', delay = 3400},
        off = {dir = 'clothingtie', anim = 'try_tie_positive_a', delay = 2800},
    },
    uni = { -- add item inside this
        chain_dogtag = {
            male = {
                main = {
                    ['accessory'] = {item = 141, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 141, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_is = {
            male = {
                main = {
                    ['accessory'] = {item = 137, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 106, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_ls = {
            male = {
                main = {
                    ['accessory'] = {item = 139, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 108, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_m = {
            male = {
                main = {
                    ['accessory'] = {item = 111, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 82, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_medal = {
            male = {
                main = {
                    ['accessory'] = {item = 145, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 114, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_richman = {
            male = {
                main = {
                    ['accessory'] = {item = 143, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 112, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        chain_triangle = {
            male = {
                main = {
                    ['accessory'] = {item = 123, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 104, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        necklace_dogtag = {
            male = {
                main = {
                    ['accessory'] = {item = 135, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 93, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
        necklace_family = {
            male = {
                main = {
                    ['accessory'] = {item = 129, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
            female = {
                main = {
                    ['accessory'] = {item = 101, texture = 0} -- check qb-clothing/client/main.lua
                },
            },
        },
    },
    non_uni = {
        male = {
            ['accessory'] = {item = 0, texture = 0} -- check qb-clothing/client/main.lua
        },
        female = {
            ['accessory'] = {item = 0, texture = 0} -- check qb-clothing/client/main.lua
        },
    },
}
