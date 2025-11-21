@echo on
for /f "delims=" %%i in ('wsl /mnt/d/Telechargements/emulations/script/random_retroarch') do set RESULT=%%i
@echo off
for %%A in (%RESULT%) do set "ROMNAME=%%~nxA"
cd d:\RetroArch
%RESULT%
timeout /t 30
exit