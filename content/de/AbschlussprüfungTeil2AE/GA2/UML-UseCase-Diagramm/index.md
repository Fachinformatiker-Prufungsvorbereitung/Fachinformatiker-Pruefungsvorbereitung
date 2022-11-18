---
title: "UML ~ Use-Case-Diagramm"
date: 2022-11-19T00:07:24+01:00
draft: false
type: docs
weight: 1
description: "Mit Use-Case-Diagrammen des UML Standards, können verschiedene Fälle dargestellt werden, wie aus verschiedenen Ansichten des Users ein Produkt funktionieren soll."
---

- Alternative Namen: Anwendungsdiagramm / Anwendungsfalldiagramm
- Keine Abläufe
- Funktionalität der Software aus einer Sicht des Anwenders
- Unabhängig von technischer Realisierung
- Komplexes System einfach darstellen => Hohes Abstraktionsniveau

## Vorgehen beim Erstellen

- Ermittle die Akteure
- Ermittle die Standard Use-Cases
- Ermittle Sonderfall-Use-Cases
- Komplexe Use-Cases aufteilen

![Use Case Diagramm](./Use-Case-Diagramm-General.svg)

## Assoziation

![Assoziation](./Use-Case-Diagramm-Assoziation.svg)

## Include-Beziehung

Durch die Include Beziehung kann ein Use-Case einen anderen Use-Case importieren. Besser gesagt der Use-Case importiert das Verhalten des anderen Use-Cases.

⚠️ Verhalten wird immer importiert ⚠️

![Include](./Use-Case-Diagramm-Include.svg)

## Vererbung

Bei der Vererbung werden die Eigenschaften eines Use-Cases oder eines Akteurs an ein weiteres Element übergeben / vererbt.

![Vererbung](./Use-Case-Diagramm-Vererbung.svg)

## Extend-Beziehung

- **Optionale** Erweiterung eines Use-Cases
- Abhängig von einer Bedingung

![Extend](./Use-Case-Diagramm-Extend.svg)

## Erklärungsvideo Use-Case-Diagramm 📹

{{< youtube dYfr5Opkw38 >}}
