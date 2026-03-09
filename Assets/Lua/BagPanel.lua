BagPanel = {}

BagPanel.panelObj = nil

BagPanel.btnClose = nil
BagPanel.tglEquip = nil
BagPanel.tglItem = nil
BagPanel.tglGem = nil
BagPanel.svBag = nil
BagPanel.content = nil

function BagPanel:Init()
    if self.panelObj == nil then
        self.panelObj = ABMgr:LoadRes("ui", "BagPanel", typeof(GameObject))
        self.panelObj.transform:SetParent(Canvas, false)

        self.btnClose = self.panelObj.transform:Find("btnClose"):GetComponent(typeof(Button))

        local group = self.panelObj.transform:Find("Group")
        self.tglEquip = group:Find("tglEquip"):GetComponent(typeof(Toggle))
        self.tglItem = group:Find("tglItem"):GetComponent(typeof(Toggle))
        self.tglGem = group:Find("tglGem"):GetComponent(typeof(Toggle))

        self.svBag = self.panelObj.transform:Find("svBag"):GetComponent(typeof(ScrollRect))
        self.Content = self.svBag.transform:Find("Viewport/Content")

        self.btnClose.onClick:AddListener(function()
            self:HideMe()
        end)

        self.tglEquip.onValueChanged:AddListener(function(isOn)
            if isOn then
                self:ChangeType(1)
            end
        end)
        self.tglItem.onValueChanged:AddListener(function(isOn)
            if isOn then
                self:ChangeType(2)
            end
        end)
        self.tglGem.onValueChanged:AddListener(function(isOn)
            if isOn then
                self:ChangeType(3)
            end
        end)
    end
end

function BagPanel:ShowMe()
    self:Init()
    self.panelObj:SetActive(true)
end

function BagPanel:HideMe()
    self.panelObj:SetActive(false)
end

function BagPanel:ChangeType(type)
    print("ChangeType:" .. type)
end