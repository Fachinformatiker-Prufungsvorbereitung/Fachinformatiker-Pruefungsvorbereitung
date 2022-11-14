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

- Noch stärkere Bindung als Aggregation
- Eine Teil-Klasse kann nicht ohne eine andere Klasse existieren

![Komposition](./Klassendiagramm/UML-Komposition.svg)

### Aggregation

- Klassen besitzen starke Beziehung
- Existenzen der einzelnen Klassen ist nicht aneinander gebunden
- Zeigt eine "Art" Besitz an

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

### Erklärungsvideo Klassendiagramm 📹

{{< youtube zzwUH3vbNkc >}}

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

### Erklärungsvideo Use-Case-Diagramm 📹

{{< youtube dYfr5Opkw38 >}}

## Sequenzdiagramm

Ein Sequenzdiagramm beschreibt Abläufe. Es zeigt die Interaktionen von Objekten in einer grafischen Zeitlinie.

![Sequenzdiagramm](./Sequenzdiagramm/UML-Sequenzdiagramm.svg)

### Erklärungsvideo Sequenzdiagramm 📹

{{< youtube L_auS6pd_l0 >}}

## Aktivitätsdiagramm / Flussdiagramm

<!-- TODO -->

### Erklärungsvideo Aktivitätsdiagramm 📹

{{< youtube FdH51Ujp-GU >}}

<!-- ## Zustandsdiagramm

TODO -->

## Links 🔗

[Programmieren Starten](https://www.youtube.com/playlist?list=PL_pqkvxZ6ho05rbgNaakWmxFmT9qEXzIo)  
[IONOS Aktivitätsdiagramm](https://www.ionos.de/digitalguide/websites/web-entwicklung/uml-aktivitaetsdiagramme/)  
