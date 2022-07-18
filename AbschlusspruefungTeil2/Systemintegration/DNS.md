# DNS (Domain Name System)

## Definition
DNS ist einer der wichtigsten Dienste in IP basierten Systemen / Netzwerken. Die Hauptaufgabe ist die Bearbeitung von Anfragen zur Namensauflösung. 

<br>

## Wie funktioniert DNS?

<br>

## DNS-Server Arten

### DNS-Root-Server
Autorative Nameserver für die Root-Zone. Beantwortet Fragen zur Root-Zone oder gibt eine Liste mit autorativen 
Nameservern für bestimmte Top-Level-Domains (TLD) zurück.

#### Autoritativer Nameserver
Zuständig für eine oder mehrere Zonen. Beantwortet ausschließlich Anfragen für zuständige Zonen. Autoraitativ 
bedeutet, die Informationen des Nameservers gelten als verbindlich.

#### Nicht-autoritativer Nameserver
Ist selbst nicht für eine DNS-Zone zuständig und gibt Informationen aus einer rekursiven oder iterativen 
DNS-Abfrage weiter. 

#### Caching-Server-Autorative Nameserver 
Zwischenspeicher für Informationen zu anderen Nameservern. 

#### Forwarding-Server
Leitet alle DNS-Anfragen ausnahmslos an andere Nameserver weiter.

#### Resolver

## Ablauf der Namensauflösung

<br>

## DNS-Caching

<br>

## DNS-Records
- In ASCI kodiert
- Eine Zeile ist ein Eintrag

### Record Arten

TODO

### Aufbau
```
Name        TTL  Class Type    Value
```

### Beispiel Record
```
de          3600   IN  CNAME   rr.example.net.
```