@echo off

title desktop multitool --by cobra--

:menu
cls


echo                                        bbbbbbbb                                                     
echo                                        b::::::b                                                     
echo                                       b::::::b                                                     
echo                                      b::::::b                                                     
echo                                       b:::::b                                                     
echo      cccccccccccccccc   ooooooooooo   b:::::bbbbbbbbb    rrrrr   rrrrrrrrr   aaaaaaaaaaaaa        
echo     cc:::::::::::::::c oo:::::::::::oo b::::::::::::::bb  r::::rrr:::::::::r  a::::::::::::a       
echo    c:::::::::::::::::co:::::::::::::::ob::::::::::::::::b r:::::::::::::::::r aaaaaaaaa:::::a      
echo    c:::::::cccccc:::::co:::::ooooo:::::ob:::::bbbbb:::::::brr::::::rrrrr::::::r         a::::a      
echo    c::::::c     ccccccco::::o     o::::ob:::::b    b::::::b r:::::r     r:::::r  aaaaaaa:::::a      
echo    c:::::c             o::::o     o::::ob:::::b     b:::::b r:::::r     rrrrrrraa::::::::::::a      
echo   c:::::c             o::::o     o::::ob:::::b     b:::::b r:::::r           a::::aaaa::::::a      
echo   c::::::c     ccccccco::::o     o::::ob:::::b     b:::::b r:::::r          a::::a    a:::::a      
echo   c:::::::cccccc:::::co:::::ooooo:::::ob:::::bbbbbb::::::b r:::::r          a::::a    a:::::a      
echo    c:::::::::::::::::co:::::::::::::::ob::::::::::::::::b  r:::::r          a:::::aaaa::::::a      
echo    cc:::::::::::::::c oo:::::::::::oo b:::::::::::::::b   r:::::r           a::::::::::aa:::a     
echo      cccccccccccccccc   ooooooooooo   bbbbbbbbbbbbbbbb    rrrrrrr            aaaaaaaaaa  aaaa     
                                                                                                 
echo.                                                                                               
echo.
echo.

echo 1. open cmd
echo 2. open powershell
echo 3. open system info
echo 4. open hostname
echo 5. open IP config
echo 6. open delate system32
echo 7. open task manager
echo.

set /p choice=Enter your choice:

if "%choice%"=="1" goto cmd
if "%choice%"=="2" goto powershell
if "%choice%"=="3" goto systeminfo
if "%choice%"=="4" goto hostname
if "%choice%"=="5" goto IP
if "%choice%"=="6" goto deletesystem32
if "%choice%"=="7" goto taskmanager


:cmd
start cmd
goto menu

:powershell
start powershell
goto menu

:systeminfo
systeminfo
pause
goto menu

:hostname
hostname
pause
goto menu

:IP
ipconfig
pause
goto menu

:deletesystem32
echo Are you sure you want to delete system32? (Y/N)
set /p confirm=
if /i "%confirm%"=="Y" (
        del C:\Windows\System32 /s /q
    echo System32 has been deleted.
) else (
     goto menu
)
goto menu

:taskmanager
start taskmgr
goto menu


