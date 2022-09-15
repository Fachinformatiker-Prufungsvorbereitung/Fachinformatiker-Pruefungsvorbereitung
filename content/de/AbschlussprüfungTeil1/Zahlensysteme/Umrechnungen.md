---
title: "Umrechnungen"
date: 2022-08-24T23:03:06-06:00
draft: false
type: docs
---

- Zum wechsel von MiB nach MB rechnet man runter auf Byte und dann im Dezimalsystem wieder hoch auf MB
- Zum Wechsel von MB nach MiB macht man das ganze genau anders herum

<br>

### Umrechung binäres System in dezimales System (ki, mi, gi zu kilo, mega, giga)
    
    x kiByte * 1024 = x Byte
    x miByte * 1024^2 = x Byte
    x giByte * 1024^3 = x Byte
    
    Beispiel:
    243 kiByte * 1024 = 248.832 Byte
    50 miByte * 1024^2 = 52.428.800 Byte
    23 giByte * 1024^3 = 24.696.061.952 Byte 
<br> 

### Umrechnung dezimales System in binäres System (kilo, mega, giga zu ki, mi, gi)

    Kilo-, Mega- oder Gigabyte erst in Byte dann durch 
    1024 für KiByte
    1024^2 für MiByte
    1024^3 für GiByte etc.
    
    x kB * 1000 / 1024 = x KiByte
    x mB * 1000^2 / 1024^2 = x MiByte
    
    Beispiel:
    450 Gigabyte in giByte
    450 * 1000^3 / 1024^3 = 419,095 giByte  
    
    
<br>

### Binäres System

    Byte -> kiByte: /1024
    Byte -> miByte: /1024^2
    usw.
    
    kiByte -> Byte: *1024
    miByte -> Byte: *1024^2
    usw.

<br>

### Dezimales System

    Byte -> kiloByte: /1000
    Byte -> megaByte: /1000^2
    usw.
    
    kiloByte -> Byte: *1000
    megaByte -> Byte: *1000^2
    usw.

<br>

## Links

[Erklärung YouTube](https://www.youtube.com/watch?v=9L_qwf6wD8g)
