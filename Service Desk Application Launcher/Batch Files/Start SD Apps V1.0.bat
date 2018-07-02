@Echo Off

Start iexplore.exe

Timeout /t 2 /nobreak >nul

Start Chrome.exe

Timeout /t 2 /nobreak >nul

cd C:\ProgramData\Microsoft\AppV\Client\Integration\7CABB881-D789-4747-98F0-55DB0B1DAA3B\Root\VFS\ProgramFilesX86\Cherwell Software\Cherwell Service Management

Start Trebuchet.App.exe

Timeout /t 5 /nobreak >nul

cd \

Timeout /t 5 /nobreak >nul

Exit

