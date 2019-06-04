                      ECHO OFF
CLS
:MENU
ECHO.
ECHO.
ECHO.
ECHO ................................................
ECHO Please Select The Mod You Wish to Customise.
ECHO Note that the mods original settings will be 
ECHO preserved when you disable it. You cannot
ECHO enable a mod you never disabled!
ECHO ................................................
ECHO This file MUST be run from the BATTLETECH directory!
ECHO You can find this directory easily by going to Battletech
ECHO on Steam - Properties - Local Files - Browse Local Files
ECHO ................................................
ECHO Written by Edmon - www.youtube.com/TheEdmon
ECHO.
ECHO 1 - IttyBitty Cargo - Disable
ECHO 2 - IttyBitty Cargo - Enable
ECHO 3 - Disorderly Withdrawal - Disable
ECHO 4 - Disorderly Withdrawal - Enable
ECHO 5 - Disable ALL Mods
ECHO 6 - Restore ALL Mods
ECHO 7 - Adjust LowVisibility
ECHO ................................................
ECHO You can type "Exit" to quit this application directly
ECHO.
SET /P M=Type a number and then press ENTER:
IF %M%==1 GOTO KILLITTYBITTY
IF %M%==2 GOTO RESTOREITTYBITTY
IF %M%==3 GOTO KILLDISORDER
IF %M%==4 GOTO RESTOREDISORDER
IF %M%==5 GOTO KILLMODS
IF %M%==6 GOTO RESTOREMODS
IF %M%==7 GOTO ADJUSTVIS
IF %M%==Exit GOTO EOF
GOTO MENU
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
:ADJUSTVIS
ECHO.
ECHO ................................................
ECHO We will now back up the original settings.
ECHO Note, the original settings backup will never be changed
ECHO after this moment so you can always restore them
ECHO ................................................
Pause 10
robocopy .\Mods\LowVisibility\ .\EMCSettings\LowVisibilityOriginalSettings mod.json /XO /XN /XC
ECHO File copied = Backup Successful. File skipped = Backup Present Already.
Pause 10
ECHO .
ECHO .
ECHO .
ECHO .
ECHO ................................................
ECHO You can change settings for the low visibility mod here.
ECHO Note that the mods original settings have been preserved.
ECHO Settings kindly provided by Sentinel.
ECHO ................................................
ECHO You cannot disable low visibility typically, so do not try.
ECHO Changes are labeled relative to the default settings of the
ECHO framework. MU refers to the bonus or penalty you get to 
ECHO your detection roll. S is Sensors and V is Vision range.
ECHO ................................................
ECHO Low Visibility was made by Frost Raptor
ECHO https://github.com/BattletechModders/LowVisibility#sensor-detection
ECHO ................................................
Pause 10
ECHO .
ECHO .
ECHO .
ECHO .
ECHO ................................................
ECHO Type the code you want, E.G. "L6" and then press ENTER:
ECHO ................................................
ECHO L1 - MU-1x V1.00x S1.35x
ECHO L2 - MU-1x V1.35x S1.35x
ECHO L3 - MU-1x V2.00x S1.00x - Pode's Recommendation
ECHO L4 - MU-1x V2.00x S2.00x
ECHO L5 - MU2x V1.00x S1.00x
ECHO L6 - MU2x V1.35x S1.00x - Sentinel's Recommendation
ECHO L7 - MU2x V1.35x S1.35
ECHO L8 - MU2x V2.00x S1.00x
ECHO L9 - MU2x V2.00x S1.35x
ECHO L10 - MU2x V2.00x S2.00x
ECHO L11 - MU5x V1.00x S1.00x
ECHO L12 - MU5x V1.35x S1.00x
ECHO L13 - MU5x V1.35x S1.35x
ECHO L14 - MU5x V2.00x S1.00x
ECHO L15 - MU5x V2.00x S1.35x
ECHO L16 - MU5x V2.00x S2.00x
ECHO L17 - Return to Main Menu
ECHO L18 - Restore Original Settings
ECHO ................................................
ECHO You can type "Exit" to quit this application directly
ECHO.
SET /P M=Type a code and then press ENTER:
IF %M%==L1 GOTO L1
IF %M%==L2 GOTO L2
IF %M%==L3 GOTO L3
IF %M%==L4 GOTO L4
IF %M%==L5 GOTO L5
IF %M%==L6 GOTO L6
IF %M%==L7 GOTO L7
IF %M%==L8 GOTO L8
IF %M%==L9 GOTO L9
IF %M%==L10 GOTO L10
IF %M%==L11 GOTO L11
IF %M%==L12 GOTO L12
IF %M%==L13 GOTO L13
IF %M%==L14 GOTO L14
IF %M%==L15 GOTO L15
IF %M%==L16 GOTO L16
IF %M%==L17 GOTO MENU
IF %M%==L18 GOTO L18
IF %M%==Exit GOTO EOF
ECHO You have entered an invalid code, this application will abort to the main menu
Pause 10
GOTO MENU
:L1
robocopy .\EMCSettings\LowVisSettings\MU-1V1.00S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L2
robocopy .\EMCSettings\LowVisSettings\MU-1V1.35S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L3
robocopy .\EMCSettings\LowVisSettings\MU-1V2.00S1.00Pode\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L4
robocopy .\EMCSettings\LowVisSettings\MU-1V2.00S2.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L5
robocopy .\EMCSettings\LowVisSettings\MU2V1.00S1.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L6
robocopy .\EMCSettings\LowVisSettings\MU2V1.35S1.00Sentinel\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L7
robocopy .\EMCSettings\LowVisSettings\MU2V1.35S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L8
robocopy .\EMCSettings\LowVisSettings\MU2V2.00S1.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L9
robocopy .\EMCSettings\LowVisSettings\MU2V2.00S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L10
robocopy .\EMCSettings\LowVisSettings\MU2V2.00S2.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L11
robocopy .\EMCSettings\LowVisSettings\MU5V1.00S1.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L12
robocopy .\EMCSettings\LowVisSettings\MU5V1.35S1.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L13
robocopy .\EMCSettings\LowVisSettings\MU5V1.35S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L14
robocopy .\EMCSettings\LowVisSettings\MU5V2.00S1.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L15
robocopy .\EMCSettings\LowVisSettings\MU5V2.00S1.35\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L16
robocopy .\EMCSettings\LowVisSettings\MU5V2.00S2.00\ .\Mods\LowVisibility\ mod.json
ECHO The settings have been updated
Pause 10
GOTO MENU
:L17
GOTO MENU
:L18
robocopy .\EMCSettings\LowVisibilityOriginalSettings\ .\Mods\LowVisibility\ mod.json
ECHO The original settings have been restored
Pause 10
GOTO MENU