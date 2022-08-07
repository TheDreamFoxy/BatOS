echo User %usr% requested profile change

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
echo set installed=%installed%> "%~dp0..\variables.bat"
echo set usr=%usr%>> "%~dp0..\variables.bat"
echo set device=%device%>> "%~dp0..\variables.bat"