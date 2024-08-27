@echo off

:: Variables
set "CHROME_BASED_BROWSER=chrome.exe"
set "PEM_FILE=dist\vulntotal-extension.pem"
set "OUTPUT=dist\vulntotal-extension.crx"
set "SRC_DIR=%cd%\src"

if not exist "dist" mkdir "dist"

echo Packing the vulntotal extension into a .crx file...
echo %SRC_DIR%
"%CHROME_BASED_BROWSER%" --pack-extension="%SRC_DIR%"

if exist "%SRC_DIR%.crx" (
    move "%SRC_DIR%.crx" "%OUTPUT%"
    move "%SRC_DIR%.pem" "%PEM_FILE%"
    echo Vulntotal Extension is packaged as %OUTPUT%
) else (
    echo Error: Failed to create the .crx file. Check Chrome output for errors.
)

pause
