# Normalisierung

## Erste Normalform
### Definition
Die Erste Normalform (1NF) ist dann gegeben, wenn alle Informationen in einer Tabelle atomar vorliegen.

### Stichpunkte
- Atomar

<br>

## Zweite Normalform
### Definition
Ein Relationstyp (Tabelle) befindet sich genau dann in der zweiten Normalform (2NF), wenn er sich in der ersten Normalform (1NF) befindet und jedes Nichtschlüsselattribut von jedem Schlüsselkandidaten voll funktional abhängig ist.

### Stichpunkte
- Setzt 1NF vorraus
- Alle Attribute hängen vom Primary Key ab

<br>

## Dritte Normalform
### Definition
Ein Relationstyp befindet sich genau dann in der dritten Normalform (3NF), wenn er sich in der zweiten Normalform (2NF) befindet und kein Nichtschlüsselattribut transitiv von einem Kandidatenschlüssel abhängt.

### Stichpunkte
- Setzt 2NF vorraus
- Indirekt abhänge Attribute müssen in eine Tabelle ausgelagert werden

<br>

## Links
[Normalisierung in Datenbanken (1. bis 3. Normalform)](https://www.youtube.com/watch?v=aCXKT4ycAbQ)