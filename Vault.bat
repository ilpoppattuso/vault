cls

@ECHO OFF

title Folder Vault

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST Vault goto MDLOCKER

:CONFIRM
echo .
echo  8b           d8                         88           
echo  `8b         d8'                         88    ,d     
echo   `8b       d8'                          88    88     
echo    `8b     d8'  ,adPPYYba,  88       88  88  MM88MMM  
echo     `8b   d8'   ""     `Y8  88       88  88    88     
echo      `8b d8'    ,adPPPPP88  88       88  88    88     
echo       `888'     88,    ,88  "8a,   ,a88  88    88,    
echo        `8'      `"8bbdP"Y8   `"YbbdP'Y8  88    "Y888
echo .                                              

echo lock Vault? (y/n)

set/p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto END

if %cho%==N goto END

echo Invalid choice.

goto CONFIRM

:LOCK

ren Vault "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

echo Vault locked

goto End

:UNLOCK

echo .
echo  8b           d8                         88           
echo  `8b         d8'                         88    ,d     
echo   `8b       d8'                          88    88     
echo    `8b     d8'  ,adPPYYba,  88       88  88  MM88MMM  
echo     `8b   d8'   ""     `Y8  88       88  88    88     
echo      `8b d8'    ,adPPPPP88  88       88  88    88     
echo       `888'     88,    ,88  "8a,   ,a88  88    88,    
echo        `8'      `"8bbdP"Y8   `"YbbdP'Y8  88    "Y888
echo .                                              
                                                     
echo enter here the password

set/p "pass=>"

if NOT %pass%==ENTER-YOUR-PASSWORD-THERE goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Vault

echo Vault Unlocked successfully

goto End

:FAIL

echo Invalid password

goto end

:MDLOCKER

md Vault

echo Vault created successfully

goto End

:End