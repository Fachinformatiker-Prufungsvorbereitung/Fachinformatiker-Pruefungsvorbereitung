---
title: "RAID - Redundant array of independent disks"
date: 2022-08-24T23:02:47-06:00
draft: false
type: docs
---

## RAID 0

- Keine Datenredundanz
- Beim Ausfall einer Festplatte sind die Daten unbrauchbar
- Parallele Schreib- und Lesezugriffe => Hohe Transferrate
- Nettokapazität = 100%
- Hohe Verfügbarkeit

![RAID 0 Image](/Assets/AbschlusspruefungTeil1/RAID_0.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_0.svg)

<br>

## RAID 1

- Volle Redundanz
- Daten werden gespiegelt gespeichert
- Parallele Lesezugriffe => Lesegeschwindigkeit hoch
- Nettokapazität = 50%
- Die Anzahl der Festplatten, die Ausfallen dürfen, hängt von der Anzahl der Festplatten und der Position dieser ab
- Der Anteil des nutzbaren Speicherplatzes sinkt stark

![RAID 1 Image](/Assets/AbschlusspruefungTeil1/RAID_1.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_1.svg)

<br>

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

![RAID 5 Image](/Assets/AbschlusspruefungTeil1/RAID_5.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_5.svg)

<br>

## RAID 6

- Minimum vier Festplatten
- Ähnlich zu RAID 5
- Besitzt zwei Parity-Parts
- Es können zwei Festplatten ausfallen

![RAID 6 Image](/Assets/AbschlusspruefungTeil1/RAID_6.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_6.svg)

<br>

## RAID 10

- Kombination aus RAID 1 und RAID 0
- Versuch die Stärken der beiden Systeme zu vereinen

![RAID 10 Image](/Assets/AbschlusspruefungTeil1/RAID_10.svg)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:RAID_10.svg)

<br>

## Links

[Das RAID System RAID 0,1,5 knackig erklärt](https://www.youtube.com/watch?v=IM5aXVXh2Jo)  
[RAID 6 erklärt | QNP 115 | #Basics15](https://www.youtube.com/watch?v=0H2nvtuY8cg)  
[Erklärung des RAID-Levels RAID 10 (deutsch)](https://www.youtube.com/watch?v=Lw76leQOUdg)  
[IONOS Guide RAID 6](https://www.ionos.de/digitalguide/server/sicherheit/raid-6/)  
[IONOS Guide RAID 10](https://www.ionos.de/digitalguide/server/sicherheit/raid-10/)
