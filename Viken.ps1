    0 {
        Write-Host  -ForegroundColor Yellow "Starter Viken Windows 11 tanking..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloud -Firmware -OSLanguage nb-no -OSVersion 'Windows 11' -OSBuild 21H2 -OSEdition Pro -OSLicense Retail -ZTI
      }
    1 {
        Write-Host  -ForegroundColor Yellow "Starter Viken Windows 10 tanking..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloud -Firmware -OSLanguage nb-no -OSVersion 'Windows 10' -OSBuild 21H2 -OSEdition Pro -OSLicense Retail -ZTI
      }
    2 {
        Write-Host  -ForegroundColor Yellow "Starter Viken Windows 10 LTSC tanking..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloud -Firmware -ImageFileUrl 'https://vfksaendpointosdcloud001.blob.core.windows.net/public/Win10_LTSC2021.wim' -ZTI
      }
    3 {
        Write-Host  -ForegroundColor Yellow "Starter Windows 11 Pro tanking..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloud -Firmware -OSLanguage nb-no -OSVersion 'Windows 11' -OSBuild 21H2 -OSEdition Pro -OSLicense Retail -ZTI -SkipAutopilot
      }
    4 {
        Write-Host  -ForegroundColor Yellow "Starter OSDCloud GUI..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloudGui -Brand "Viken fylkeskommune"
      }
    5 {
        Write-Host  -ForegroundColor Yellow "Starter OSDCloud GUI (dev)..."
        RemoveUSBDrive
        $null = QueueIntuneRemoval
        Start-OSDCloudGuiDev -Brand "Viken fylkeskommune"
       }