:begin

@echo off
title BatOS

:: Load variables and constants
call variables.bat
call constants.bat

if not defined installed goto install_first
if not %installed%==true goto install_first

:welcome
echo Welcome to BatOS!
echo Version: %currentVersion%
echo Current user: %usr%
call "./commands/time.bat"
call "./commands/funfact.bat"
echo.
if defined message_from_dev echo %message_from_dev%
goto terminal

:: Main entry
:terminal
set args=

set /p args="[%usr%@%device%]# "
if not defined args goto terminal

for /f "tokens=1,2 delims= " %%a in ("%args%") do (
  set command=%%a
)

::TODO: better way to handle this bruh moment if possible
cd "./commands"
if exist "%command%.bat" call %args% & echo.
if not exist "%command%.bat" call :cmd_notfound
cd ..

goto terminal
exit

:install_first
echo Run the install wizard before starting the OS.
echo.
pause
exit

:cmd_notfound
echo Command "%command%" does not exist. Check for typos!
echo.

:eor