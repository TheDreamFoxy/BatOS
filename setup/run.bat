@setlocal enableextensions enabledelayedexpansion
@echo off
title BatOS Setup

call "../os/variables.bat"
if defined installed goto icheck
goto begin

:icheck
if %installed%==true goto already_installed

:begin
echo BBBBBBBBBBBBBBBBB                             tttt               OOOOOOOOO        SSSSSSSSSSSSSSS
echo B::::::::::::::::B                         ttt:::t             OO:::::::::OO    SS:::::::::::::::S
echo B::::::BBBBBB:::::B                        t:::::t           OO:::::::::::::OO S:::::SSSSSS::::::S
echo BB:::::B     B:::::B                       t:::::t          O:::::::OOO:::::::OS:::::S     SSSSSSS
echo   B::::B     B:::::B  aaaaaaaaaaaaa  ttttttt:::::ttttttt    O::::::O   O::::::OS:::::S            
echo   B::::B     B:::::B  a::::::::::::a t:::::::::::::::::t    O:::::O     O:::::OS:::::S            
echo   B::::BBBBBB:::::B   aaaaaaaaa:::::at:::::::::::::::::t    O:::::O     O:::::O S::::SSSS         
echo   B:::::::::::::BB             a::::atttttt:::::::tttttt    O:::::O     O:::::O  SS::::::SSSSS    
echo   B::::BBBBBB:::::B     aaaaaaa:::::a      t:::::t          O:::::O     O:::::O    SSS::::::::SS  
echo   B::::B     B:::::B  aa::::::::::::a      t:::::t          O:::::O     O:::::O       SSSSSS::::S 
echo   B::::B     B:::::B a::::aaaa::::::a      t:::::t          O:::::O     O:::::O            S:::::S
echo   B::::B     B:::::Ba::::a    a:::::a      t:::::t    ttttttO::::::O   O::::::O            S:::::S
echo BB:::::BBBBBB::::::Ba::::a    a:::::a      t::::::tttt:::::tO:::::::OOO:::::::OSSSSSSS     S:::::S
echo B:::::::::::::::::B a:::::aaaa::::::a      tt::::::::::::::t OO:::::::::::::OO S::::::SSSSSS:::::S
echo B::::::::::::::::B   a::::::::::aa:::a       tt:::::::::::tt   OO:::::::::OO   S:::::::::::::::SS 
echo BBBBBBBBBBBBBBBBB     aaaaaaaaaa  aaaa         ttttttttttt       OOOOOOOOO      SSSSSSSSSSSSSSS   

echo.
echo Welcome, stranger to your new operating system completely written in Windows Batch!
echo This absolutely awesome OS was never (and we are not going to) tested on other command lines than Windows 10.
echo If you want to use it without bugs and crashes, please use this runtime.
echo.
echo By continuing to setup ^& using this OS (why would you do this lmao) you actually agree to our license.
echo.
echo.
goto agreement

:agreement
set agreement=
set /p agreement="Continue to the OS configuration & setup? ([Y]es, [N]o, [R]ead license):"
if not defined agreement goto agreement

if not x%agreement:y=%==x%agreement% goto setup
if not x%agreement:Y=%==x%agreement% goto setup
if not x%agreement:n=%==x%agreement% goto cancel
if not x%agreement:N=%==x%agreement% goto cancel
if not x%agreement:r=%==x%agreement% goto license
if not x%agreement:R=%==x%agreement% goto license

:: If none was selected, ask again
goto agreement

:license
echo.
FOR /F "tokens=*" %%i IN (license.txt) DO @ECHO %%i
echo.
goto agreement

:cancel
echo.
echo Understandable, why would you use "OS" in an actual OS anyways...
echo Press any key to exit...
pause > nul
exit

:already_installed
echo You already set it up lol.
echo Run the OS using the "run.bat" file in the root folder (/os/run.bat)
echo.
pause
exit

:setup
call core.bat "agreed"
