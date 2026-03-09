using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public static class XLuaGenConfig
{
    [XLua.CSharpCallLua]
    public static List<System.Type> LuaCallCSharp = new List<System.Type>()
    {
        typeof(UnityEngine.GameObject),
        typeof(UnityEngine.Transform),
        typeof(UnityEngine.UI.Text),
        typeof(UnityEngine.UI.Image),
        typeof(UnityEngine.UI.Button),
        typeof(UnityEngine.UI.Toggle),
        typeof(UnityEngine.UI.ScrollRect),
        typeof(UnityAction<bool>)
    };
}
