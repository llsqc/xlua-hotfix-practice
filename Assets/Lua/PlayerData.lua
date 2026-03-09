PlayerData = {}
PlayerData.equip = {}
PlayerData.item = {}
PlayerData.gems = {}

function PlayerData:Init()
    table.insert(PlayerData.equip, { id = 1, num = 1 })
    table.insert(PlayerData.item, { id = 2, num = 20 })
    table.insert(PlayerData.gems, { id = 3, num = 30 })
end