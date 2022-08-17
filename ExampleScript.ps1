Write-Host -ForegroundColor Green "Starting OSDCloud ZTI"
Start-Sleep -Seconds 5

if ((Get-MyComputerModel) -match 'Virtual') {
Write-Host -ForegroundColor Green "Setting Display Resolution to 1600x"
Set-DisRes 1600
}

Write-Host -ForegroundColor Green "Start OSDCloud"
Start-OSDCloud -OSLanguage nb-no -ImageFileUrl 'https://vfksaendpointosdcloud001.blob.core.windows.net/public/Win10_LTSC2021.wim' -OSEdition Enterprise

Write-Host -ForegroundColor Green "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
