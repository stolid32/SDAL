@Echo Off

Rem Below is starting Internet Explorer

Start iexplore.exe

Timeout /t 2 /nobreak >nul

Rem Below is starting Chrome

Start Chrome.exe

Timeout /t 2 /nobreak >nul

Rem Below is starting Outlook

Start outlook.exe

Timeout /t 2 /nobreak >nul

Start notepad.exe

Timeout /t 2 /nobreak >nul

Rem Below is Changing the directory to the location of MyServiceCenter

cd C:\ProgramData\Microsoft\AppV\Client\Integration\7CABB881-D789-4747-98F0-55DB0B1DAA3B\Root\VFS\ProgramFilesX86\Cherwell Software\Cherwell Service Management

Rem Below is starting MyServiceCenter

Start Trebuchet.App.exe

Exit

