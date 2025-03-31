---
title: "Storage Systeme"
date: 2022-09-30T14:52:56+02:00
draft: false
type: docs
weight: 1
description: "Storage Systeme sind Systeme zur nicht temporären Speicherung von Daten. Hier werden die verschiedenen Arten solcher Systeme beschrieben."
---

Als erstes sollte der Unterschied zwischen einem Blockgerät und einem Dateisystem definiert werden.

## Block-Gerät

Ein Block-Gerät ist eine Art von Gerätedatei unter Unix- und Linux-Systemen, die den Zugriff auf Speichergeräte wie Festplatten, SSDs, USB-Sticks oder andere blockorientierte Hardware ermöglicht.

Der Begriff "Block" bezieht sich darauf, dass diese Geräte Daten in festen Blöcken (z. B. 512 Bytes oder 4096 Bytes) lesen und schreiben — im Gegensatz zu Zeichen-Geräten, die Daten Byte für Byte verarbeiten (wie z. B. serielle Schnittstellen oder Terminals). 

### Beispiel Block-Gerät

Wie `/dev/sda` für eine Festplatte oder `/dev/sda1` für eine Partition auf dieser Festplatte.

## Dateisystem

Ein **Dateisystem** befindet sich auf dem Blockgerät, um Daten zu speichern. Sie können dies dann einbinden.  

### Beispiel Dateisystem

Wie `mount /dev/sda1 /mnt/somepath`

## SAN - Storage Area Network

**SAN** ist ein Blockgerät, das über das Netzwerk bereitgestellt wird.

- Wie DAS müssen Sie noch ein Dateisystem darauf ablegen, bevor Sie es verwenden können.
- Zu diesen Technologien gehören FibreChannel, iSCSI, usw.

![SAN Image](./Schema_SAN_german_V2.png)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:Schema_SAN_german_V2.png)  

## NAS - Network Attached Storage

**NAS** ist ein Dateisystem, das über das Netzwerk bereitgestellt wird.

- Kann direkt eingebunden (ge-mount-et) und verwendet werden.
   Zu diesen Technologien gehören NFS, CIFS, AFS, SMB, usw.

![NAS Diagram](./NAS.png)  
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:NAS.png)  

## DAS - Direct Attached Storage

**DAS** ist ein Blockgerät von einer Platte, die physisch (direkt) an den Host-Computer angeschlossen ist.

- Sie müssen ein Dateisystem darauf ablegen, bevor Sie es verwenden können.
- Zu diesen Topologien gehören IDE, SCSI, SATA, SAS, usw.

## Links 🔗

[Wikipedia SAN](https://de.wikipedia.org/wiki/Storage_Area_Network)  
[Wikipedia DAS](https://de.wikipedia.org/wiki/Direct_Attached_Storage)  
[Wikipedia NAS](https://de.wikipedia.org/wiki/Network_Attached_Storage)  
