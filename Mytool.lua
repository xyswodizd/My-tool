local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event)
	PlayerName:SetPoint("CENTER", PlayerFrameHealthBar, "CENTER", 0, 24)---玩家头像名字位置
	PlayerFrameHealthBarTextLeft:SetPoint("left", PlayerFrameHealthBar, "left", 4, -3)---在生命值和百分比同时显示时，玩家生命值百分比位置
	PlayerFrameHealthBarTextRight:SetPoint("Right", PlayerFrameHealthBar, "Right", -1, -3)---在生命值和百分比同时显示时，玩家生命值位置
	PlayerFrameHealthBarText:SetPoint("CENTER", PlayerFrameHealthBar, "CENTER", 0, 0)
	TargetFrameTextureFrameName:SetPoint("CENTER", TargetFrameHealthBar, "CENTER", 0, 25)---目标头像名字位置
	TargetFrameHealthBarTextLeft:SetPoint("left", TargetFrameHealthBar, "left", 1, -1)---在生命值和百分比同时显示时，目标生命值百分比位置
	TargetFrameHealthBarTextRight:SetPoint("Right", TargetFrameHealthBar, "Right", -5, -1)---在生命值和百分比同时显示时，目标生命值位置
	TargetFrame.deadText:SetPoint("CENTER", TargetFrameHealthBar, "CENTER", 0, 0)---目标死亡文字显示位置
	PlayerFrame:UnregisterEvent("UNIT_COMBAT")-- 隐藏玩家头像伤害治疗数字
	PetFrame:UnregisterEvent("UNIT_COMBAT")--隐藏宠物头像伤害治疗数字
end)


hooksecurefunc("GameTooltip_SetDefaultAnchor", function (t,p)t:SetOwner(p, "ANCHOR_CURSOR_RIGHT", 40, -120)end)--鼠标提示信息跟随鼠标锚点

function GameTooltip_UnitColor(unit)-- 鼠标提示名字染色
	local r, g, b
	local reaction = UnitReaction(unit, "player")
	if reaction then
		r = FACTION_BAR_COLORS[reaction].r
		g = FACTION_BAR_COLORS[reaction].g
		b = FACTION_BAR_COLORS[reaction].b
	else
		r = 1.0
		g = 1.0
		b = 1.0
	end

	if UnitIsPlayer(unit) then
		local class = select(2, UnitClass(unit))
		r = RAID_CLASS_COLORS[class].r
		g = RAID_CLASS_COLORS[class].g
		b = RAID_CLASS_COLORS[class].b
	end
	return r, g, b
end
--下面是移动buff框体部分，但我想要只移动debuff，注释掉后续再研究
--local Bx = -6-- BUFF的X坐标
--local By = 30-- BUFF的Y坐标
	--BuffFrame:ClearAllPoints()
--local newSetPoint = BuffFrame.SetPoint
	--hooksecurefunc(BuffFrame, "SetPoint", function()
	--newSetPoint(BuffFrame, "TOPRIGHT", PlayerFrame, "TOPRIGHT", Bx, By)
--end)
