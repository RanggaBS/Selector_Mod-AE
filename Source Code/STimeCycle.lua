function main()
	while not SystemIsReady() or AreaIsLoading() do
		Wait(0)
	end
	LaunchScript("SelectorMod.lua")
	while true do
		Wait(0)
	end
end

F_AttendedClass = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	return 
  end
  SetSkippedClass(false)
  PlayerSetPunishmentPoints(0)
end
 
F_MissedClass = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	return 
  end
  SetSkippedClass(true)
  StatAddToInt(166)
end
 
F_AttendedCurfew = function()
  if not PedInConversation(gPlayer) and not MissionActive() then
	TextPrintString("You got home in time for curfew", 4)
  end
end
 
F_MissedCurfew = function()
  if not PedInConversation(gPlayer) and not MissionActive() then
	TextPrint("TM_TIRED5", 4, 2)
  end
end
 
F_StartClass = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	return 
  end
  F_RingSchoolBell()
  local l_6_0 = PlayerGetPunishmentPoints() + GetSkippingPunishment()
end
 
F_EndClass = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	return 
  end
  F_RingSchoolBell()
end
 
F_StartMorning = function()
  F_UpdateTimeCycle()
end
 
F_EndMorning = function()
  F_UpdateTimeCycle()
end
 
F_StartLunch = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	F_UpdateTimeCycle()
	return 
  end
  F_UpdateTimeCycle()
end
 
F_EndLunch = function()
  F_UpdateTimeCycle()
end
 
F_StartAfternoon = function()
  F_UpdateTimeCycle()
end
 
F_EndAfternoon = function()
  F_UpdateTimeCycle()
end
 
F_StartEvening = function()
  F_UpdateTimeCycle()
end
 
F_EndEvening = function()
  F_UpdateTimeCycle()
end
 
F_StartCurfew_SlightlyTired = function()
  F_UpdateTimeCycle()
end
 
F_StartCurfew_Tired = function()
  F_UpdateTimeCycle()
end
 
F_StartCurfew_MoreTired = function()
  F_UpdateTimeCycle()
end
 
F_StartCurfew_TooTired = function()
  F_UpdateTimeCycle()
end
 
F_EndCurfew_TooTired = function()
  F_UpdateTimeCycle()
end
 
F_EndTired = function()
  F_UpdateTimeCycle()
end
 
F_Nothing = function()
end
 
F_ClassWarning = function()
  if IsMissionCompleated("3_08") and not IsMissionCompleated("3_08_PostDummy") then
	return 
  end
  local l_23_0 = math.random(1, 2)
end
 
F_UpdateTimeCycle = function()
  if not IsMissionCompleated("1_B") then
	local l_24_0 = GetCurrentDay(false)
	if l_24_0 < 0 or l_24_0 > 2 then
	  SetCurrentDay(0)
	end
  end
  F_UpdateCurfew()
end
 
F_UpdateCurfew = function()
  local l_25_0 = shared.gCurfewRules
  if not l_25_0 then
	l_25_0 = F_CurfewDefaultRules
  end
  l_25_0()
end
 
F_CurfewDefaultRules = function()
  local l_26_0 = ClockGet()
  if l_26_0 >= 23 or l_26_0 < 7 then
	shared.gCurfew = true
  else
	shared.gCurfew = false
  end
end
