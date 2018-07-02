#-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Script: SD Application Launcher V1.3.ps1
# Author: Alex Wardle, Helpdesk Specialist 1
# Date: 06/22/2018 10:53:15
# Keywords: Applications, Automation, Logon, Service Desk
# Version: 1.3
#-------------------------------------------------------------------------------------------------------------------------------------------------------------

# Import Module Section
    Import-Module PSScheduledJob


# Start Of SDAL GUI

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#region begin GUI{ 

$SDAL                            = New-Object system.Windows.Forms.Form
$SDAL.ClientSize                 = '384,350'
$SDAL.text                       = "Service Desk Application Auto Launcher "
$SDAL.BackColor                  = "#ffffff"
$SDAL.Icon                       = ".\SDAL.ico"
$SDAL.TopMost                    = $false

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Start SDA At logon Is Not Working Yet/Permissions Issue"
$Button1.width                   = 358
$Button1.height                  = 33
$Button1.location                = New-Object System.Drawing.Point(11,15)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Start Service Desk Applications Now"
$Button2.width                   = 358
$Button2.height                  = 33
$Button2.location                = New-Object System.Drawing.Point(11,56)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Remove Start SD Applications from Running At Logon"
$Button3.width                   = 358
$Button3.height                  = 33
$Button3.location                = New-Object System.Drawing.Point(11,98)
$Button3.Font                    = 'Microsoft Sans Serif,10'

$ListBox1                        = New-Object system.Windows.Forms.ListBox
$ListBox1.text                   = "listBox"
$ListBox1.width                  = 358
$ListBox1.height                 = 200
$ListBox1.Cursor                 = [System.Windows.Forms.Cursors]::Arrow
$ListBox1.location               = New-Object System.Drawing.Point(14,139)


$SDAL.controls.AddRange(@($Button1,$Button2,$Button3,$ListBox1))


#region gui events {
$Button1.Add_Click({ ALogon })
$Button2.Add_Click({ StartA })
$Button3.Add_Click({ RLogon })
$Button1.Add_GiveFeedback({ Done })
$Button2.Add_GiveFeedback({ Done })
$Button3.Add_GiveFeedback({ Done })
#endregion events }


#endregion GUI }



#Powershell code is Commented out below



    Function ALogon(){
            $ListBox1.Items.Add("Getting Username for Task Scheduler")
		    #$U = Get-WMIObject -class Win32_ComputerSystem | select username
            Start-Sleep -s 2
            $ListBox1.Items.Add("Creating a At Logon Trigger for SDAL")
		    #$T = New-JobTrigger -AtLogOn -User $U
            Start-Sleep -s 2
            $ListBox1.Items.Add("Creating Scheduled Job in Task Scheduler")
		    #Register-ScheduledJob -Name "Start SD Applications at Logon" -File ".\Start SD Apps V1.2.ps1" -Trigger $T 
            $ListBox1.Items.Add("Done")
            $ListBox1.Items.Add("Exiting")
            $E
            $IC
            $AE
           
            
        }



     Function StartA(){
            #Starting Service Desk Applications
             {  

            $ListBox1.Item.Clear();

            $ListBox1.Items.Add( "Starting Internet Explorer");

            #Start iexplore.exe

            #Start-Sleep -s 2

            $ListBox1.Items.Add( "Starting Chrome");

            #Start Chrome.exe

            #Start-Sleep -s 2

            $ListBox1.Items.Add( "Starting Outlook");

            #Start outlook.exe

            #Start-Sleep -s 2

            $ListBox1.Items.Add( "Starting Notepad");

            #Start notepad.exe

            #Start-Sleep -s 2

            $ListBox1.Items.Add( "Changing the directory to the location of MyServiceCenter");
            
            #cd "C:\ProgramData\Microsoft\AppV\Client\Integration\7CABB881-D789-4747-98F0-55DB0B1DAA3B\Root\VFS\ProgramFilesX86\Cherwell Software\Cherwell Service Management"

            $ListBox1.Items.Add( "Starting MyServiceCenter");

            #Start Trebuchet.App.exe

            $ListBox1.Items.Add( "Exiting");
            
            $IC
            $E
            $AE

            $ListBox1.Items.Clear();
}
        }

     Function RLogon(){
            #Removes SDAL from Task Scheduler
            Unregister-ScheduledJob Start SD Applications at Logon
        }

         Function Done(){
            
            $ListBox1.Items.Add( "Completed")
            $E
            $IC
            $AE

        }

[void]$SDAL.ShowDialog()

$E = Exit
$AE = Application.Exit;
$IC = $ListBox1.Items.Clear(); 