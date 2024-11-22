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

- Atomar: in jeder Spalte ist genau ein Wert

### Beispiel

| R.-Nr. | Datum      | Name       | Vorname | Straße       | H.-Nr. | PLZ   | ORT          | Artikel   | Anzahl | Preis | Währung |
| ------ | ---------- | ---------- | ------- | ------------ | ------ | ----- | ------------ | --------- | ------ | ----- | ------- |
| 420    | 14.11.2024 | Mustermann | Max     | Musterstraße | 1      | 12345 | Musterhausen | Bleistift | 5      | 1     | Euro    |

## Zweite Normalform

### Definition

Ein Relationstyp (Tabelle) befindet sich genau dann in der zweiten Normalform (2NF), wenn er sich in der ersten Normalform (1NF) befindet und jedes Nichtschlüsselattribut von jedem Schlüsselkandidaten voll funktional abhängig ist.

### Stichpunkte

- Setzt 1NF vorraus
- Alle Attribute hängen vom Primary Key ab

### Beispiel

{{< rawhtml >}}
<table>
  <tr>
    <th colspan="3">Rechnung</th>
  </tr>
  <tr>
    <th>R.-Nr.</th>
    <th>Datum</th>
    <th>K.-Nr.</th>
  </tr>
  <tr>
    <td>420</td>
    <td>14.11.2024</td>
    <td>69</td>
  </tr>
</table>

<table>
  <tr>
    <th colspan="7">Kunde</th>
  </tr>
  <tr>
    <th>K.-Nr.</th>
    <th>Name</th>
    <th>Vorname</th>
    <th>Straße</th>
    <th>H.-Nr.</th>
    <th>PLZ</th>
    <th>Ort</th>
  </tr>
  <tr>
    <td>007</td>
    <td>Mustermann</td>
    <td>Max</td>
    <td>Musterstraße</td>
    <td>1</td>
    <td>12345</td>
    <td>Musterort</td>
  </tr>
</table>

<table>
  <tr>
    <th colspan="4">Rechnungsposition</th>
  </tr>
  <tr>
    <th>R.-P,-Nr.</th>
    <th>R.-Nr.</th>
    <th>Art.-Nr.</th>
    <th>Anzahl</th>
  </tr>
  <tr>
    <td>1</td>
    <td>420</td>
    <td>69</td>
    <td>5</td>
  </tr>
</table>

<table>
  <tr>
    <th colspan="3">Artikel</th>
  </tr>
  <tr>
    <th>Art.-Nr.</th>
    <th>Bezeichnung</th>
    <th>Preis</th>
  </tr>
  <tr>
    <td>69</td>
    <td>Bleistift</td>
    <td>1</td>
  </tr>
</table>
{{< /rawhtml >}}

## Dritte Normalform

### Definition

Ein Relationstyp befindet sich genau dann in der dritten Normalform (3NF), wenn er sich in der zweiten Normalform (2NF) befindet und kein Nichtschlüsselattribut transitiv von einem Kandidatenschlüssel abhängt.

### Stichpunkte

- Setzt 2NF vorraus
- Indirekt abhänge Attribute müssen in eine Tabelle ausgelagert werden

### Beispiel

<table>
  <tr>
    <th colspan="6">Kunde</th>
  </tr>
  <tr>
    <th>K.-Nr.</th>
    <th>Name</th>
    <th>Vorname</th>
    <th>Straße</th>
    <th>H.-Nr.</th>
    <th>PLZ</th>
  </tr>
  <tr>
    <td>007</td>
    <td>Mustermann</td>
    <td>Max</td>
    <td>Musterstraße</td>
    <td>1</td>
    <td>12345</td>
  </tr>
</table>

<table>
  <tr>
    <th colspan="2">Postleitzahl</th>
  </tr>
  <tr>
    <th>PLZ</th>
    <th>Ort</th>
  </tr>
  <tr>
    <td>12345</td>
    <td>Musterort</td>
  </tr>
</table>

In der Tabelle **Kunde** sind die Attribute **Vorname**, **Straße** und **Plz** abhängig vom Attribut **Name**, nicht vom Primärschlüssel **K.-Nr.**. Außerdem ist das Attribut **Ort** abhängig vom Attribut **Plz**.

## Erklärungsvideo 📹

{{< youtube aCXKT4ycAbQ >}}
