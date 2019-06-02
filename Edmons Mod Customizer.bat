                      ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO Please Select The Mod You Wish to Customise.
ECHO Note that the mods original settings will be 
ECHO preserved when you disable it. You cannot
ECHO enable a mod you never disabled!
ECHO ...............................................
ECHO This file MUST be run from the BATTLETECH directory!
ECHO You can find this directory easily by going to Battletech
ECHO on Steam - Properties - Local Files - Browse Local Files
ECHO ...............................................
ECHO Written by Edmon - www.youtube.com/TheEdmon
ECHO.
ECHO 1 - IttyBitty Cargo - Disable
ECHO 2 - IttyBitty Cargo - Enable
ECHO 3 - Disorderly Withdrawal - Disable
ECHO 4 - Disorderly Withdrawal - Enable
ECHO 5 - Disable ALL Mods
ECHO 6 - Restore ALL Mods
ECHO 7 - EXIT
ECHO.
SET /P M=Type a number and then press ENTER:
IF %M%==1 GOTO KILLITTYBITTY
IF %M%==2 GOTO RESTOREITTYBITTY
IF %M%==3 GOTO KILLDISORDER
IF %M%==4 GOTO RESTOREDISORDER
IF %M%==5 GOTO KILLMODS
IF %M%==6 GOTO RESTOREMODS
IF %M%==7 GOTO EOF
:KILLITTYBITTY
ECHO Backing Up IttyBittyLivingSpace
pause 10
robocopy .\Mods\IttyBittyLivingSpace .\IttyBittyLivingSpaceDisabled /MOVE /E
ECHO No Error? = Backup Completed Successfully
ECHO IttyBittyLivingSpace is now disabled
pause 10
GOTO MENU
:RESTOREITTYBITTY
ECHO Restoring Disorderly Withdrawal From Backup
pause 10
robocopy .\IttyBittyLivingSpaceDisabled .\Mods\IttyBittyLivingSpace /MOVE /E
ECHO No Error? = Restore Completed Successfully
ECHO IttyBittyLivingSpace is now enabled
pause 10
GOTO MENU
:KILLDISORDER
ECHO Backing Up Disorderly Withdrawal
pause 10
robocopy .\Mods\DisorderlyWithdrawal .\DisorderlyWithdrawlDisabled /MOVE /E
ECHO No Error? = Backup Completed Successfully
ECHO Disorderly Withdrawal is now disabled
pause 10
GOTO MENU
:RESTOREDISORDER
ECHO Restoring Disorderly Withdrawal From Backup
pause 10
robocopy .\DisorderlyWithdrawlDisabled .\Mods\DisorderlyWithdrawal /MOVE /E
ECHO No Error? = Restore Completed Successfully
ECHO Disorderly Withdrawal is now enabled
pause 10
GOTO MENU
:KILLMODS
ECHO Backing Up All Mods
pause 10
robocopy .\Mods .\ModsDisabled /MOVE /E
ECHO No Error? = Backup Completed Successfully
ECHO All mods are now disabled
pause 10
GOTO MENU
:RESTOREMODS
ECHO Restoring All Mods From Backup
pause 10
robocopy .\ModsDisabled .\Mods /MOVE /E
ECHO No Error? = Restore Completed Successfully
ECHO Disorderly Withdrawal is now enabled
pause 10
GOTO MENU