@REM Windows batch file to set the environment
REM setlocal EnableDelayedExpansion
@echo off

@REM Extend your PATH here
@REM set PATH=%PATH%;C:\Raspy\pico\sdk\JLink;C:\Raspy\pico\sdk\cmake\bin;C:\Raspy\pico\sdk\cmake\ninja;C:\Raspy\pico\sdk\toolchain\bin

@REM Adding path only if it does not exist already
set "NEW_PATH=C:\Raspy\pico\sdk\JLink"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

set "NEW_PATH=C:\Raspy\pico\sdk\cmake\bin"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

set "NEW_PATH=C:\Raspy\pico\sdk\ninja"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

set "NEW_PATH=C:\Raspy\pico\sdk\toolchain\bin"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

set "NEW_PATH=C:\Raspy\pico\sdk\doxygen"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

set "NEW_PATH=C:\Raspy\pico\sdk\graphviz\bin"
set "CHECK=;%PATH%;"
echo !CHECK! | find /I ";%NEW_PATH%;" >nul
if errorlevel 1 (
    echo Adding %NEW_PATH%
    set "PATH=%PATH%;%NEW_PATH%"
) else (
    echo !NEW_PATH! already exists
)

@ REM Add more variables as needed
set PICO_JLINK_PATH=C:\Raspy\pico\sdk\JLink
set PICO_OPENOCD_PATH=C:\Raspy\pico\sdk\openocd\bin
set PICO_SDK_PATH=C:\Raspy\pico\sdk\pico-sdk
set PICO_TOOLCHAIN_PATH=C:\Raspy\pico\sdk\toolchain

@REM Launch VS Code in the current directory, using -n for new environment
REM code -n .

REM endlocal 
