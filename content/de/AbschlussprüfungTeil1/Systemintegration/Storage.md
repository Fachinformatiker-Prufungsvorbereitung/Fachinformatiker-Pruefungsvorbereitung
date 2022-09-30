---
title: "Das OSI Modell"
date: 2022-09-30T10:52:00-06:00
draft: false
type: docs
---

## Was ist der Unterschied zwischen SAN, NAS, und DAS?

Als erstes sollte der unterschied zwischen einem Blockgerät und einem Dateisystem definiert werden.
1. Ein **Block-Gerät** ist ein Handle für RAW-Festplatten.
	1.1 Wie */dev/sda *für eine Festplatte oder */dev/sda1* für eine Partition auf dieser Festplatte.
2. Ein **Dateisystem** befindet sich auf dem Blockgerät, um Daten zu speichern. Sie können dies dann einbinden.
	2.1 Wie *mount/dev/sda1/mnt/somepath*.

In Anbertracht dieser Begriffe ist es dann einfacher, den Unterschied zwischen den folgenden Punkten zu erkennen.
- **DAS** ist ein Blockgerät von einer Platte, die physisch [direkt] an den Host-Computer angeschlossen ist.
-- Sie müssen ein Dateisystem darauf ablegen, bevor Sie es verwenden können.
-- Zu diesen Topologien gehören IDE, SCSI, SATA, SAS, usw.
- **SAN** ist ein Blockgerät, das über das Netzwerk bereitgestellt wird.
-- Wie DAS müssen Sie noch ein Dateisystem darauf ablegen, bevor Sie es verwenden können.
-- Zu diesen Technologien gehören FibreChannel, iSCSI, usw.
- **NAS** ist ein Dateisystem, das über das Netzwerk bereitgestellt wird.
-- Kann direkt eingebunden (ge-mount-et) und verwendet werden.
-- Zu diesen Technologien gehören NFS, CIFS, AFS, SMB, usw.

[![SAN, NAS, DAS](https://www.hostdime.in/blog/wp-content/uploads/2017/06/N-before-S.jpg "SAN, NAS, DAS")](https://www.hostdime.in/blog/wp-content/uploads/2017/06/N-before-S.jpg "SAN, NAS, DAS")

------------

## Links
[Bild Link] (https://www.hostdime.in/blog/wp-content/uploads/2017/06/N-before-S.jpg)
