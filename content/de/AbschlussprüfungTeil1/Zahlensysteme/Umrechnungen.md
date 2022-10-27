---
title: "Umrechnungen"
date: 2022-08-24T23:03:06-06:00
draft: false
type: docs
description: "Umrechnungen sind Bestandteil der Gestreckten-Abschlussprüfung-Teil-1 und somit wichtig für deine Prüfungsvorbereitung"
---

- Zum wechsel von MiB nach MB rechnet man runter auf Byte und dann im Dezimalsystem wieder hoch auf MB
- Zum Wechsel von MB nach MiB macht man das ganze genau anders herum

## Binäres System in dezimales System

```txt
x kiByte * 1024 = x Byte
x miByte * 1024^2 = x Byte
x giByte * 1024^3 = x Byte
```

### Beispiel

```txt
243 kiByte * 1024 = 248.832 Byte
50 miByte * 1024^2 = 52.428.800 Byte
23 giByte * 1024^3 = 24.696.061.952 Byte 
```

## Dezimales System in binäres System

Kilo-, Mega- oder Gigabyte rechnet man erst in Byte um und dann durch  
1024 für KiByte  
1024^2 für MiByte  
1024^3 für GiByte etc.  

```txt
x kB * 1000 / 1024 = x KiByte
x mB * 1000^2 / 1024^2 = x MiByte
```

### Beispiel

```txt
450 Gigabyte in Gibibyte
450 * 1000^3 / 1024^3 = 419,095 giByte  
```

## Umrechnungen innerhalb des binären System

```txt
Byte = kiByte / 1024
Byte = miByte / 1024^2
usw.

Kibibyte = Byte * 1024
Mibibyte = Byte * 1024^2
usw.
```

## Umrechnungen innerhalb des dezimalen System

```txt
Byte = Kilobyte / 1000
Byte = Megabyte / 1000^2
usw.

Kilobyte = Byte * 1000
Megabyte = Byte * 1000^2
usw.
```

## Erklärungsvideo

{{< youtube 9L_qwf6wD8g >}}
