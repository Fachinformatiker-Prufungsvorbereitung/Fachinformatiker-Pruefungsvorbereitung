---
title: "Programmierung"
draft: false
type: docs
weight: 8
description: "In den letzten Abschlussarbeiten wurden auch Programmierkenntnisse abgefragt, welche sich jedoch nur auf Grundlagen beliefen."
---

## Datentypen

| Datentyp | Speicher
| -------- | -------------
| char     | ein einziges Zeichen
| int      | Ganzzahlen
| float    | Kommazahlen
| double   | Kommazahlen
| bool     | wahr/falsch

Float und double können beide Gleitkommazahlen speichern, der einzige Unterschied hierbei ist die Speichergröße. Float kann Kommazahlen nur bis zu 32 Bit speichern während double bis zu 64 Bit speichern kann. Double kann also längere bzw. größere Gleitkommazahlen speichern.

## if-Anweisungen

Hiernach folgt eine einfache if-Anweisung die überprüft ob eine Bedingung eingetreten ist und daraufhin den Code innerhalb ausführt.

```
if (Bedingung)
{
    // wenn die Bedingung eintrifft, wird der hier stehende Code ausgeführt
}
```

Tritt die Bedingung jedoch nicht auf, wird kein Code ausgeführt. Um dies zu ändern müssen wir zu unserer if-Anweisung eine else-Anweisung hinzufügen:

```
if (Bedingung)
{
    // wenn die Bedingung eintrifft, wird der hier stehende Code ausgeführt
}
else
{
    // wenn die Bedingung nicht eintrifft, wird der hier stehende Code ausgeführt
}
```

if-else-Anweisungen können unendlich oft hintereinander gekettet werden, wollen wir also eine weitere Bedingung überprüfen und wenn diese eintritt einen anderen Code ausführen sieht das ganze so aus:

```
if (Bedingung1)
{
    // wenn Bedingung1 eintrifft, wird der hier stehende Code ausgeführt
}
else if (Bedingung2)
{
    // wenn Bedingung2 eintrifft, wird der hier stehende Code ausgeführt
}
else
{
    // wenn die o.g. Bedingungen nicht eintreffen, wird der hier stehende Code ausgeführt
}
```

## Schleifen

Schleifen werden in der Programmierung verwendet um einen Code zu ***wiederholen***. Es gibt drei verschiedene Arten von Schleifen:

### for Schleife

Eine for Schleife wird genutzt, wenn man weiß wie lange sich eine Schleife wiederholen soll.

Syntax:

```
for (Initialisierung; Bedingung; Aktualisierung) 
{
    // auszuführender Code
}
```

Beispiel:

Hier folgt ein Beispiel für die for Schleife. Das Beispiel gibt den Text "Hello World!" zehn mal in einer Konsole aus.
```
for(int i=0; i<10; i++)
{
    std::cout << "Hello World!" << std::endl; // "Hello World!" in der Konsole ausgeben und in die nächste Zeile gehen
}
```

### while Schleife

Eine while Schleife wird genutzt, wenn man einen Code so lange wiederholen will, wie eine Bedingung wahr ist.

Syntax:

```
while (Bedingung)
{
    // auszuführender Code
}
```

Beispiel:

Hier folgt ein Beispiel für die while Schleife. Das Beispiel gibt die Zahlen 1 bis 10 in einer Konsole aus.

```
int i = 1;
while (i <= 10) 
{
    std::cout << i << std::endl; // Integer i in der Konsole ausgeben
    i++;                         // Integer i um eins erhöhen
}
```

### do-while Schleife

Im Gegensatz zu der for- und while Schleife ist die do-while Schleife eine "Fußgesteuerte" Schleife. Die Do-while Schleife führt den Code garantiert einmal aus und überprüft dann erst ob die Bedingung wahr ist. Wenn die Bedingung wahr ist wird der Code wiederholt.

Syntax:

```
do
{
    // auszuführender Code
} while (Bedingung);
```

Beispiel:

Hier folgt ein Beispiel für die do-while Schleife. Das Beispiel gibt  die Zahlen 1 bis 10 in einer Konsole aus.

```
int i = 1;
do
{
    std::cout << i << std::endl; // Integer i in der Konsole ausgeben
    i++;                         // Integer i um eins erhöhen
} while (i <= 10);
```

## Exceptions

Exceptions sind eine Möglichkeit, Fehler und andere außergewöhnliche Umstände zu behandeln, die während der Programmausführung auftreten können.

Gründe für das Auftreten einer Exception könnten sein:
- Teilen einer Zahl durch 0
- Speicherzugriffsfehler
- Dateizugriffsfehler
- Stack Overflow
- Zugreifen auf einen Index in einem Array der nicht existiert

## Pseudocode

Pseudocode ist ein unfertiger Programmcode, der nur zur Veranschaulichung eines Algorithmus dient.

Was sind die Vorteile von Pseudocode im Vergleich zu richtigem Code?
- Vor dem eigentlichen Programmieren kann man seinen Code skizzieren
- Fehler in der Logik eines Programms sind leichter zu finden
- komplexe Algorithmen können schnell und leicht ausgedrückt werden
- Es ist eine gute Möglichkeit als Anfänger in die Programmierung einzusteigen
