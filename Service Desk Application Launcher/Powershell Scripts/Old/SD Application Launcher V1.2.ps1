#-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Script: SD Application Launcher V1.2.ps1
# Author: Alex Wardle, Helpdesk Specialist 1
# Date: 06/22/2018 10:53:15
# Keywords: Applications, Automation, Logon
# Version: 1.2
#-------------------------------------------------------------------------------------------------------------------------------------------------------------

# Import Module Section
 Import-Module PSScheduledJob


# Start Of Menu System

Clear

$menu=@"
    1 Start Service Desk Applications At logon NOT WORKING YET DUE TO PERMISSONS ISSUE
    2 Start Service Desk Applications Now
    3 Remove Start SD Applications from Running at Logon
    Q Quit

Select a task by number or Q to Quit
"@

Write-Host "Service Desk Application Launcher" -ForegroundColor Cyan
$r= Read-Host $menu

Switch ($r) {
    "1" {
            Write-Host "Adding Task for Starting the SD Applications at Logon" -ForegroundColor Cyan

       
		    $U = Get-WMIObject -class Win32_ComputerSystem | select username
		    $T = New-JobTrigger -AtLogOn -User $U
		    Register-ScheduledJob -Name "Start SD Applications at Logon" -File "Start SD Apps V1.2.ps1" -Trigger $T 
        }

    "2" {
            Write-Host "Starting Service Desk Applications" -ForegroundColor Cyan

             {  

            Write-Host "Starting Internet Explorer"

            Start iexplore.exe

            Start-Sleep -s 2

            Write-Host "Starting Chrome"

            Start Chrome.exe

            Start-Sleep -s 2

            Write-Host "Starting Outlook"

            Start outlook.exe

            Start-Sleep -s 2

            Write-Host "Starting Notepad"

            Start notepad.exe

            Start-Sleep -s 2

            Write-Host "Changing the directory to the location of MyServiceCenter"

            cd "C:\ProgramData\Microsoft\AppV\Client\Integration\7CABB881-D789-4747-98F0-55DB0B1DAA3B\Root\VFS\ProgramFilesX86\Cherwell Software\Cherwell Service Management"

            Write-Host "Starting MyServiceCenter"

            Start Trebuchet.App.exe

            Write-Host "Exiting"

            Exit
}
        }

    "3" {
            Write-Host "Remove Start SD Applications from Running at Logon" -ForegroundColor Cyan

            Unregister-ScheduledJob Start SD Applications at Logon
        }

    "Q" {
            Write-Host "Quitting" -ForegroundColor Red
        }

    default { 
            Write-Host "Please Make a Selection" -ForegroundColor Yellow
            }
        } #End Switch