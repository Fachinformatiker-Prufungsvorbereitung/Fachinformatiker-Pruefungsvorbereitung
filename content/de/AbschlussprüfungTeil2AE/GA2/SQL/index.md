---
title: "SQL / MySQL"
date: 2022-08-25T10:37:33-06:00
draft: false
type: docs
description: "SQL ist eine Sprache zur Abfrage von relationalen Datenbanken."
---

In diesem Fall wird der SQL-Dialekt MySQL beschrieben.

SQL ist eine sehr beliebte Aufgabe in der alten Prüfungsverordnung gewesen. Für die Prüfung ist dieses Wissen ein muss.

In der Prüfung ist bei SQL eine Cheatsheet beigelegt. Es lohnt sich diese anzuschauen und fehlende Syntax auswendig zu lernen.

## Datentypen

| Typ                            | Beschreibung                                                                 |
| ------------------------------ | ---------------------------------------------------------------------------- |
| INT, INTEGER                   | Ganze Zahlen, 32 Bit, -2 Mrd. bis +2 Mrd.                                    |
| SMALLINT                       | Ganze Zahlen, 16 Bit, -32768 bis 32767                                       |
| BIGINT                         | 64 Bit, -263 bis 263-1 (falls vorhanden)                                     |
| DECIMAL(p,s)                   | Festkommatyp (p Dezimalstellen insgesamt, s Dezimalstellen hinter dem Komma) |
| FLOAT                          | Gleitkommatyp, 32 Bit                                                        |
| DOUBLE                         | Gleitkommatyp, 64 Bit                                                        |
| BOOLEAN                        | False, True (0 oder 1)                                                       |
| BLOB, (LONG BLOB, MEDIUM BLOB) | Binary large object, Für binäre Dateien (z.B. Bilder)                        |
| DATE                           | Datum (mögliche Schreibweise: YYYY-MM-DD, z.B.: 2021-12-31)                  |
| DATETIME                       | Datum + Uhrzeit                                                              |
| TIMESTAMP                      | Datum + Uhrzeit (Milli-Sekunden seit 1.1.1970 00:00 Uhr                      |
| CHAR(s)                        | Zeichenfolge mit Länge s, wird ggf. mit Leerzeichen aufgefüllt               |
| VARCHAR(s)                     | Zeichenfolge mit Maximal-Länge s, ggf. auch kürzer                           |
| TEXT                           | Sehr große Texte                                                             |

## Datenbanken verwalten

### Datenbank anlegen

```sql
CREATE DATABASE [IF NOT EXISTS] <Datenbankname>;
```

### Datenbank auswählen

```sql
USE <Datenbankname>;
```

### Datenbanken auflisten

```sql
SHOW DATABASES;
```

### Datenbank löschen

```sql
DROP DATABASE <Datenbankname>;
```

## Tabellen verwalten

### Tabellen auflisten

```sql
SHOW TABLES;
```

### Tabellenaufbau anzeigen

```sql
DESC <Tabellenname>;
```

### Tabelle anlegen

```sql
CREATE TABLE <Tabellenname> (<Attributdefinition1>, <Attributdefinition2>, ...);
```

#### Attributdefinition

```sql
    <Attributname> <Datentyp> [PRIMARY KEY] [AUTO_INCREMENT] [NOT NULL] [DEFAULT <Wert>];
```

| Option         | Beschreibung                                              |
| -------------- | --------------------------------------------------------- |
| NOT NULL       | Pflichtfeld, Wert darf nicht NULL sein                    |
| PRIMARY KEY    | Feld ist der Primärschlüssel                              |
| AUTO_INCREMENT | Zahlenfelder werden automatisch erhöht                    |
| DEFAULT        | Der Standartwert für dieses Feld wird auf "Wert" gesetzt. |

### Tabelle löschen

```sql
DROP TABLE <Tabellenname>;
```

## Bestehende Tabellen ändern

### Spalte hinzufügen

```sql
ALTER TABLE <Tabellenname> ADD <Attributdefinition>;
```

### Spalte löschen

```sql
ALTER TABLE <Tabellenname> DROP <Attributname>;
```

### Spalte ändern

```sql
ALTER TABLE <Tabellenname> MODIFY <Attributdefinition>;
```

## Daten bearbeiten

### Daten einfügen

```sql
INSERT INTO <Tabellenname> (Attributliste) VALUES (Wertliste);
```

### Daten löschen

```sql
DELETE FROM <Tabellenname>;
```

### Daten aktualisieren

```sql
UPDATE <Tabellenname> SET <Datenfeld1>=<neuer Wert1>, <Datenfeld2>=<neuer Wert2>;
```

## Where Bedingungen

Where kann an die meisten Befehle angehangen werden und sorgt so dafür, dass nur bestimmte Datensätze angesprochen werden.

```txt
Mathematische Operationen:     =, !=, >, <, >=, <=, +, -, *, /
Boolesche Operatoren:         AND, OR, NOT
Textmustervergleich:         LIKE mit % für beliebige Zeichenkette (auch leer) und _ für einzelnes Zeichen z.B.: name LIKE "H%"
Bereichsoperator:             BETWEEN x AND y
Mengenvergleich:             IN(wert1, wert2, …)
```

## Einfache Datenabfragen

```sql
SELECT * | spaltenliste | berechnung [TOP anzahl]
FROM tabelle(n)
[WHERE bedingung]
[GROUP BY spalten(n)]
[HAVING bedingung]
[ORDER BY spalte(n) [ASC | DESC]]
[LIMIT anzahl | start, anzahl];
```

## Funktionen in Abfragen

### Normale Funktionen

| Funktion                   | Beschreibung                           |
| -------------------------- | -------------------------------------- |
| CURDATE()                  | Gibt das aktuelle Datum zurück         |
| DATEDIFF(datum1, datum2)   | Berechnet die Datumsdifferenz in Tagen |
| YEAR(datum)                | Gibt das Jahr zurück                   |
| MONTH(datum)               | Gibt das Monat zurück                  |
| DAY(datum)                 | Gibt den Tag zurück                    |
| DATE_ADD(datum, intervall) | Addiert das Intervall zum Datum        |

### Aggregatsfunktionen

Sie berechnen ein Ergebnis aus den Werten einer Spalte (mehrere Datensätze).

| Funktion    | Beschreibung                                                                |
| ----------- | --------------------------------------------------------------------------- |
| COUNT(feld) | Zählt alle nicht-null-Werte innerhalb einer Spalte                          |
| COUNT(\*)   | Zählt die Datensätze/Zeilen                                                 |
| SUM(feld)   | Berechnet die Summe einer ganze Spalte                                      |
| AVG(feld)   | Berechnet den Durchschnitt einer ganze Spalte (NULL-Werte zählen nicht mit) |
| MIN(feld)   | Sucht den kleinsten Wert einer ganzen Spalte.                               |
| MAX(feld)   | Sucht den größten Wert einer ganzen Spalte.                                 |

## Gruppierungen

### Beispiel

```sql
SELECT ort, COUNT(ort) FROM kunde GROUP BY ort;

SELECT ort, COUNT(ort) FROM kunde GROUP BY ort HAVING COUNT(ort) > 100;
```

## Abfragen über mehrere Tabellen (Joins)

![SQL Joins](./SQL_Joins.svg)
[Wikipedia Commons](https://commons.wikimedia.org/wiki/File:SQL_Joins.svg)

### Inner Join

Ein Inner Join gibt die Schnittmenge der Tabellen zurück. Wenn zum Beispiel eine ID nur in einer Tabelle vorkommt wird sie nicht angezeigt.

### Left Join

Ein Left Join gibt alle Daten von der linken Tabelle zurück und zusätzlich die passende Schnittmenge der zweiten.

### Right Join

Gibt alle Daten der rechten Tabelle zurück und zusätzlich die Schnittmenge der linken.

### Full Outer Join / Full Join

Gibt alle Daten aus beiden Tabellen zurück.

## Index

Indexe werden in Relationalen Datenbanken dazu benutzt, Daten schneller abfragen zu können.

```sql
CREATE INDEX index_name
ON table_name (column1, column2, ...);
```

Mit dem Keyword `UNIQUE` können doppelte Werte ausgeschlossen werden.

```sql
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
```

## Erklärungsvideos 📹

### MySQL - The Basics // Learn SQL in 23 Easy Steps

{{< youtube Cz3WcZLRaWc >}}

### MySQL Tutorial for Beginners [Full Course]

{{< youtube 7S_tz1z_5bA >}}

### SQL Joins: Difference Between Inner/Left/Right/Outer Joins

{{< youtube zGSv0VaOtR0 >}}

## Links 🔗

[Stefan Macke - Aufgaben in der schriftlichen Prüfung](https://it-berufe-podcast.de/sql-aufgaben-in-der-schriftlichen-ihk-pruefung-anwendungsentwickler-podcast-117/)
