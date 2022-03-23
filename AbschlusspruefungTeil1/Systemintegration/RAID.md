# RAID - Redundant array of independent disks

## RAID 0
- Keine Datenredundanz
- Beim Ausfall einer Festplatte sind die Daten unbrauchbar
- Parallele Schreib- und Lesezugriffe => Hohe Transferrate
- Nettokapazität = 100%
- Hohe Verfügbarkeit

![RAID 0 Image](../../Assets/AbschlusspruefungTeil1/RAID_0.svg)

<br>

## RAID 1
- Volle Redundanz
- Daten werden gespiegelt gespeichert
- Parallele Lesezugriffe => Lesegeschwindigkeit hoch
- Nettokapazität = 50%
- Die Anzahl der Festplatten, die Ausfallen dürfen, hängt von der Anzahl der Festplatten und der Position dieser ab
- Der Anteil des nutzbaren Speicherplatzes sinkt stark

![RAID 1 Image](../../Assets/AbschlusspruefungTeil1/RAID_1.svg)

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

![RAID 5 Image](../../Assets/AbschlusspruefungTeil1/RAID_5.svg)

<br>

## RAID 6

<br>

## RAID 10

<br>

## Links