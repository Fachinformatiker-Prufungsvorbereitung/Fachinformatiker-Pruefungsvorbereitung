---
title: "UML"
date: 2022-09-05T11:53:00-06:00
draft: false
type: docs
weight: 1
description: UML / Unified Modeling Language ist eine Reihe an Diagrammen für die Planung von Software-Projekten. Einige der Diagramme können auch in weiteren Szenarien verwendet werden.
---

Zu UML werden in der Prüfung oft Cheatsheets beigelegt. Übung mithilfe dieser Cheatsheets die Diagramme in kurzer Zeit zu erstellen sollte für die Prüfung vorhanden sein.

## Klassendiagramm

![Klasse](./Klassendiagramm/UML-Klasse.svg)

### Zugriffsmodifikatoren

| Zeichen | Sichtbarkeit |
| ------- | ------------ |
| +       | Public       |
| -       | Private      |
| #       | Protected    |
| ~       | Package      |

### Vererbung

![Vererbung](./Klassendiagramm/UML-Vererbung.svg)

### Assoziation

![Assoziation](./Klassendiagramm/UML-Assoziation.svg)

### Komposition

![Komposition](./Klassendiagramm/UML-Komposition.svg)

### Aggregation

![Aggregation](./Klassendiagramm/UML-Aggregation.svg)

### Multiplizitäten

| Multiplizität | Alternative Schreibweise | Beschreibung                  |
| ------------- | ------------------------ | ----------------------------- |
| 0...1         |                          | Keiner oder Einer             |
| 1             |                          | Genau Einer                   |
| 0...\*        | \*                       | Null oder beliebig viele      |
| 1...\*        |                          | Beliebig viele - Mindestens 1 |

<br>

![Multiplizitäten](./Klassendiagramm/UML-Multiplizitäten.svg)

## Anwendungsdiagramm / Anwendungsfalldiagramm / Use-Case-Diagramm

- Keine Abläufe
- Funktionalität der Software aus einer Sicht des Anwenders
- Unabhängig von technischer Realisierung
- Komplexes System einfach darstellen => Hohes Abstraktionsniveau

<br>

![Use Case Diagramm](./Use-Case-Diagramm/Use-Case-Diagramm-General.svg)

### Vorgehen beim Erstellen

- Ermittle die Akteure
- Ermittle die Standard Use-Cases
- Ermittle Sonderfall-Use-Cases
- Komplexe Use-Cases aufteilen

### Assoziation

![Assoziation](./Use-Case-Diagramm/Use-Case-Diagramm-Assoziation.svg)

### Include-Beziehung

Durch die Include Beziehung kann ein Use-Case einen anderen Use-Case importieren. Besser gesagt der Use-Case importiert das Verhalten des anderen Use-Cases.

⚠️ Verhalten wird immer importiert ⚠️

<br>

![Include](./Use-Case-Diagramm/Use-Case-Diagramm-Include.svg)

### Vererbung

Bei der Vererbung werden die Eigenschaften eines Use-Cases oder eines Akteurs an ein weiteres Element übergeben / vererbt.

![Vererbung](./Use-Case-Diagramm/Use-Case-Diagramm-Vererbung.svg)

### Extend-Beziehung

- **Optionale** Erweiterung eines Use-Cases
- Abhängig von einer Bedingung

![Extend](./Use-Case-Diagramm/Use-Case-Diagramm-Extend.svg)

## Sequenzdiagramm

Ein Sequenzdiagramm beschreibt Abläufe. Es zeigt die Interaktionen von Objekten in einer grafischen Zeitlinie.

![Sequenzdiagramm](./Sequenzdiagramm/UML-Sequenzdiagramm.svg)

## Aktivitätsdiagramm

TODO

## Zustandsdiagramm

TODO

## Links 🔗

[Klassendiagramm SimpleClub](https://www.youtube.com/watch?v=zzwUH3vbNkc)  
[Programmieren Starten](https://www.youtube.com/playlist?list=PL_pqkvxZ6ho05rbgNaakWmxFmT9qEXzIo)
