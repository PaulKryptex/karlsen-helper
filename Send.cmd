@echo off
ECHO.
ECHO Kryptex tools for Karlsen
ECHO.
ECHO SEND FUNDS
ECHO.
ECHO THIS CMD SHOULD BE RUN WHEN NODE AND WALLET ARE RUNNING AND SYNCED
ECHO.
set /p wallet=Enter wallet:
set /p sum=Enter sum:
karlsenwallet.exe send -t %wallet% -v %sum%

pause