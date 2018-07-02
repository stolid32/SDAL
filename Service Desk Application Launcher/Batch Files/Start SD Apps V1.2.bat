@Echo Off

Echo Starting Internet Explorer

Start iexplore.exe

Timeout /t 2 /nobreak >nul

Echo Starting Chrome

Start Chrome.exe

Timeout /t 2 /nobreak >nul

Echo Starting Outlook

Start outlook.exe

Timeout /t 2 /nobreak >nul

Echo Starting Notepad

Start notepad.exe

Timeout /t 2 /nobreak >nul

Echo Changing the directory to the location of MyServiceCenter

cd C:\ProgramData\Microsoft\AppV\Client\Integration\7CABB881-D789-4747-98F0-55DB0B1DAA3B\Root\VFS\ProgramFilesX86\Cherwell Software\Cherwell Service Management

Echo Starting MyServiceCenter

Start Trebuchet.App.exe

Echo Exting

Exit

