---
title: "Backuparten"
date: 2022-08-24T23:02:47-06:00
draft: false
type: docs
description: "Backups lassen sich in verschiedene Arten mit unterschiedlichen Eigenschaften Unterteilen."
---

## Vollständige Datensicherung

- Eine eins zu eins Kopie
- Wiederherstellung schnell und einfach
- Benötigt viel Speicherplatz
- Benötigt viel Zeit zur Sicherung

## Differentielle Datensicherung

- Als erstes muss ein Vollbackup gemacht werden
- Dann werden alle Daten gespeichert die sich seit dem letzten Vollbackup verändert haben
- Wiederherstellung geht schneller
- Die letzte Vollsicherung und aktuelle Differienzialsicherung wird benötigt
- Benötigt mehr Speicherplatz als die inkrementelle Datensicherung

## Inkrementelle Datensicherung

- Als erstes muss ein Vollbackup gemacht werden
- Hier werden allerdings nur die Daten gesichert die sich seit der letzen Vollsicherung bzw. Inkrementellen Sicherung geändert haben
- Spart Speicherplatz ein
- Die Wiederherstellung benötigt mehr Zeit

## Erklärungsvideo 📹

{{< youtube 3NrTiOusQ2o >}}
