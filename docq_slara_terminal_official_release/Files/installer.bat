@echo off
title DOCQ SLARA INSTALLER
echo THIS IS NOT THE TERMINAL
echo THIS IS JUST A INSTALLER FOR DRIVERS
:main
set /p input="> "

if /i "%input%" EQU "driver- power.driver install --wrok" (
	echo local wrok set power.driver docq.slara > metora_index.txt
)