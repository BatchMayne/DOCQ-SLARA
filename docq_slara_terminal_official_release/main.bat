@echo off
setlocal EnableDelayedExpansion
title DOCQ SLARA
chcp 65001 >nul
color 4
cd Files

set "devuser=devadmin12345"
set "devpass=inflatables"

timeout /t 2 /nobreak >nul

if exist "metora_index.txt" (
	findstr /i "local wrok set power.driver docq.slara" metora_index.txt >nul
	if errorlevel 1 (
		echo ERROR 512
		pause
		exit
	) else (
		goto main
	)
) else (
	echo Power driver not installed!
	start "" er.vbs
	pause
	exit
)


if exist update_index.txt (
	goto main
) else (
	echo UPDATE NEEDED
	echo Enter "wrok set terminal akas" to update
	goto main
)



:main
set "input="
set /p input="%username%:%computername%-[~]> "
if not defined input goto main

if /i "%input%" EQU "disk" (
    echo.
    cd
    goto main
)

if /i "%input%" EQU "disk /r" (
    echo.
    tree
    pause
    cd
    pause
    goto main
)

if /i "%input%" EQU "whouser" (
    echo.
    echo USER: %username%
    echo PC NAME: %computername%
    goto main
)

if /i "%input%" EQU "rnf" (
    echo.
    if exist update_index.txt (
        echo Version 2
        echo EXP: 2026 NOVEMBER 3
    ) else (
        echo Version 1
        echo EXP: 2026 FEBRUARY 16
    )
    goto main
)

if /i "%input%" EQU "ctrl.apple" (
    timeout /t 2 /nobreak >nul
    goto main
)

if /i "%input%" EQU "akf ft5" (
    cls
    goto login
)

if /i "%input%" EQU "clr" (
    cls
    goto main
)

if /i "%input%" EQU "matrix xtool" (
	if exist matrix_tool_index.txt (
		goto matrix
	) else (
		echo matrix tool > matrix_tool_index.txt
		echo created by slara developed and published >> matrix_tool_index.txt
		timeout /t 10 /nobreak >nul
		echo Installation done.
		pause
		cls
		goto matrix
	)
)

if /i "%input%" EQU "clone gh" (
    set /p "clone=> "
    echo %clone%
    echo %clone%
    goto main
)

for /f "tokens=1* delims= " %%a in ("%input%") do (
    if /i "%%a" EQU "echo" (
        echo %%b
        goto main
    )
)

if /i "%input%" EQU "inl mcore" (
    echo Downloading MCORE in Slara is not allowed
    echo Try downloading it on Github
    echo.
    goto main
)

if /i "%input%" EQU "inl cmd" (
    echo Downloading CMD in Slara is not allowed
    echo Try entering "cmd xtool"
    echo.
    goto main
)

if /i "%input%" EQU "cmd xtool" (
    start cmd.exe
    echo Command Prompt Started
    goto main
)

if /i "%input%" EQU "opt wrok set" (
    echo WROK SET defined
    pause
    echo Activation Failed
    pause
    echo.
    goto main
)

if /i "%input%" EQU "set root" (
    echo Rooting Slara is impossible right now
    echo Error
    goto main
)

if /i "%input%" EQU "del wrok set terminal akas -t -h -h --" (
    pause
    echo 4 pause away
    pause
    echo 3 pause away
    pause
    echo 2 pause away
    pause
    echo 1 pause away
    pause
    echo 0 pause away
    timeout /t 10 /nobreak >nul
    start "" cmd /c del "%~f0"
    exit
)

if /i "%input%" EQU "wrok set terminal akas" (
    if exist update_index.txt (
        echo Already updated.
        goto main
    ) else (
        echo akas index
        echo slara dex started
        pause
        echo SLARA_COLL_SHELL_DEX_REM
        timeout /t 5 /nobreak >nul
        echo SLARA_COLL_SHELL_DEX_FOX
        timeout /t 5 /nobreak >nul
        echo Qakas index
        timeout /t 5 /nobreak >nul
        echo SLARA DOCQ VERSION 2-UPDS
        pause
        echo SLARA UPDATED! > update_index.txt
        cls
        goto main
    )
)

if /i "%input%" EQU "wrok rchs" (
	if exist update_index.txt (
		echo SLARA_COLL_SHELL_ID_CODE
		timeout /t 5 /nobreak >nul
		echo RCHS index
		pause
		echo RCHS index outdated
		pause
		goto main
	) else (
		echo Update required
		goto main
	)
)

if /i "%input%" EQU "wrok exit" (
	del update_index.txt
	exit
)

if /i "%input%" EQU "wrok terminal lkernel -t --" (
	echo Deleting cache...
	timeout /t 10 /nobreak >nul
	echo Deleted.
	pause
	goto main
)


if /i "%input%" EQU "jarvis" (
	echo Hello sir.
	echo All system are working fine.
	goto main
)

if /i "%input%" EQU "echo0 actron" (
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	goto main

)

if /i "%input%" EQU "echoo actron" (
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	echo Error
	goto main

)

if /i "%input%" EQU "wrok vex-mechanics" (
	if exist update_index.txt (
		echo Installing...
		echo This will take 1 minute
		timeout /t 60 /nobreak >nul
		cls
		goto vex
	) else (
		echo Update required.
		goto main
	)

)

if /i "%input%" EQU "wrok set terminal docq.driver -- inl power-driver" (
	if exist metora_index.txt (
		echo Driver already installed
		goto main
	) else (
		echo Installation requested by - %username%
		echo ad-ll SLARA --
		echo slara_power driver installing...
		timeout /t 10 /nobreak >nul
		echo power-driver0
		timeout /t 1 /nobreak >nul
		echo power-driver1
		timeout /t 1 /nobreak >nul
		echo power-driver2
		timeout /t 1 /nobreak >nul
		echo power-driver3
		timeout /t 1 /nobreak >nul
		echo power-driver4
		timeout /t 1 /nobreak >nul
		echo power-driver5
		timeout /t 1 /nobreak >nul
		echo Installing finished.
		timeout /t 5 /nobreak >nul
		echo local wrok set power.driver docq.slara > metora_index.txt
		goto main
	)
)

if /i "%input%" EQU "drre" (
    if exist update_index.txt (
        echo UPDATED
    ) else (
        echo NOT UPDATED!
    )
    echo SLARA -DOCQ
    echo MLAA -GRME
    echo METORA POWER DRIVER -DOCQ FOX
    echo UPDATE MANAGER -DOCQ MANAGER
    echo.
    goto main
)

if /i "%input%" EQU "wrok set terminal akas -t driver -- power.driver" (
	echo Uninstalling power driver...
	echo Exit terminal if you want to cancel deletion...
	timeout /t 10 /nobreak >nul
	del /f /q "metora_index.txt"
	exit
)

echo "%input%" Command not found
goto main

set /a attempts=0
:login
set /p user=USERNAME:
set /p pass=PASSWORD:

if "%user%"=="%devuser%" if "%pass%"=="%devpass%" (
    goto dev
) else (
    set /a attempts+=1
    if %attempts% GEQ 3 exit
    goto login
)


:dev
title DOCQ SLARA DEVELOPER MODE
color a
set "input="
set /p input="%username%/> "
if not defined input goto dev

if /i "%input%" EQU "server ash" (
    start cmd /k ftp 66.194.79.251
    goto dev
)

if /i "%input%" EQU "server ash /" (
    start cmd /k ftp 66.194.79.251
    pause
    dir
    tree
    dir
    tree
    dir
    tree
    goto dev
)

if /i "%input%" EQU "akf exit" (
    title DOCQ SLARA
    color 4
    cls
    goto main
)

goto dev

:matrix
color a
:loop
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig
ipconfig

choice /c QE /n /t 1 /d Q >nul
if errorlevel 2 (
	cls
    color 4
    goto main
)

goto loop

:vex
title VEX mechanics
color 70
start vex-mechanics.txt
pause
