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