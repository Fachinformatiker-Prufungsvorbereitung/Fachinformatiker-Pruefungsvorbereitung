# DNS (Domain Name System)

## Wie funktioniert DNS?

DNS ist einer der wichtigsten Dienste in IP basierten Systemen / Netzwerken. Die Hauptaufgabe ist die Bearbeitung von Anfragen zur Namensauflösung.
DNS steht für Domain Name System.
<br>

## DNS-Server Arten

### DNS-Root-Server

DNS-Root-Server ist ein autoritativer Nameserver für die Root-Zone. Beantwortet Fragen zur Root-Zone oder gibt eine Liste mit autoritativen Nameservern für bestimmte Top-Level-Domains (TLD) zurück.

### Autoritativer Nameserver

Zuständig für eine oder mehrere Zonen. Beantwortet ausschließlich Anfragen für zuständige Zonen. Autoritativ bedeutet, die Informationen des Nameservers gelten als verbindlich.

### Nicht-autoritativer Nameserver

Ist selbst nicht für eine DNS-Zone zuständig und gibt Informationen aus einer rekursiven oder iterativen
DNS-Abfrage weiter.

### Caching-Server-Autoritativ Nameserver

Zwischenspeicher für Informationen zu anderen Nameservern.

### Forwarding-Server

Leitet alle DNS-Anfragen ausnahmslos an andere Nameserver weiter.

### Resolver

Die meisten DNS-Server sind selbst keine autoritativen Server sondern nur Resolver mit Caching oder Forwarding Funktionalität. Resolver befinden sich meist auf dem Computer selbst oder im lokalen Netzwerk.
<br>

## Ablauf der Namensauflösung

<!-- TODO -->

<br>

## DNS-Caching

<!-- TODO -->

<br>

## DNS-Records

- In ASCI kodiert
- Eine Zeile ist ein Eintrag

### Record Arten

<!-- TODO -->

### Aufbau

```
Name        TTL  Class Type    Value
```

### Beispiel Record

```
de          3600   IN  CNAME   rr.example.net.
```

<!--
DNS ZONE?
TLDs / Top Level Domains
DNS GUI Beispiel Hetzner
Iterative Rekursive DNS Auflösung
ICANN
 -->
