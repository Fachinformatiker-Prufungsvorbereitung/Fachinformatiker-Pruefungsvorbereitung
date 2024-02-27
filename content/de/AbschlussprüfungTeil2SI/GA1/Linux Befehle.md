---
title: "Linux-Befehle"
draft: false
type: docs
weight: 7
description: "Linux Befehle zur Vorbereitung auf die Prüfung zum Fachinformatiker für Systemintegration."
---

In der Abschlussprüfung Winter 2023 wurde die Funktionsweise des chmod Befehls abgefragt. Es gab eine Hilfestellung dafür, jedoch schadet es nicht sich trotzdem vorher damit zu befassen.

## chmod

### Syntax

```
chmod rechte datei
```

chmod (Der Befehl selbst)

rechte (erste Stelle: Rechte für den Besitzer, zweite Stelle: Rechte für die Gruppe, dritte Stelle: Rechte für andere Benutzer)

datei (Die Datei dessen Zugriffsrechte verändert werden sollen)

### Werte

| Wert | Zugriffsrecht
| ---- | -------------
| 0    | keine
| 1    | ausführen
| 2    | schreiben
| 3    | ausführen/schreiben
| 4    | lesen
| 5    | lesen/ausführen
| 6    | lesen/schreiben

### Beispiel

```
chmod 640 beispiel.txt
```

Im Beispiel wird mit chmod die Zugriffsberechtigung von der Datei "beispiel.txt" auf 640 gesetzt. (6 = Besitzer: lesen/schreiben 4 = Gruppe: lesen 0 = Andere Benutzer: keine)
