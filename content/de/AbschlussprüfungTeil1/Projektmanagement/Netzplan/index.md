---
title: "Netzplan"
date: 2022-08-24T23:02:36-06:00
draft: false
type: docs
description: "Ein Netzplan stellt Vorgänge / Abläufe in einer zeitlichen Reihenfolge inklusive Abhängigkeiten dar."
---

Bei den Prüfungsaufgaben ist meist eine Legende gegeben. Die Anordnung / Namen der einzelnen Felder muss also nicht auswendig gelernt werden. Kommt oft in Prüfungen dran.

![Netzplan](./Netzplan.png)
[Wikipedia Commons](https://de.wikipedia.org/wiki/Datei:NetzplanBsp.png#file)

<br>

## Legende

|Abkürzung|Name|
|---------|----|
|FAZ|Frühester Anfangszeitpunkt|
|FEZ|Frühester Endzeitpunkt|
|GP|Gesamtpuffer|
|FP|Freier Puffer|
|SAZ|Spätester Anfangszeitpunkt|
|SEZ|Spätester Endzeitpunkt|

## Vorwärtsrechnung 

beginnt beim Projektstart und ermittelt FAZ und FEZ aller Vorgänge.
### Frühester Anfangszeitpunkt (FAZ)
entspricht dem frühesten Endzeitpunkt des Vorgängers. 
Falls es mehrere Vorgänger gibt, wird der größte FEZ genommen.
### Frühester Endzeitpunkt (FEZ)
**Berechnung**: FEZ = FAZ + Dauer

<br>

## Rückwärtsrechnung

startet beim Projektende und ermittelt SAZ und SEZ.  
Probe: Nach der Rückwärtsrechnung sollte beim ersten Vorgang auch der SAZ = 0 sein.
### Spätester Endzeitpunkt (SEZ)
entspricht spätesten Anfangszeitpunkt des Nachfolgers.
Falls es mehrere Nachfolger gibt, wird der kleineste SAZ genommen.
### Spätester Anfangszeitpunkt (SAZ)
**Berechnung**: SAZ = SEZ - Dauer

<br>

## Was ist der freie Puffer?

Der freie Puffer ist der Zeitraum, um den ein Vorgang maximal verschoben werden kann, ohne die frühesten Termine seiner nachfolgenden Vorgänge zu beeinflussen.  
**Berechnung**: Freier Puffer = FAZ (Nachfolger) - FEZ (aktueller Vorgang)

<br>

## Was ist der Gesamtpuffer?

Der Gesamtpuffer ist der Zeitraum, um den ein Vorgang maximal verschoben werden kann, ohne die spätesten Termine seiner nachfolgenden Vorgänge zu beeinflussen.  
**Berechnung**: Gesamtpuffer = SEZ - FEZ (oder Gesamtpuffer = SAZ - FAZ)

<br>

## Was ist der kritische Pfad?

Der kritische Pfad ist der Weg vom ersten bis zum letzten Vorgang eines Netzplans, auf dem die Pufferzeiten minimal (meist alle 0) sind.  
Verzögerung der Vorgänge auf dem kritischen Pfad wirken sich so meist unmittelbar auf die Gesamtlänge des Projektes aus.

<br>

## Links

[Was ist ein Netzplan?](https://www.inloox.de/projektmanagement-glossar/netzplan/)  
[Netzplantechnik einfach erklärt + Beispiel mit kritischem Pfad!](https://www.youtube.com/watch?v=OfrfVY-eYQY)
