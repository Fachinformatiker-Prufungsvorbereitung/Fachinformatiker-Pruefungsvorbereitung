---
title: "IP-Adressen"
draft: false
type: docs
weight: 1
description: "Alles was du für die Prüfungsvorbereitung zum Fachinformatiker über IP-Adressen wissen musst."
---

IP-Adressen sind ein numerisches Identifikationssystem für Geräte in einem Netzwerk, das es ermöglicht, dass diese miteinander kommunizieren können, sei es im Internet oder in privaten Netzwerken.

IP-Adressen gibt es in zwei Verschiedenen Versionen:

## IPv4-Adressen
Beispiel einer IPv4-Adresse:
```
192.168.1.1
```
Sie sind 32 Bit groß, werden in vier 8-Bit-Blöcke unterteilt und jeder dieser Blöcke wird durch einen Punkt getrennt. Jeder einzelne Block kann einen Dezimalwert von 0-255 annehmen.
IPv4-Adressen sind jedoch begrenzt, da aus 32 Bit nur 2³² (~4 Milliarden) Adressen gebildet werden können. Wegen diesem Mangel wurde die IPv6-Adresse eingeführt.

## IPv6-Adressen
Beispiel einer IPv6-Adresse:
```
2001:0db8:85a3:08d3:1319:8a2e:0370:7344
```
Sie sind 128 Bit groß, was im Vergleich zu IPv4 eine enorm große Anzahl möglicher Adressen (~340 Sextillionen) ermöglicht, wodurch eine Knappheit wie bei IPv4 ausgeschlossen ist.
Eine IPv6-Adresse wird in acht 16-Bit-Blöcke unterteilt, die durch Doppelpunkte getrennt sind. Jeder Block wird in vier Hexadezimalziffern dargestellt.

Eine IPv6-Adresse besteht aus einem Network Prefix und einem Interface Identifier. Der Network Prefix identifiziert das Netzwerk zu dem das Gerät gehört und der Interface Identifier identifiziert einen Host in diesem Netz. Die Aufteilung dieser zwei Bereiche wird durch die Präfixlänge definiert (Standardmäßig /64).

Außerdem können Sie durch die Entfernung führender Nullen in jedem Block und den Ersatz von aufeinanderfolgenden Nullblöcken durch "::" gekürzt werden die folgende IP-Adresse ist identisch mit der im Beispiel:
```
2001:db8:85a3:8d3:1319:8a2e:370:7344
```

## Links
[IPv4-Adressen - Elektronik Kompendium](https://www.elektronik-kompendium.de/sites/net/2011211.htm)  
[IPv6-Adressen - Elektronik Kompendium](https://www.elektronik-kompendium.de/sites/net/1902111.htm)

## Erklärvideos
### Florian Dalwigk
{{< youtube OjBJvXcuE-I >}}