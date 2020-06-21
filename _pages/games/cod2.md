---
layout: page
parent: Games

title: Call of Duty 2
permalink: /games/cod2
---

Installeer {{ page.title }}

### Versie

De versie die je moet hebben is: **{{ site.games.cod2.version }}**

### Download

Download [het zip bestand]({{ site.games.cod2.download }}) met alle installatie bestanden.

### Installatie

1. Mount de `install.iso` iso
2. Volg de installatie stappen en gebruik de key uit `serial.txt`.
3. Patch het spel naar v1.3 door `patch_1.3.exe` te openen.

### Bekende problemen

**Zwart scherm crash**

Als Call of Duty 2 niet start op Windows 10 en direct na het starten (met een zwart scherm) weer crashed kan je de volgende twee dingen proberen:

_1. Mini Jack inpluggen_

Voordat je het spel start, plug een mini headphone jack (zoals bij een microfoon of normale oortjes), zoals deze:

![Screenshot](/assets/img/mini-jack.jpg)

in de microfoon poort van je computer. Deze is meestal roze gekleurd en staat er een microfoon icoontje bij, zoals de middelste poort van het onderstaande plaatje:

![Screenshot](/assets/img/audio-ports.jpg)

De mini jack hoef je alleen maar ingeprikt te hebben bij het opstarten, daarna kan je deze weer uit je computer halen.

_2. Direct Play installeren_

Controleer of "DirectPlay" is geinstalleerd. Klik op start en type "turn windows features on or off". Of ga naar Control Panel, Programs and Features and klik op Turn windows features on or off.

Klik vervolgens in het vakje voor "DirectPlay" en klik op "OK".

![Screenshot](/assets/img/windows-features-direct-play.jpg)

---

**999 Ping Bug**

Soms komt voor dat een of meerdere spelers in een game een ping krijgen van 999 en dan op een gegeven moment uit de server worden ge-kicked. Als dit is gebeurd dan is de ronde meestal al even bezig (15/20 minuten).

Het lijkt er op dat als dit gebeurd er veel smokes zijn gegooid in de map. Op dit moment is er geen oplossing voor, gezien dit een bug lijkt in de Call of Duty 2 server.

Als dit gebeurt is het volgende te zien in de log van de Call of Duty 2 server:
```
FF|Popeye: Delta request from out of date entities.
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
Going to CS_ZOMBIE for FF|Popeye
12:FF|Popeye EXE_DISCONNECTED
Going from CS_ZOMBIE to CS_FREE for
SV_DirectConnect()
Client 21 connecting with 0 challenge ping from 192.168.1.17:28960
Connecting player #12 has a zero GUID
Going from CS_FREE to CS_CONNECTED for  (num 12 guid 0)
FF|Popeye : dropped gamestate, resending
SV_SendClientGameState() for FF|Popeye
Going from CS_CONNECTED to CS_PRIMED for FF|Popeye
Sending 8787 bytes in gamestate to client: 12
Going from CS_PRIMED to CS_ACTIVE for FF|Popeye

Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:

FF|Popeye: Delta request from out of date entities.
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
...
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
FF|Popeye: Delta request from out of date entities.
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
...
Giving FF|Popeye a 999 ping - >999 calculated ping:
Giving FF|Popeye a 999 ping - >999 calculated ping:
```
