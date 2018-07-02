#-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Script: SD Application Launcher V1.1.ps1
# Author: Alex Wardle, Helpdesk Specialist 1
# Date: 06/22/2018 10:53:15
# Keywords: Applications, Automation, Logon, Service Desk
# Version: 1.1
#-------------------------------------------------------------------------------------------------------------------------------------------------------------

[int]$xMenuChoiceA = 0
while ( $xMenuChoiceA -lt 1 -or $xMenuChoiceA -gt 4 ){
Write-host "1. Setup SD Applications to Start at Logon"
Write-host "2. Start SD Applications"
Write-host "3. Remove Start SD Applications for Running at Logon"
Write-host "4. Quit and Exit"
[Int]$xMenuChoiceA = read-host "Please enter an option 1 to 4..." }
Switch( $xMenuChoiceA )
{
  1{<Import-Module PSScheduledJob
		$U = Get-WMIObject -class Win32_ComputerSystem | select username
		$T = New-JobTrigger -AtLogOn -User $U
		Register-ScheduledJob -Name Start SD Applications at Logon -File "F:\My Documents\Service Desk Application Launcher\Batch Files\Start SD Apps V1.2.bat" -Trigger $T >}
  2{< Start -File "F:\My Documents\Service Desk Application Launcher\Batch Files\Start SD Apps V1.2.bat" >}
  3{<Unregister-ScheduledJob Start SD Applications at Logon>}
}