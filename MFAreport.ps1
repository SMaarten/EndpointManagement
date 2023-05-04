Connect-MsolService
Import-Module psmfastatereport
$MFAData = Get-MFAState -AllUsers
New-MFAReport -InputObject $mfadata -ReportDirectory 'C:\temp\mfareport\Stokerij'