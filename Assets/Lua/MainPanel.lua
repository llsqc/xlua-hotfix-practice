MainPanel = {}

MainPanel.panelObj = nil
MainPanel.btnRole = nil
MainPanel.btnSkill = nil

function MainPanel:Init()
    if self.panelObj == nil then
        self.panelObj = ABMgr:LoadRes("ui", "MainPanel", typeof(GameObject))
        self.panelObj.transform:SetParent(Canvas, false)

        self.btnRole = self.panelObj.transform:Find("btnRole"):GetComponent(typeof(Button))
        self.btnSkill = self.panelObj.transform:Find("btnSkill"):GetComponent(typeof(Button))

        self.btnRole.onClick:AddListener(function()
            self:btnRoleClick()
        end)

        self.btnSkill.onClick:AddListener(function()
            self:btnSkillClick()
        end)
    end
end

function MainPanel:ShowMe()
    self:Init()
    self.panelObj:SetActive(true)
end

function MainPanel:HideMe()
    self.panelObj:SetActive(false)
end

function MainPanel:btnRoleClick()
    BagPanel:ShowMe()
end

function MainPanel:btnSkillClick()
    print("btnSkillClick")
end
