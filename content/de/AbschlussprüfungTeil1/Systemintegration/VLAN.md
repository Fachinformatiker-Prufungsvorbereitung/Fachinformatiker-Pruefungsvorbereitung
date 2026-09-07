---
title: "VLAN - Virtual Local Area Network"
date: 2022-08-24T23:02:47-06:00
draft: false
type: docs
description: "Ein VLAN ist eine virtuelle Abgrenzung innerhalb eines Netzwerkes. Sie dient dem Schutz, der Performance und Sicherheit."
---

- Der Switch muss passend dafür konfiguriert werden
- Es gibt portbasierte VLANs (Pro physischem Port ein VLAN)
- Es gibt Tagged VLANs (Jeder Traffic wird mit einem VLAN getagged. Das ganze ist Virtuell.)
- In beiden Arten können nur die Geräte im selben VLAN miteinander kommunizieren
- Jedes VLAN ist eine eigene Broadcast-Domäne
- Kommunikation zwischen VLANs benötigt einen Router oder Layer-3-Switch

## Vorteile

- Einrichtung logischer Gruppen innerhalb der physikalischen Topologie möglich
- Weniger Broadcast-Verkehr, da jedes VLAN eine eigene Broadcast-Domäne bildet
- Höhere Flexibilität: Umzüge ohne Umpatchen
- Erhöhte Sicherheit durch Trennung der Gruppen
- Priorisierung des Datenverkehrs möglich

## IEEE 802.1Q

Beim Tagging wird ein 4 Byte großes Feld in den Ethernet-Frame eingefügt.

|Feld|Größe|Bedeutung|
|----|-----|---------|
|TPID|16 Bit|Kennung 0x8100 markiert den Frame als getaggt|
|PCP|3 Bit|Priorität nach IEEE 802.1p (0-7)|
|DEI|1 Bit|Kennzeichnung verwerfbarer Frames|
|VID|12 Bit|VLAN-ID (0-4095)|

- Nutzbare VLAN-IDs: 1 bis 4094 (0 und 4095 sind reserviert)
- Durch das Tag wächst der Frame von 1518 auf 1522 Byte

## Port-Typen

|Typ|Beschreibung|
|---|------------|
|Access-Port|Gehört zu genau einem VLAN, Frames werden ungetaggt übertragen (Endgeräte)|
|Trunk-Port|Überträgt mehrere VLANs getaggt, Verbindung zwischen Switches|
|Native VLAN|VLAN, das auf einem Trunk ungetaggt übertragen wird|

## Prüfungsrelevant

- VLANs trennen Broadcast-Domänen, **nicht** Kollisionsdomänen – Kollisionsdomänen werden bereits durch jeden Switch-Port getrennt
- Ein unterschiedlich konfiguriertes Native VLAN auf beiden Trunk-Enden ermöglicht VLAN Hopping
- VLAN 1 ist der Standard und sollte aus Sicherheitsgründen nicht für Nutzdaten verwendet werden

## Links 🔗

[Wikipedia](https://de.wikipedia.org/wiki/Virtual_Local_Area_Network)  
[VLAN-Tagging nach IEEE 802.1Q (netzikon.net)](https://netzikon.net/lexikon/v/vlan-tagging.html)  
[VLAN Hopping (netzikon.net)](https://netzikon.net/lexikon/v/vlan-hopping.html)
