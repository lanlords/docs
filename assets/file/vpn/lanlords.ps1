if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
Add-VpnConnection -Name 'Lanlords VPN' -ServerAddress 'vpn.lanlords.nl' -TunnelType L2tp -AuthenticationMethod Chap -EncryptionLevel Optional -L2tpPsk 'lanlords' -SplitTunneling $True -RememberCredential -Confirm $true
Add-VpnConnectionRoute -ConnectionName "Lanlords VPN" -DestinationPrefix 192.168.1.0/24
