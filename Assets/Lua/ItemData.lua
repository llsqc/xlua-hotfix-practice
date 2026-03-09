local txt = ABMgr:LoadRes("json", "ItemData", typeof(CS.UnityEngine.TextAsset))
local itemList = Json.decode(txt.text)
ItemData = {}
for _, v in pairs(itemList) do
    ItemData[v.id] = v
end

for k, v in pairs(ItemData) do
    print(k, v)
end

print(ItemData[1].tips)