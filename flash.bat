@echo off
echo "Check your device port number (COM*) in Device Manager"
set /p port=Enter the port number your device is connected to :
set /p FirehoseFile=Enter the full path of your (prog_emmc_firehose_****.mbn) firehose file :
set /p partition=Enter the name of partition to flash :
set /p partitionPath=Enter the full path of your partition file :
set emmcdl=%~dp0emmcdl.exe

echo Flashing %partition%...
"%emmcdl%" -p %port% -f %FirehoseFile% -b %partition% %partitionPath%
pause
