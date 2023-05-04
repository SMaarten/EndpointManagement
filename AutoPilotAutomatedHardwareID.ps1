#if NuGet can't be installed
#Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord
#Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord

$ProgressPreference=’SilentlyContinue’
Install-Module -Name WindowsAutoPilotIntune -Confirm:$false -Force
Install-module -Name AzureAD -Confirm:$false -Force
Install-Script -name get-windowsautopilotinfo -Force -Confirm:$false
Import-Module -Name WindowsAutoPilotIntune -Force
Import-Module -Name AzureAD -Force
Connect-MsGraph
$device=Get-WindowsAutoPilotInfo.ps1
$date=get-date -uFormat "%m/%d/%Y %H:%M%p"
$GroupTag='Imported via script on '+$date

Add-AutoPilotImportedDevice -serialNumber $device.'Device Serial Number' -hardwareIdentifier $device.'Hardware Hash' -groupTag $GroupTag