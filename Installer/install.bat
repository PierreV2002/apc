title Minecraft 2INFA 0.2 Installer
@echo off
color F1
cls
:start
echo Select an option
echo 1) Install Minecraft 2INF/A
echo 2) Update Minecraft 2INF/A
echo 3) Repair Minecraft 2INF/A
echo 4) Install launcher
set /p choice=Write the number
if not %choice% == set choice=%choice:~0,1%
if '%choice%'=='1' goto :2
if '%choice%'=='2' goto :1
if '%choice%'=='3' goto :2
if '%choice%'=='4' goto :3
:1
cls
mkdir %appdata%\.minecraft\versions\2infa
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
echo 1) Titan Launcher (includes premium mode)
echo 2) Shiginima Launcher
echo 3) Don't install any launcher
echo If you like Minecraft, buy it!!
set /p choice=Write the number
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