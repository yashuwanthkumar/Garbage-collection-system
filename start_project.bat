@echo off
echo GARBAGE COLLECTION SYSTEM - STARTUP SCRIPT
echo ========================================
echo.

REM Check if XAMPP is installed in the default location
IF EXIST "C:\xampp\xampp-control.exe" (
    echo XAMPP detected!
    echo Please start Apache and MySQL from XAMPP Control Panel
    echo Then place this folder in C:\xampp\htdocs\
    echo Access the system at: http://localhost/gms/
    echo.
    echo Opening XAMPP Control Panel...
    START "" "C:\xampp\xampp-control.exe"
    GOTO END
)

REM Check if WAMP is installed in the default location
IF EXIST "C:\wamp64\wampmanager.exe" (
    echo WAMP64 detected!
    echo Please start Apache and MySQL from WAMP Manager
    echo Then place this folder in C:\wamp64\www\
    echo Access the system at: http://localhost/gms/
    echo.
    echo Opening WAMP Manager...
    START "" "C:\wamp64\wampmanager.exe"
    GOTO END
)

IF EXIST "C:\wamp\wampmanager.exe" (
    echo WAMP detected!
    echo Please start Apache and MySQL from WAMP Manager
    echo Then place this folder in C:\wamp\www\
    echo Access the system at: http://localhost/gms/
    echo.
    echo Opening WAMP Manager...
    START "" "C:\wamp\wampmanager.exe"
    GOTO END
)

echo No local server environment detected.
echo.
echo Please install one of the following:
echo 1. XAMPP - https://www.apachefriends.org/index.html
echo 2. WAMP - http://www.wampserver.com/en/
echo.
echo After installation:
echo 1. Start Apache and MySQL services
echo 2. Place this folder in your web server directory:
echo    - XAMPP: C:\xampp\htdocs\
echo    - WAMP: C:\wamp64\www\ or C:\wamp\www\
echo 3. Import database_setup.sql to create the database
echo 4. Access the system at: http://localhost/gms/

:END
pause