New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT" -Name "Printers"
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\" -Name "PointAndPrint"
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name "RestrictDriverInstallationToAdministrators" -Value "0" -PropertyType "DWORD"