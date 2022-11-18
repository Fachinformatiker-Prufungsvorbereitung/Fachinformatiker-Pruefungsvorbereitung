---
title: "UML ~ Klassendiagramm"
date: 2022-11-19T00:06:47+01:00
draft: false
type: docs
weight: 1
description: "Mit dem Klassendiagramm aus dem UML Standard, können Klassen in einem universellen Format dargestellt werden."
---

![Klasse](./UML-Klasse.svg)

## Zugriffsmodifikatoren

| Zeichen | Sichtbarkeit |
| ------- | ------------ |
| +       | Public       |
| -       | Private      |
| #       | Protected    |
| ~       | Package      |

## Vererbung

![Vererbung](./UML-Vererbung.svg)

## Assoziation

![Assoziation](./UML-Assoziation.svg)

## Komposition

- Noch stärkere Bindung als Aggregation
- Eine Teil-Klasse kann nicht ohne eine andere Klasse existieren

![Komposition](./UML-Komposition.svg)

## Aggregation

- Klassen besitzen starke Beziehung
- Existenzen der einzelnen Klassen ist nicht aneinander gebunden
- Zeigt eine "Art" Besitz an

![Aggregation](./UML-Aggregation.svg)

## Multiplizitäten

| Multiplizität | Alternative Schreibweise | Beschreibung                  |
| ------------- | ------------------------ | ----------------------------- |
| 0...1         |                          | Keiner oder Einer             |
| 1             |                          | Genau Einer                   |
| 0...\*        | \*                       | Null oder beliebig viele      |
| 1...\*        |                          | Beliebig viele - Mindestens 1 |

<br>

![Multiplizitäten](./UML-Multiplizitäten.svg)

## Erklärungsvideo Klassendiagramm 📹

{{< youtube zzwUH3vbNkc >}}
