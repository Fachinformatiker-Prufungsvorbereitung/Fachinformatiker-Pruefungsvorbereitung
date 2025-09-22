---
title: "Speichergrößen"
draft: false
type: docs
description: "Umrechnungen sind Bestandteil der Gestreckten-Abschlussprüfung-Teil-1 und somit wichtig für deine Prüfungsvorbereitung"
---

- Zum Wechsel von MiB nach MB rechnet man runter auf Byte und dann im Dezimalsystem wieder hoch auf MB
- Zum Wechsel von MB nach MiB macht man das Ganze genau anders herum

## Binäres System in dezimales System

```txt
x KiB * 1024   = x Byte
x MiB * 1024^2 = x Byte
x GiB * 1024^3 = x Byte
```

### Beispiel

```txt
243 KiB * 1024   = 248.832 Byte
50 MiB * 1024^2  = 52.428.800 Byte
23 GiB * 1024^3  = 24.696.061.952 Byte
```

## Dezimales System in binäres System

Kilo-, Mega- oder Gigabyte rechnet man erst in Byte um und dann durch
1024 für KiB
1024^2 für MiB
1024^3 für GiB etc.

```txt
x KB * 1000   / 1024^1 = x KiB
x MB * 1000^2 / 1024^2 = x MiB
x GB * 1000^3 / 1024^3 = x GiB
```

### Beispiel

```txt
450 GB in GiB
450 * 1000^3 / 1024^3 = 419,095 GiB
```

## Umrechnungen innerhalb des binären Systems

```txt
Byte     = KiB * 1024
Byte     = MiB * 1024^2
Byte     = GiB * 1024^3
usw.

KiB = Byte / 1024
MiB = Byte / 1024^2
GiB = Byte / 1024^3
usw.
```

## Umrechnungen innerhalb des dezimalen Systems

```txt
Byte     = KB * 1000
Byte     = MB * 1000^2
Byte     = GB * 1000^3
usw.

KB = Byte / 1000
MB = Byte / 1000^2
GB = Byte / 1000^3
usw.
```

## Erklärungsvideo

{{< youtube 9L_qwf6wD8g >}}
