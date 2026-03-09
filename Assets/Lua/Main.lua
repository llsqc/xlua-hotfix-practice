print("starting main.lua")
require("Assets.Lua.InitClass")
require("Assets.Lua.ItemData")
require("Assets.Lua.PlayerData")
PlayerData:Init()

require("Assets.Lua.MainPanel")
require("Assets.Lua.BagPanel")
MainPanel:ShowMe()