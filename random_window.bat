@echo on
for /f "delims=" %%i in ('wsl /mnt/d/Telechargements/emulations/script/random_retroarch') do set RESULT=%%i
REM echo %RESULT%
REM echo %RESULT:~77%
cd d:\RetroArch
%RESULT%
rem timeout /t 5
