@echo off
REM Modded Fishing Auto-Clicker - ONE COMMAND BUILD
REM Just run this file and the JAR will be built!

cls
echo.
echo ====================================================
echo   MODDED FISHING AUTO-CLICKER - BUILD TOOL
echo ====================================================
echo.

REM Check Java
echo Checking Java...
java -version >nul 2>&1
if errorlevel 1 (
    echo.
    echo ERROR: Java is not installed!
    echo.
    echo Please download Java from:
    echo https://www.java.com/download/
    echo.
    pause
    exit /b 1
)

echo Java found. Building mod...
echo.
echo This will take 5-15 minutes on first build.
echo Please be patient...
echo.

REM Build
call gradlew.bat build

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ====================================================
    echo   SUCCESS! JAR CREATED
    echo ====================================================
    echo.
    echo Your JAR file is ready:
    echo.
    echo   build\libs\moddedfishing-1.0.0.jar
    echo.
    echo Next steps:
    echo 1. Copy the JAR to: %%appdata%%\.minecraft\mods\
    echo 2. Launch Minecraft with Forge
    echo 3. Press F while fishing to auto-click!
    echo.
    pause
) else (
    echo.
    echo BUILD FAILED
    echo Check error messages above
    echo.
    pause
    exit /b 1
)
