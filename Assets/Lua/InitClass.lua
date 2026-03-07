-- 设置常用别名
-- 引入Object类
require("Assets.Lua.Object")
-- 引入SplitTools
require("Assets.Lua.SplitTools")
-- 引入JsonUtility
Json = require("Assets.Lua.JsonUtility")

--
GameObject = CS.UnityEngine.GameObject
Component = CS.UnityEngine.Component
Transform = CS.UnityEngine.Transform
RectTransform = CS.UnityEngine.RectTransform
Resource = CS.UnityEngine.Resources

SpriteAtlas = CS.UnityEngine.U2D.SpriteAtlas

Vector2 = CS.UnityEngine.Vector2
Vector3 = CS.UnityEngine.Vector3

UI = CS.UnityEngine.UI
Image = UI.Image
Text = UI.Text
Button = UI.Button
Toggle = UI.Toggle
ScrollRect = UI.ScrollRect

ABMgr = CS.ABMgr.GetInstance()