local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event)
	PlayerName:SetPoint("CENTER", PlayerFrameHealthBar, "CENTER", 0, 24)---玩家头像名字位置
	PlayerFrameHealthBarTextLeft:SetPoint("left", PlayerFrameHealthBar, "left", 4, -3)---在生命值和百分比同时显示时，玩家生命值百分比位置
	PlayerFrameHealthBarTextRight:SetPoint("Right", PlayerFrameHealthBar, "Right", -1, -3)---在生命值和百分比同时显示时，玩家生命值位置
	TargetFrameTextureFrameName:SetPoint("CENTER", TargetFrameHealthBar, "CENTER", 0, 25)---目标头像名字位置
	TargetFrameHealthBarTextLeft:SetPoint("left", TargetFrameHealthBar, "left", 1, -1)---在生命值和百分比同时显示时，目标生命值百分比位置
	TargetFrameHealthBarTextRight:SetPoint("Right", TargetFrameHealthBar, "Right", -5, -1)---在生命值和百分比同时显示时，目标生命值位置
end)
