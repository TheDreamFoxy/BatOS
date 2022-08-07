@echo off
title BatOS setup wizard

set arg=%1
if not defined arg goto rawrun

:setup_process
echo.
echo Now we are going to set up few things to make your machine usage better
echo.
goto ask_username

:ask_username
set usr=
set /p usr=Enter username you want to use: 
if not defined usr goto ask_username
goto ask_devname

:ask_devname
set device=
set /p device=Enter device name you want to use: 
if not defined device goto ask_devname
goto handle_variables

:handle_variables
echo set installed=true> "%~dp0..\os\variables.bat"
echo set usr=%usr%>> "%~dp0..\os\variables.bat"
echo set device=%device%>> "%~dp0..\os\variables.bat"

:success
echo.
echo Your amazing OS was set up! Now you can run it.
echo Press any key to exit the setup wizard...
echo.
pause > nul
exit

:rawrun
title Raw run cancelled...
echo Do not run this file directly, use "run.bat" file instead.
echo Also make sure you agreed to the license etc.
pause
exit