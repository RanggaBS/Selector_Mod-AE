@echo off

:: Change the window title
title "Selector Mod - AE (compiler)"


:: Compiling the files
echo compiling.. (STimeCycle.lua)
luac -o STimeCycle.lur STimeCycle.lua

echo compiling.. (SelectorMod.lua)
luac -o SelectorMod.lur SelectorMod.lua

echo compiling.. (SelectorMod_Effects.lua)
luac -o SelectorMod_Effects.lur SelectorMod_Effects.lua

echo compiling.. (SelectorMod_Setup.lua)
luac -o SelectorMod_Setup.lur SelectorMod_Setup.lua

echo compiling.. (SelectorMod_Props.lua)
luac -o SelectorMod_Props.lur SelectorMod_Props.lua

echo compiling.. (SelectorMod_Lib.lua)
luac -o SelectorMod_Lib.lur SelectorMod_Lib.lua

echo compiling.. (SelectorMod_Lib2.lua)
luac -o SelectorMod_Lib2.lur SelectorMod_Lib2.lua

echo compiling.. (SelectorMod_OMods.lua)
luac -o SelectorMod_OMods.lur SelectorMod_OMods.lua


:: Rebuilding the Scripts.img
echo rebuilding.. (Scripts.img)
img -open "Scripts.img" -add "STimeCycle.lur" "SelectorMod.lur" "SelectorMod_Effects.lur" "SelectorMod_Setup.lur" "SelectorMod_Props.lur" "SelectorMod_Lib.lur" "SelectorMod_Lib2.lur" "SelectorMod_OMods.lur" -rebuild
echo .
color a
echo Done.
echo .
pause
