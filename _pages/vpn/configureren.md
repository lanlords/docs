---
layout: page
parent: VPN

title: Configureren
permalink: /vpn/configureren

nav_exclude: true
---

Volg de onderstaande stappen om de Lanlords VPN in te stellen. Werkt het script
niet, dan kan je de stappen uit het script ook handmatig uitvoeren door de stappen
op de [handmatig](/vpn/handmatig) pagina te volgen.

---

1. Download het setup script: [lanlords.ps1](/assets/file/vpn/lanlords.ps1)

2. Ga naar de plek waar je het script hebt opgeslagen, klik met de rechter-
   muisknop op het script en klik op: **Run with PowerShell**

   ![Screenshot](/assets/img/vpn/run-with-powershell.png)

3. Bij de melding met de vraag of je door wilt gaan, klik op **Yes** of **Ja**

   ![Screenshot](/assets/img/vpn/uac-prompt.png)

4. Als het goed is verschijnt er nu een blauw (PowerShell) venster. De VPN wordt
   nu ingesteld. Het venster sluit vervolgens vanzelf weer

   ![Screenshot](/assets/img/vpn/powershell-forced.png)

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

8. Na een paar seconden zou er verbinding moeten zijn met de VPN server

   ![Screenshot](/assets/img/vpn/network-menu-connected.png)

---

Wil je testen of de VPN werkt en of je met de game servers kan verbinden? Kijk
dan op de [testen](/vpn/testen) pagina.
