<h1 dir="auto">CLOTHING AS ITEM FOR GTA 5 FIVEM ROLEPLAY SERVER | QBCORE FRAMEWORK</h1>
<p>Required minimum <span style="color: #339966;">$10</span> of patreon membership. <a href="https://patreon.com/menanak47" target="_blank">Get your membership</a> (if you don't have already)</p>
<p>Video Showcase: <a href="https://youtu.be/-9QQQlKoqyE" target="_blank">YouTube</a></p>

## Necessary Modifications:
### Path: qb-clothing/client/main.lua
<details>
<summary>Replace</summary>
<details>
<summary>Original</summary>

```lua
RegisterNetEvent('qb-clothing:client:loadOutfit')
AddEventHandler('qb-clothing:client:loadOutfit', function(oData)
    local ped = PlayerPedId()

    local data = oData.outfitData

    if typeof(data) ~= "table" then data = json.decode(data) end

    for k in pairs(data) do
        skinData[k].item = data[k].item
        skinData[k].texture = data[k].texture

        -- To secure backwards compability for facemixing
        if data[k].shapeMix then
            skinData[k].shapeMix = data[k].shapeMix
        end

        if data[k].skinMix then
            skinData[k].skinMix = data[k].skinMix
        end
    end

    -- Pants
    if data["pants"] ~= nil then
        SetPedComponentVariation(ped, 4, data["pants"].item, data["pants"].texture, 0)
    end

    -- Arms
    if data["arms"] ~= nil then
        SetPedComponentVariation(ped, 3, data["arms"].item, data["arms"].texture, 0)
    end

    -- T-Shirt
    if data["t-shirt"] ~= nil then
        SetPedComponentVariation(ped, 8, data["t-shirt"].item, data["t-shirt"].texture, 0)
    end

    -- Vest
    if data["vest"] ~= nil then
        SetPedComponentVariation(ped, 9, data["vest"].item, data["vest"].texture, 0)
    end

    -- Torso 2
    if data["torso2"] ~= nil then
        SetPedComponentVariation(ped, 11, data["torso2"].item, data["torso2"].texture, 0)
    end

    -- Shoes
    if data["shoes"] ~= nil then
        SetPedComponentVariation(ped, 6, data["shoes"].item, data["shoes"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Badge
    if data["decals"] ~= nil then
        SetPedComponentVariation(ped, 10, data["decals"].item, data["decals"].texture, 0)
    end

    -- Accessory
    if data["accessory"] ~= nil then
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, data["accessory"].item, data["accessory"].texture, 0)
        end
    else
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, -1, 0, 2)
        end
    end

    -- Mask
    if data["mask"] ~= nil then
        SetPedComponentVariation(ped, 1, data["mask"].item, data["mask"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Hat
    if data["hat"] ~= nil then
        if data["hat"].item ~= -1 and data["hat"].item ~= 0 then
            SetPedPropIndex(ped, 0, data["hat"].item, data["hat"].texture, true)
        else
            ClearPedProp(ped, 0)
        end
    end

    -- Glass
    if data["glass"] ~= nil then
        if data["glass"].item ~= -1 and data["glass"].item ~= 0 then
            SetPedPropIndex(ped, 1, data["glass"].item, data["glass"].texture, true)
        else
            ClearPedProp(ped, 1)
        end
    end

    -- Ear
    if data["ear"] ~= nil then
        if data["ear"].item ~= -1 and data["ear"].item ~= 0 then
            SetPedPropIndex(ped, 2, data["ear"].item, data["ear"].texture, true)
        else
            ClearPedProp(ped, 2)
        end
    end

    if oData.outfitName ~= nil then
        QBCore.Functions.Notify("You have chosen "..oData.outfitName.."! Press Confirm to confirm outfit.")
    end
end)
```
</details>
<details>
<summary>Modified</summary>

```lua
RegisterNetEvent('qb-clothing:client:loadOutfit')
AddEventHandler('qb-clothing:client:loadOutfit', function(oData)
    local ped = PlayerPedId()

    data = oData.outfitData

    if typeof(data) ~= "table" then data = json.decode(data) end

    for k, v in pairs(data) do
        skinData[k].item = data[k].item
        skinData[k].texture = data[k].texture

        -- To secure backwards compability for facemixing
        if data[k].shapeMix then
            skinData[k].shapeMix = data[k].shapeMix
        end

        if data[k].skinMix then
            skinData[k].skinMix = data[k].skinMix
        end
    end

    -- Pants
    if data["pants"] ~= nil then
        SetPedComponentVariation(ped, 4, data["pants"].item, data["pants"].texture, 0)
    end

    -- Arms
    if data["arms"] ~= nil then
        SetPedComponentVariation(ped, 3, data["arms"].item, data["arms"].texture, 0)
    end

    -- T-Shirt
    if data["t-shirt"] ~= nil then
        SetPedComponentVariation(ped, 8, data["t-shirt"].item, data["t-shirt"].texture, 0)
    end

    -- Vest
    if data["vest"] ~= nil then
        SetPedComponentVariation(ped, 9, data["vest"].item, data["vest"].texture, 0)
    end

    -- Torso 2
    if data["torso2"] ~= nil then
        SetPedComponentVariation(ped, 11, data["torso2"].item, data["torso2"].texture, 0)
    end

    -- Shoes
    if data["shoes"] ~= nil then
        SetPedComponentVariation(ped, 6, data["shoes"].item, data["shoes"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Badge
    if data["decals"] ~= nil then
        SetPedComponentVariation(ped, 10, data["decals"].item, data["decals"].texture, 0)
    end

    -- Accessory
    if data["accessory"] ~= nil then
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, data["accessory"].item, data["accessory"].texture, 0)
        end
    end

    -- Mask
    if data["mask"] ~= nil then
        SetPedComponentVariation(ped, 1, data["mask"].item, data["mask"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Hat
    if data["hat"] ~= nil then
        if data["hat"].item ~= -1 and data["hat"].item ~= 0 then
            SetPedPropIndex(ped, 0, data["hat"].item, data["hat"].texture, true)
        else
            ClearPedProp(ped, 0)
        end
    end

    -- Glass
    if data["glass"] ~= nil then
        if data["glass"].item ~= -1 and data["glass"].item ~= 0 then
            SetPedPropIndex(ped, 1, data["glass"].item, data["glass"].texture, true)
        else
            ClearPedProp(ped, 1)
        end
    end

    -- Ear
    if data["ear"] ~= nil then
        if data["ear"].item ~= -1 and data["ear"].item ~= 0 then
            SetPedPropIndex(ped, 2, data["ear"].item, data["ear"].texture, true)
        else
            ClearPedProp(ped, 2)
        end
    end

    -- watch
    if data["watch"] ~= nil then
        if data["watch"].item ~= -1 and data["watch"].item ~= 0 then
            SetPedPropIndex(ped, 6, data["watch"].item, data["watch"].texture, true)
        else
            ClearPedProp(ped, 6)
        end
    end

    if oData.outfitName ~= nil then
        QBCore.Functions.Notify("You have chosen "..oData.outfitName.."! Press Confirm to confirm outfit.")
    end
end)
```
</details>
</details>

<details>
<summary>Add</summary>

```lua
AddEventHandler('qb-clothing:getSkin', function(cb)
    cb(skinData)
end)
```
</details>

### Path: qb-core/server/player.lua
<details>
<summary>Replace</summary>
<details>
<summary>Original</summary>

```lua
function self.Functions.RemoveItem(item, amount, slot)
    amount = tonumber(amount)
    slot = tonumber(slot)
    if slot then
        if self.PlayerData.items[slot].amount > amount then
            self.PlayerData.items[slot].amount = self.PlayerData.items[slot].amount - amount
            self.Functions.UpdatePlayerData()
            TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. self.PlayerData.items[slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. self.PlayerData.items[slot].amount)
            return true
        elseif self.PlayerData.items[slot].amount == amount then
            self.PlayerData.items[slot] = nil
            self.Functions.UpdatePlayerData()
            TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
            return true
        end
    else
        local slots = QBCore.Player.GetSlotsByItem(self.PlayerData.items, item)
        local amountToRemove = amount
        if slots then
            for _, _slot in pairs(slots) do
                if self.PlayerData.items[_slot].amount > amountToRemove then
                    self.PlayerData.items[_slot].amount = self.PlayerData.items[_slot].amount - amountToRemove
                    self.Functions.UpdatePlayerData()
                    TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. _slot .. '], itemname: ' .. self.PlayerData.items[_slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. self.PlayerData.items[_slot].amount)
                    return true
                elseif self.PlayerData.items[_slot].amount == amountToRemove then
                    self.PlayerData.items[_slot] = nil
                    self.Functions.UpdatePlayerData()
                    TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. _slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
                    return true
                end
            end
        end
    end
    return false
end
```
</details>
<details>
<summary>Modified</summary>

```lua
function self.Functions.RemoveItem(item, amount, slot)
    amount = tonumber(amount)
    slot = tonumber(slot)
    if slot then
        if self.PlayerData.items[slot].amount > amount then
            self.PlayerData.items[slot].amount = self.PlayerData.items[slot].amount - amount
            self.Functions.UpdatePlayerData()
            TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. self.PlayerData.items[slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. self.PlayerData.items[slot].amount)
            TriggerEvent('qb-core:onRemoveInventoryItem', self.PlayerData.source, item)
            return true
        elseif self.PlayerData.items[slot].amount == amount then
            self.PlayerData.items[slot] = nil
            self.Functions.UpdatePlayerData()
            TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
            TriggerEvent('qb-core:onRemoveInventoryItem', self.PlayerData.source, item)
            return true
        end
    else
        local slots = QBCore.Player.GetSlotsByItem(self.PlayerData.items, item)
        local amountToRemove = amount
        if slots then
            for _, slot in pairs(slots) do
                if self.PlayerData.items[slot].amount > amountToRemove then
                    self.PlayerData.items[slot].amount = self.PlayerData.items[slot].amount - amountToRemove
                    self.Functions.UpdatePlayerData()
                    TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. self.PlayerData.items[slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. self.PlayerData.items[slot].amount)
                    TriggerEvent('qb-core:onRemoveInventoryItem', self.PlayerData.source, item)
                    return true
                elseif self.PlayerData.items[slot].amount == amountToRemove then
                    self.PlayerData.items[slot] = nil
                    self.Functions.UpdatePlayerData()
                    TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(self.PlayerData.source) .. ' (citizenid: ' .. self.PlayerData.citizenid .. ' | id: ' .. self.PlayerData.source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
                    TriggerEvent('qb-core:onRemoveInventoryItem', self.PlayerData.source, item)
                    return true
                end
            end
        end
    end
    return false
end
```
</details>
</details>
</details>


##Features:
<ol>
<li>Make any clothing as item</li>
<li>Whitelisted clothing protection</li>
<li>Get robbed, loose skin too</li>
</ol>
<p><strong>Dependency: </strong></p>
<ol>
<li>qb-core</li>
<li>qb-clothing</li>
</ol>
<p><strong>How to install:</strong></p>
<ol>
<li>Download file as zip</li>
<li>Rename folder to ak47_qb_iclothingv2</li>
<li>Must do necessary modifications</li>
<li>Put items in qb-core</li>
<li>Put item images into inventory</li>
<li>Set your patreon email in config.lua</li>
<li>Add this resource at the bottom of your server.cfg</li>
<li>Restart your server</li>
</ol>
<p><strong>Join discord for support:</strong> <a href="https://discord.gg/RKZcVwh">https://discord.gg/RKZcVwh</a></p>
<p><strong>Note:</strong> We do not support custom frameworks, highly modified versions of QBcore, or deprecated/outdated versions of anything.</p>
