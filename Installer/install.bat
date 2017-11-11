title 2INFA
@echo off
color F1
cls
:start
echo Do you have Minecraft 2INFA already installed?
set /p choice=Yes or No (write y or n)?
if not %choice% == set choice=%choice:~0,1%
if '%choice%'=='y' goto :2
if '%choice%'=='n' goto :1
:1
mkdir %appdata%\.minecraft\versions\2infa
copy bin\launcher.exe %appdata%\.minecraft\launcher.exe
copy bin\versions\2infa %appdata%\.minecraft\versions\2infa
goto 3
:2
del /s /f /q %appdata%\.minecraft\versions\2infa
copy bin\versions\2infa %appdata%\.minecraft\versions\2infa
goto 3
:3
cls
echo For this session you will use Minecraft Titan Launcher
echo Press a key to launch
pause
start %appdata%\.minecraft\launcher.exe
exit