title Minecraft 2INFA 0.1.5 Installer
@echo off
color F1
cls
:start
echo Do you have Minecraft 2INFA already installed?
set /p choice=Yes or No (write y or n)
if not %choice% == set choice=%choice:~0,1%
if '%choice%'=='y' goto :2
if '%choice%'=='n' goto :1
:1
cls
mkdir %appdata%\.minecraft\versions\2infa
copy bin\launcher.exe %appdata%\.minecraft\launcher.exe
copy bin\versions\2infa %appdata%\.minecraft\versions\2infa
goto 3
:2
cls
del /s /f /q %appdata%\.minecraft\versions\2infa
copy bin\versions\2infa %appdata%\.minecraft\versions\2infa
goto 3
:3
cls
echo What launcher do you want to install?
echo 1) Titan Launcher
echo 2) Shiginima Launcher
echo 3) Don't install any launcher
set /p choice=Yes or No (write y or n)
if not %choice% == set choice=%choice:~0,1%
if '%choice%'=='1' goto :4
if '%choice%'=='2' goto :5
if '%choice%'=='3' exit
:4
cls
copy bin\titan.exe %appdata%\.minecraft\titan.exe
start %appdata%\.minecraft\titan.exe
exit
:5
copy bin\shiginima.exe %appdata%\.minecraft\shiginima.exe
start %appdata%\.minecraft\shiginima.exe
exit