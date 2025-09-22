---
title: "Zahlensysteme"
draft: false
type: docs
description: "Umrechnungen sind Bestandteil der Gestreckten-Abschlussprüfung-Teil-1 und somit wichtig für deine Prüfungsvorbereitung"
aliases:
  - /abschlussprüfungteil1/zahlensysteme/umrechnungen/
---

- Umrechnungen innerhalb der Zahlensysteme Dezimal, Binär und Hexadezimal
- Umrechnungen zwischen Einheiten im Datenspeichermaßsystem

## Zahlensysteme

Umrechnungen zwischen den Zahlensystemen Dezimal, Binär und Hexadezimal werden hier durch folgende Beispielaufgabe deutlich gemacht:

### Beispielaufgabe

| Zahlensystem | A   | B         | C   |
| ------------ | --- | --------- | --- |
| Dezimal      | 225 |           |     |
| Binär        |     | 1101 1010 |     |
| Hexadezimal  |     |           | 5E  |

## Spalte A

### Dezimal in Binär

1. Teile die Zahl mit Rest durch 2.
2. Der Divisionsrest ist die nächste Ziffer (von rechts nach links).
3. Falls der (ganzzahlige) Quotient 0 ist, bist du fertig,
   andernfalls nimm den (ganzzahligen) Quotienten als neue Zahl
   und wiederhole ab Schritt 1.

```
     225 : 2 = 112  Rest: 1
     112 : 2 =  56  Rest: 0
      56 : 2 =  28  Rest: 0
      28 : 2 =  14  Rest: 0
      14 : 2 =   7  Rest: 0
       7 : 2 =   3  Rest: 1
       3 : 2 =   1  Rest: 1
       1 : 2 =   0  Rest: 1

     Ergebnis: 1110 0001
```

### Dezimal nach Hexadezimal

1. Teile die Zahl mit Rest durch 16.
2. Der Divisionsrest ist die nächste Ziffer (von rechts nach links).
   Für Reste > 9 nimm die Buchstaben A, B, C, D, E, F.
3. Falls der (ganzzahlige) Quotient 0 ist, bist du fertig,
   andernfalls nimm den (ganzzahligen) Quotienten als neue Zahl
   und wiederhole ab Schritt 1.

```
     225 : 16 =  14  Rest:  1   --> Ziffer: 1
      14 : 16 =   0  Rest: 14   --> Ziffer: E

     Ergebnis: E1
```

### Lösung Spalte A

| Zahlensystem | A         |
| ------------ | --------- |
| Dezimal      | 225       |
| Binär        | 1110 0001 |
| Hexadezimal  | E1        |

## Spalte B

### Binär nach Dezimal

Jede Stelle der Zahl hat den Wert der entsprechenden 2er-Potenz.  
Die der ersten Ziffer von rechts entsprechende Potenz ist 2⁰ = 1.  
Multipliziere jede Ziffer mit der entsprechenden Potenz und summiere die Ergebnisse.  
Gehe am besten von rechts nach links vor:

```
     0 ·   1 =    0
     1 ·   2 =    2
     0 ·   4 =    0
     1 ·   8 =    8
     1 ·  16 =   16
     0 ·  32 =    0
     1 ·  64 =   64
     1 · 128 =  128
               ————
                218
```

### Binär nach Hexadezimal

Unterteile die Binärzahl von rechts nach links in 4er-Päckchen und wandle jedes Päckchen mithilfe der untenstehenden Tabelle in die entsprechende Hexadezimalziffer um.

| Hexadezimal | Binär | Hexadezimal | Binär |
| ----------- | ----- | ----------- | ----- |
| 0           | 0000  | 8           | 1000  |
| 1           | 0001  | 9           | 1001  |
| 2           | 0010  | A           | 1010  |
| 3           | 0011  | B           | 1011  |
| 4           | 0100  | C           | 1100  |
| 5           | 0101  | D           | 1101  |
| 6           | 0110  | E           | 1110  |
| 7           | 0111  | F           | 1111  |

```
    1101   1010
      ↓      ↓
      D      A
```

### Lösung Spalte B

| Zahlensystem | B         |
| ------------ | --------- |
| Dezimal      | 218       |
| Binär        | 1101 1010 |
| Hexadezimal  | DA        |

## Spalte C

### Hexadezimal nach Dezimal

Jede Stelle der Zahl hat den Wert der entsprechenden Potenz von 16;  
die rechte Ziffer entspricht 16⁰ = 1, die zweite von rechts 16¹ = 16 usw.  
Nimm jede Ziffer bzw. ihren Zahlenwert (A=10, B=11, ...)  
multipliziere mit der entsprechenden Potenz und summiere die Ergebnisse.  
Gehe am besten von rechts nach links vor:

```
     E:  14 ·  1 =  14
     5:   5 · 16 =  80
                   ———
                    94
```

### Hexadezimal nach Binär

Wandle die Hexadezimalziffern der Reihe nach in die entsprechenden vierstelligen Binärzahlen um.

| Hexadezimal | Binär | Hexadezimal | Binär |
| ----------- | ----- | ----------- | ----- |
| 0           | 0000  | 8           | 1000  |
| 1           | 0001  | 9           | 1001  |
| 2           | 0010  | A           | 1010  |
| 3           | 0011  | B           | 1011  |
| 4           | 0100  | C           | 1100  |
| 5           | 0101  | D           | 1101  |
| 6           | 0110  | E           | 1110  |
| 7           | 0111  | F           | 1111  |

```
      5      E
      ↓      ↓
     0101   1110
```

### Lösung Spalte C

| Zahlensystem | C         |
| ------------ | --------- |
| Dezimal      | 94        |
| Binär        | 0101 1110 |
| Hexadezimal  | 5E        |

## Vollständige Lösung

| Zahlensystem | A         | B         | C         |
| ------------ | --------- | --------- | --------- |
| Dezimal      | 225       | 218       | 94        |
| Binär        | 1110 0001 | 1101 1010 | 0101 1110 |
| Hexadezimal  | E1        | DA        | 5E        |

## Links

[Zahlensysteme Umrechner](https://www.arndt-bruenner.de/mathe/scripts/Zahlensysteme.htm)
