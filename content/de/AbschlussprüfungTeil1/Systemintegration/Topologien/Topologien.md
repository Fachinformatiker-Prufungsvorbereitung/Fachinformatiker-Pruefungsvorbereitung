---
title: "Netzwerktopologien"
date: 2024-08-30T11:26:22-06:00
draft: false
type: docs
description: "Netzwerktopologien sind die physische und logische Struktur eines Netzwerks."
---

## Netzwerktopologien

| Topologie                                    | Beschreibung                                                                                                                                                                                                                                                                                                      | Schaubild                                          |
|----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------|
| **Stern (Star)**                             | Von einem Sternmittelpunkt aus gehen sternförmig die Leitungen zu den Endpunkten. Zugriffssteuerung CSMA/CD                                                                                                                                                                                                       | ![Stern Bild](./stern.png)                         |
| **Erweiterter Stern (Extendted Star)**       | Der Endpunkt eines Sterns ist wiederum Mittelpunkt eines weiteren Sterns. Üblich sind bei Lans drei EbenenStandard in heutigen Verkabelungen.                                                                                                                                                                     | ![Erweiterter Stern Bild](./stern_erweitert.png)   |
| **Vollständige Masche (Complete Mesh)**      | Jede Station ist mit jeder anderen verbunden. Sehr hohe Ausfallsicherheit durch sehr hohe Redundanz, aber sehr aufwendig.                                                                                                                                                                                         | ![Vollständige Masche Bild](./masche_voll.png)     |
| **Unvollständige Masche (Incomplete Mesh**   | Alle wichtigen Stationen sind mehrfach mit anderen Stationen verbunden. Ausfallsichere Netze durch Redundanz. Ein erweiterter Stern mit Querverbindungen ergibt eine unvollständige Masche.                                                                                                                       | ![Unvollständige Masche Bild](./masche_unvoll.png) |
| **Zelle (Cell)**                             | Funkzellen decken bestimmte Bereiche mit Funkwellen ab, z.B. WLAN, Bluetooth oder Mobilfunk.  Zugriffssteuerung CSMA/CA                                                                                                                                                                                           | ![Zelle Bild](./zelle.png)                         |
| **Punkt-zu-Punkt (Point-to-Point, P2P)**     | Verbindung zwischen zwei Stationen.                                                                                                                                                                                                                                                                               | ![Punkt-zu-Punkt Bild](./p2p.png)                  |
| **Bus**                                      | Alle Stationen sind parallel auf einer gemeinsamen Leitung. Heute nicht mehr üblich in LANs.  Zugriffssteuerung CSMA/CD                                                                                                                                                                                           | ![Bus Bild](./bus.png)                             |
| **Ring**                                     | Jede Station hat eine Vorgängerstation und eine Nachfolgerstation. Daten werden nur in eine Richtung verschickt. Vorteile sind sichere Datenübertragung, berechenbare Wartezeit bis gesendet werden darf.Nachteil ist ein schwieriger Aufbau und eine FehlersucheZugriffssteuerung über Token Passing             | ![Ring Bild](./ring.png)                           |


## Hinweis 🛈  

Man unterscheidet:
- **Physische/Physikalische Topologie**: "Wie läuft die Verkabelung?"
- **Logische Topologie**: "Wie verläuft der Datenstrom?"  


Die übliche CATx-RJ45-Ethernet-Verkabelung ist logisch immer ein Stern.  
Wird jedoch ein "Hub" im Sternpunkt eingesetzt, erreicht jeder Teilnehmer jeden anderen Teilnehmer direkt über das gemeinsame Medium. Ein Hub im Sternpunkt erzeugt logisch eine Bus-Topologie.
Switch im Sternpunkt erzeugt logisch pro Kommunikation eine Punkt-zu-Punkt-Topologie zwischen zwei Teilnehmern (außer bei Multicast/Broadcast-Verkehr). Da der Teilnehmer jedoch nicht fest mit einem zweiten Teilnehmer verbunden ist, spricht man eher von einer Sterntopologie. Hier stimmen physikalische und logische Klassifizierung überein.


## Erklärungsvideo 📹

{{< youtube Ukb2SGhGBDU >}}

## Links 🔗
[Westermann Verlag IT-Berufe Grundstufe Schulbuch](https://www.westermann.de/artikel/978-3-14-220000-2/IT-Berufe-Grundstufe-Lernfelder-1-5)  
[Wikipedia](https://de.wikipedia.org/wiki/Topologie_(Rechnernetz))  
