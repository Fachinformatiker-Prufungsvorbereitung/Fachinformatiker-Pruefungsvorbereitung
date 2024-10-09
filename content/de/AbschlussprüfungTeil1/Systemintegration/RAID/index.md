---
title: "RAID - Redundant array of independent disks"
date: 2022-08-24T23:02:47-06:00
draft: false
type: docs
description: "RAID oder Redundant array of independent disks dient der Ausfallsicherheit und / oder der Performance von Speichern."
---

## RAID 0

- Keine Datenredundanz
- Beim Ausfall einer Festplatte sind die Daten unbrauchbar
- Parallele Schreib- und Lesezugriffe => Hohe Transferrate
- Nettokapazität = 100%
- Hohe Verfügbarkeit

![RAID 0 Image](./RAID_0.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_0.svg)

## RAID 1

- Volle Redundanz
- Daten werden gespiegelt gespeichert
- Parallele Lesezugriffe => Lesegeschwindigkeit hoch
- Nettokapazität = 50%
- Die Anzahl der Festplatten, die Ausfallen dürfen, hängt von der Anzahl der Festplatten und der Position dieser ab
- Der Anteil des nutzbaren Speicherplatzes sinkt stark

![RAID 1 Image](./RAID_1.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_1.svg)

## RAID 5

- Striping Verfahren
- Parity Verfahren
- Datenredundanz
- Lesegeschwindigkeit sehr hoch (Ermöglicht durch das Striping Verfahren)
- Schreibgeschwindigkeit leicht verringert (Durch die Berechnung der Parity-Parts)
- Minimum drei Festplatten
- Die Nettokapazität verringert sich immer um eine Festplatte => Je mehr Festplatten desto besser die Effizienz
- Hohe Verfügbarkeit
- Relativ großer Nettospeicherplatz

![RAID 5 Image](./RAID_5.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_5.svg)

## RAID 6

- Minimum vier Festplatten
- Ähnlich zu RAID 5
- Besitzt zwei Parity-Parts
- Es können zwei Festplatten ausfallen

![RAID 6 Image](./RAID_6.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_6.svg)

## RAID 10

- Kombination aus RAID 1 und RAID 0
- Versuch die Stärken der beiden Systeme zu vereinen

![RAID 10 Image](./RAID_10.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_10.svg)

## Hot-spare-Festplatten
Eine Hot-spare-Festplatte ist eine nicht genutzte Festplatte in einem RAID-System. Falls eine Festplatte im RAID-System ausfällt, übernimmt die Hot-spare-Festplatte im laufenden Betrieb die Rolle der defekten Festplatte.

## Erklärungsvideos 📹

### RAID einfach erklärt

{{< youtube WzWUChLeGBc >}}

### RAID 6 erklärt

{{< youtube 0H2nvtuY8cg >}}

### RAID 10 erklärt

{{< youtube Lw76leQOUdg >}}

## Links 🔗

[IONOS Guide RAID 6](https://www.ionos.de/digitalguide/server/sicherheit/raid-6/)  
[IONOS Guide RAID 10](https://www.ionos.de/digitalguide/server/sicherheit/raid-10/)
