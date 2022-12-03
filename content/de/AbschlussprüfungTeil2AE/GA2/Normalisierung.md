---
title: "Normalisierung"
date: 2022-08-24T22:57:00-06:00
draft: false
type: docs
description: "Mit der Normalisierung legt man ein Datenkonzept an welches sich an bestimmte Regeln hält um Duplikate in den Daten zu verhindern."
---

## Erste Normalform

### Definition

Die Erste Normalform (1NF) ist dann gegeben, wenn alle Informationen in einer Tabelle atomar vorliegen.

### Stichpunkte

- Atomar

## Zweite Normalform

### Definition

Ein Relationstyp (Tabelle) befindet sich genau dann in der zweiten Normalform (2NF), wenn er sich in der ersten Normalform (1NF) befindet und jedes Nichtschlüsselattribut von jedem Schlüsselkandidaten voll funktional abhängig ist.

### Stichpunkte

- Setzt 1NF vorraus
- Alle Attribute hängen vom Primary Key ab

## Dritte Normalform

### Definition

Ein Relationstyp befindet sich genau dann in der dritten Normalform (3NF), wenn er sich in der zweiten Normalform (2NF) befindet und kein Nichtschlüsselattribut transitiv von einem Kandidatenschlüssel abhängt.

### Stichpunkte

- Setzt 2NF vorraus
- Indirekt abhänge Attribute müssen in eine Tabelle ausgelagert werden

## Erklärungsvideo 📹

{{< youtube aCXKT4ycAbQ >}}
