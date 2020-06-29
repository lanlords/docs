## Lanlords Configure script


# Elevate to Administrator permissions
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
  Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit
}


# output status to console
Write-Host "=> De Lanlords VPN connectie wordt opgezet .."
Start-Sleep -Seconds 1

# Configure Lanlords VPN
Add-VpnConnection -Name 'Lanlords VPN' -ServerAddress 'vpn.lanlords.nl' -TunnelType L2tp -AuthenticationMethod Chap -EncryptionLevel Optional -L2tpPsk 'lanlords' -SplitTunneling $True -RememberCredential -Confirm:$false -Force

# output status to console
Write-Host "=> De Lanlords routes worden ingesteld .."
Start-Sleep -Seconds 1

# Force specific Lanlords routes
Add-VpnConnectionRoute -ConnectionName "Lanlords VPN" -DestinationPrefix 192.168.1.0/24

# output status to console
Write-Host "=> De Lanlords VPN is geconfigureerd. Volg de rest van de stappen op docs.lanlords.nl"
Start-Sleep -Seconds 4
