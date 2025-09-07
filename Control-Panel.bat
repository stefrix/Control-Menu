@echo off
color 1f
title Control Menu of %%
::start of actual code:

set #line=########################################################################################################################

set AA=	    ______            __             __     __  ___                
set AB=	   / ____/___  ____  / /__________  / /    /  \/  /__  ____  __  __
set AC=	  / /   / __ \/ __ \/ __/ ___/ __ \/ /    / /\_/ / _ \/ __ \/ / / /
set AD=	 / /___/ /_/ / / / / /_/ /  / /_/ / /    / /  / /  __/ / / / /_/ / 
set AE=	 \____/\____/_/ /_/\__/_/   \____/_/    /_/  /_/\___/_/ /_/\__,_/                        by stefrix 


::H menu
:H
cls
echo.
echo %#line%
echo.
echo.
echo %AA%
echo %AB%
echo %AC%
echo %AD%
echo %AE%
echo.
echo.
echo Welcome %USERNAME% to control menu!
echo.
echo Use h to view what you can do
echo.
echo today is: %DATE% %TIME%
echo.
echo %#line%
echo.
echo.
echo.
goto cmdl


::cmd line
:cmdl
echo.
set /p cmmd= waiting for command:
if %cmmd% == r goto r
if %cmmd% == E or if %cmmd% == exit goto E
if %cmmd% == h goto h
if %cmmd% == H goto H
if %cmmd% == c goto cmdl
if %cmmd% == ver goto ver
if %cmmd% == Ipc goto pcInfo

::help menu
:h
cls
echo.
echo list of commands that you can use:
echo commands are capital sensitive!
echo.
echo (r)  Basic command to run programs (you can use it also to open site)
echo.
echo (exit) or (E)  exit this control enviroment
echo.
echo (H)  go to the main home page (the welcome page)
echo.
echo (c)  go to the command line
echo.
echo (h)  show this help menu
echo.
echo (ver)  show the current CONTROL-PANEL version
echo.
echo (Ipc)  show some information about your sistem
echo.
goto cmdl

::run menu
:r
cls
set /p run=run:
if %run% == "exit" ( ::non so perchè non funzionaaaaaaaaaaa
goto cmdl) else (
	start %run%
	goto r)



::User computer info
:pcInfo
cls
echo.
echo Computer name: %COMPUTERNAME%
echo.
echo Username: %USERNAME%
echo.
echo Systemdriver: %SYSTEMDRIVE%
echo.
echo Current OS: %OS%
echo.
echo Processor ID: %PROCESSR_IDENTIFIER%
echo.
echo Processor level: %PROCESSOR_LEVEL%
echo.
echo Processor version: %PROCESSOR_REVISION%
echo.
echo N Processors: %NUMBER_OF_PROCESSORS%
echo.
echo piedi
echo.


echo.
goto cmdl



::exit
:E
cls
exit

::current version
:ver
cls
echo %#line%
echo.
echo.
echo %AA%
echo %AB%
echo %AC%
echo %AD%
echo %AE%
echo.
echo.
echo Version: 1.0		last updated: 06/09/2025
echo.
echo Made by Stefrix and Scalamobile 
echo. 
echo Made with Notepade++ and Nvim
echo.
echo Github project:
echo https://github.com/stefrix/Control-Panel
echo.
echo %#line%
echo.
echo.
echo.
goto cmdl
:: owo

:error
cls
echo		 ,adPPYba, 8b,dPPYba, 8b,dPPYba,  ,adPPYba,  8b,dPPYba,  
echo		a8P_____88 88P'   "Y8 88P'   "Y8 a8"     "8a 88P'   "Y8  
echo		8PP""""""" 88         88         8b       d8 88          
echo		"8b,   ,aa 88         88         "8a,   ,a8" 88          
echo		 `"Ybbd8"' 88         88          `"YbbdP"'  88   
goto cmdl