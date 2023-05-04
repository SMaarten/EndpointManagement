# Install IntuneBackupAndRestore from the PowerShell Gallery / Run each line separatly
Install-Module -Name Microsoft.Graph.Intune
Connect-MSGraph
Import-Module IntuneBackupAndRestore
Install-Module -Name IntuneBackupAndRestore

# Full Intune backup
Start-IntuneBackup -Path C:\temp\IntuneBackupTraject

#Full Intune restore
Start-IntuneRestoreConfig -Path C:\temp\IntuneBackupTraject