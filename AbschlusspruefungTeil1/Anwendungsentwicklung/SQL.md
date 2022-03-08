# SQL / MySQL
In diesem Fall wird der SQL-Dialekt MySQL beschrieben.

<br>

## Datentypen

|Typ|Beschreibung|
|---|------------|
|INT, INTEGER|Ganze Zahlen, 32 Bit, -2 Mrd. bis +2 Mrd.|
|SMALLINT|Ganze Zahlen, 16 Bit, -32768 bis 32767|
|BIGINT|64 Bit, -263 bis 263-1 (falls vorhanden)|
|DECIMAL(p,s)|Festkommatyp (p Dezimalstellen insgesamt, s Dezimalstellen hinter dem Komma)|
|FLOAT|Gleitkommatyp, 32 Bit|
|DOUBLE|Gleitkommatyp, 64 Bit|
|BOOLEAN|False, True (0 oder 1)|
|BLOB, (LONG BLOB, MEDIUM BLOB)|Binary large object, Für binäre Dateien (z.B. Bilder)|
|DATE|Datum (mögliche Schreibweise: YYYY-MM-DD, z.B.: 2021-12-31)|
|DATETIME|Datum + Uhrzeit|
|TIMESTAMP|Datum + Uhrzeit (Milli-Sekunden seit 1.1.1970 00:00 Uhr|
|CHAR(s)|Zeichenfolge mit Länge s, wird ggf. mit Leerzeichen aufgefüllt|
|VARCHAR(s)|Zeichenfolge mit Maximal-Länge s, ggf. auch kürzer|
|TEXT|Sehr große Texte|

<br>

## Datenbanken verwalten
### Datenbank anlegen
    CREATE DATABASE [IF NOT EXISTS] <Datenbankname>;

### Datenbank auswählen
    USE <Datenbankname>;

### Datenbanken auflisten
    SHOW DATABASES;

### Datenbank löschen
    DROP DATABASE <Datenbankname>;

<br>

## Tabellen verwalten
### Tabellen auflisten
    SHOW TABLES;

### Tabellenaufbau anzeigen
    DESC <Tabellenname>;

### Tabelle anlegen
    CREATE TABLE <Tabellenname> (<Attributdefinition1>, <Attributdefinition2>, ...);

#### Attributdefinition
    <Attributname> <Datentyp> [PRIMARY KEY] [AUTO_INCREMENT] 
	[NOT NULL] [DEFAULT <Wert>];

|Option|Beschreibung|
|------|------------|
|NOT NULL|Pflichtfeld, Wert darf nicht NULL sein|
|PRIMARY KEY|Feld ist der Primärschlüssel|
|AUTO_INCREMENT|Zahlenfelder werden automatisch erhöht|
|DEFAULT|Der Standartwert für dieses Feld wird auf "Wert" gesetzt.|

### Tabelle löschen
    DROP TABLE <Tabellenname>;

<br>

## Bestehende Tabellen ändern
### Spalte hinzufügen
    ALTER TABLE <Tabellenname> ADD <Attributdefinition>;

### Spalte löschen
    ALTER TABLE <Tabellenname> DROP <Attributnamen>;

### Spalte ändern
    ALTER TABLE <Tabellenname> MODIFY <Attributdefinition>;