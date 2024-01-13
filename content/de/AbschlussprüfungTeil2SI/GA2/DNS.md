---
title: "DNS (Domain Name System)"
date: 2022-08-25T10:37:50-06:00
draft: false
type: docs
description: "DNS ist Namensauflösung in IP basierten Netzwerken und Systemen."
---

[DNS](https://webdeasy.de/domain-name-system-dns-grundlagen/) ist einer der wichtigsten Dienste in IP basierten Systemen / Netzwerken. Die Aufgabe von DNS ist die Bearbeitung von Anfragen zur Namensauflösung.

```
example.com <= => 14.34.56.123
```

<br>

## Was ist eine DNS-Zone?

Eine [DNS-Zone](https://www.cloudflare.com/learning/dns/glossary/dns-zone/) ist ein Bereich im DNS-Namensraum. Die DNS-Zone beinhaltet mindestens eine Domain und kann eine oder mehrere Subdomains enthalten. (Subdomains können auch als eigene Zonen realisiert werden)

<br>

## DNS-Records

### Record Arten (Beispielhaft)

| Type  | Beschreibung                                                                                                 |
| ----- | ------------------------------------------------------------------------------------------------------------ |
| CNAME | Ein CNAME ist ein Alias für eine andere Domain. Er referenziert auf eine Domain anstatt auf eine IP-Adresse. |
| MX    | Der Mail-Exchange-Record verweist auf einen Mail-Server.                                                     |
| A     | Einer der simpelsten Record-Types. Er wandelt eine Domain in eine IPv4-Adresse um.                           |
| NS    | Ein Name-Server Eintrag verweist auf weitere DNS-Server welche bei der Auflösung unterstützen.               |

Weitere Records: [Click](https://en.wikipedia.org/wiki/List_of_DNS_record_types)

### Aufbau

```
Name        TTL  Class Type    Value
```

### Beispiel Record

```
de          3600   IN  CNAME   rr.example.net.
```

<br>

## Top Level Domains (TLDs)

TlDs sind die Domains in der DNS-Root Zone. Eine volle Liste kann hier gefunden werden: [Click](https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains)

### Beispiele

| TLD     | Use-Case                                          |
| ------- | ------------------------------------------------- |
| com     | **com**mercial                                    |
| org     | **org**anization                                  |
| net     | **net**work                                       |
| z.B. de | Länderspezifisch. In diesem Fall: **De**utschland |

<br>

## Iterative vs Rekursive DNS-Auflösung

### Iterative DNS-Auflösung

Bei der [Iterativen DNS-Auflösung](https://de.wikipedia.org/wiki/Rekursive_und_iterative_Namensaufl%C3%B6sung) antwortet der Server mit einem oder mehreren Verweisen, oder einem Resource Record auf einem anderen Nameserver.

### Rekursive DNS-Auflösung

Im Gegensatz zur Iterativen-Auflösung holt sich der Server bei der [Rekursiven DNS-Auflösung](https://de.wikipedia.org/wiki/Rekursive_und_iterative_Namensaufl%C3%B6sung) die erforderlichen Daten selbst und schickt nicht nur einen Verweis zurück sonder das Ergebnis seiner Anfrage.

<br>

## DNS-Server Arten

### DNS-Root-Server

Der [DNS-Root-Server](https://www.cloudflare.com/learning/dns/glossary/dns-root-server/) ist ein autoritativer Nameserver für die Root-Zone. Beantwortet Fragen zur Root-Zone oder gibt eine Liste mit autoritativen Nameservern für bestimmte Top-Level-Domains (TLD) zurück.

### Autoritativer Nameserver

Der [Autoritative-Nameserver](https://nullrouted.space/2021/11/03/understanding-dns-authoritative-nameservers/) ist zuständig für eine oder mehrere Zonen. Beantwortet ausschließlich Anfragen für zuständige Zonen. Autoritativ bedeutet, die Informationen des Nameservers gelten als verbindlich.

### Nicht-autoritativer Nameserver

Der [Nicht-autoritativer Nameserver](https://tecadmin.net/authoritative-non-authoritative-dns-server/) ist selbst nicht für eine DNS-Zone zuständig und gibt Informationen aus einer rekursiven oder iterativen
DNS-Abfrage weiter.

### Caching Nameserver

Der [Caching Nameserver](https://doxfer.webmin.com/Webmin/Caching_Nameserver) speichert Informationen von anderen Nameservern zwischen sodass sich die Zugriffszeiten deutlich verringern.

### Forwarding Nameserver

Ein [Forwarding Nameserver](https://social.dnsmadeeasy.com/blog/understanding-dns-forwarding/) leitet alle DNS-Anfragen ausnahmslos an andere Nameserver weiter.

### Resolver

Die meisten DNS-Server sind selbst keine autoritativen Server sondern nur [Resolver](https://www.computerhope.com/jargon/d/dns-resolver.htm) mit Caching oder Forwarding Funktionalität.
