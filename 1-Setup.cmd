@echo off
ECHO.
ECHO Kryptex tools for Karlsen
ECHO.
ECHO INITIAL SETUP
ECHO.
ECHO RUN NODE...
start /min cmd.exe /c "karlsend.exe --utxoindex"
timeout 10 > NUL
ECHO.
ECHO ==========================
ECHO SETUP WALLET...
karlsenwallet.exe create 
ECHO.
ECHO ==========================
ECHO RUN WALLET...
start /min cmd.exe /c "karlsenwallet.exe start-daemon"
timeout 10 > NUL
ECHO.
ECHO ==========================
karlsenwallet.exe dump-unencrypted-data
ECHO.
ECHO ==========================
karlsenwallet.exe new-address
ECHO.
ECHO COPY AND WRITE DOWN YOUR SEED PHRASE AND YOUR WALLET ADRESS BEFORE THEY DISAPPEAR!
ECHO.
ECHO CONSIDER USING KRYPTEX POOL
ECHO.
Taskkill /IM karlsend.exe /F > NUL
Taskkill /IM karlsenwallet.exe /F > NUL
pause
explorer "https://pool.kryptex.com/kls"
pause
pause
