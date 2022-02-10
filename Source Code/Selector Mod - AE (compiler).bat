@echo off
title Selector Mod - AE (compiler)

echo compiling "STimeCycle.lua" ..
luac -o STimeCycle.lur STimeCycle.lua

echo compiling "SelectorMod.lua" ..
luac -o SelectorMod.lur SelectorMod.lua

echo compiling "Sele
