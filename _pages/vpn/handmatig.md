---
layout: page
parent: VPN

title: Handmatig
permalink: /vpn/handmatig

nav_exclude: true
---

Werkt het instellen van de VPN niet met de script methode zoals beschreven
staat op de [configureren](/vpn/configureren) pagina? Volg dan de onderstaande
stappen om de commando's uit het script handmatig uit te voeren.

---

1. Klik linksonder op het Windows icoontje en typ *PowerShell*

   ![Screenshot](/assets/img/vpn/start-menu.png)

   ![Screenshot](/assets/img/vpn/start-menu-search.png)

2. Klik met de rechtermuisknop op **PowerShell** en klik op
   **Run as Administrator** of **Voer uit als Administrator**

   ![Screenshot](/assets/img/vpn/start-menu-open.png)

3. Kopieer en plak het onderstaande eerste commando in het nieuwe PowerShell
   scherm en druk op enter:
   ```
   Add-VpnConnection -Name 'Lanlords VPN' -ServerAddress 'vpn.lanlords.nl' -TunnelType L2tp -AuthenticationMethod Chap -EncryptionLevel Optional -L2tpPsk 'lanlords' -SplitTunneling $True -RememberCredential -Confirm:$false -Force
   ```
   Kopieer en plak ook het onderstaande tweede commando in het nieuwe PowerShell
   scherm en druk op enter:
   ```
   Add-VpnConnectionRoute -ConnectionName "Lanlords VPN" -DestinationPrefix 192.168.1.0/24
   ```

   ![Screenshot](/assets/img/vpn/powershell-manual.png)

   Je kan het PowerShell scherm nu weer sluiten

5. De VPN connectie zou nu toegevoegd moeten zijn. Klik rechts onderin op het
   netwerk icoontje met de linker-muisknop

   ![Screenshot](/assets/img/vpn/taskbar-icon-marked.png)

   Vervolgens zou **Lanlords VPN** zichtbaar moeten zijn

   ![Screenshot](/assets/img/vpn/network-menu.png)

6. Klik op **Lanlords VPN** en daarna op **Connect** of **Verbinding maken**

   ![Screenshot](/assets/img/vpn/network-menu-selected.png)

7. Gebruik de onderstaande gegevens voor het verschenen inlogscherm

   * User name / Gebruikersnaam: `lanlords`
   * Password / Wachtwoord: `lanlords`

   ![Screenshot](/assets/img/vpn/network-menu-login.png)

8. Na een paar seconden zou er verbonden moeten zijn met de VPN server

   ![Screenshot](/assets/img/vpn/network-menu-connected.png)

---

Wil je testen of de VPN werkt en of je met de game servers kan verbinden? Kijk
dan op de [testen](/vpn/testen) pagina.
