---
title: "DNS (Domain Name System)"
date: 2022-08-25T10:37:50-06:00
draft: false
type: docs
description: "DNS ist Namensauflösung in IP basierten Netzwerken und Systemen."
---

## Einleitung
Das Domain Name System ([DNS](https://webdeasy.de/domain-name-system-dns-grundlagen/)) ist eine der grundlegenden Technologien des Internets und spielt eine zentrale Rolle bei der Auflösung von Domainnamen in IP-Adressen. DNS ermöglicht es Computern und anderen Geräten, mithilfe von leicht verständlichen Domainnamen auf Ressourcen im Internet zuzugreifen, anstatt sich an die komplizierten IP-Adressen erinnern zu müssen. DNS ist eine verteilte Datenbank, die von Millionen von Servern auf der ganzen Welt verwaltet wird und die die meisten von uns jeden Tag nutzen, ohne es zu merken.

<br>

## Was ist eine DNS-Zone?

Eine [DNS-Zone](https://www.cloudflare.com/learning/dns/glossary/dns-zone/) ist ein Bereich im DNS-Namensraum. Die DNS-Zone beinhaltet mindestens eine Domain und kann eine oder mehrere Subdomains enthalten. (Subdomains können auch als eigene Zonen realisiert werden)

<br>

## DNS-Records

### Resource Record Arten (Beispielhaft)

| Type  | Beschreibung                                                                                                       |
| ----- | -------------------------------------------------------------------------------------------------------------------|
| A     | Enthält eine IPv4-Adresse.                                                                                         |
| AAAA  | Enthält eine IPv6-Adresse.                                                                                         |
| CNAME | Ein CNAME ist ein Alias für eine andere Domain. Er referenziert auf eine Domain anstatt auf eine IP-Adresse.       |
| MX    | Der Mail-Exchange-Record verweist auf einen Mail-Server.                                                           |
| NS    | Ein Name-Server Eintrag verweist auf einen anderen NS, welcher als autoritativer Name-Server für die Zone dient.   |

Weitere Records: [Click](https://en.wikipedia.org/wiki/List_of_DNS_record_types)

### Aufbau

```
Name        TTL  Class Type    Value
```

### Beispiel Record

```
de          3600   IN  CNAME   rr.example.net.
```


### PTR
Ein PTR-Record (Pointer-Record) ist ein DNS-Record, der verwendet wird, um eine IP-Adresse in einen Hostnamen aufzulösen. Im Gegensatz zu anderen DNS-Records, die einen Hostnamen in eine IP-Adresse auflösen, dient der PTR-Record dazu, die umgekehrte DNS-Auflösung durchzuführen. Der PTR-Record wird normalerweise von Internetdienstanbietern verwendet, um ihren Kunden einen Hostnamen zuzuweisen und es anderen Netzwerken zu ermöglichen, den Namen einer IP-Adresse zu ermitteln. 

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

<br>

## DNS-Sicherheit
### DNS-Spoofing
DNS-Spoofing ist eine Methode, bei der Angreifer die DNS-Server manipulieren, um Benutzer auf gefälschte Websites umzuleiten und sensible Informationen zu stehlen. 
DNS-Spoofing funktioniert, indem der Angreifer die DNS-Server, auf die das Opfer zugreift, manipuliert. Der Angreifer kann beispielsweise eine gefälschte DNS-Server-Adresse an das Opfer senden, indem er eine DNS-Response-Paket fälscht. Dieses gefälschte DNS-Response-Paket kann dann an das Opfer weitergeleitet werden, wodurch es auf eine gefälschte Website umgeleitet wird, anstatt auf die tatsächliche Website.



### DNSSEC
DNSSEC ist ein Sicherheitsstandard, der die DNS-Antworten digital signiert, um sicherzustellen, dass sie von einem autoritativen DNS-Server stammen und nicht manipuliert wurden. Durch die Verwendung von DNSSEC können DNS-Spoofing-Angriffe verhindert werden.

<br>

## DNS-Tools
Es gibt eine Vielzahl von DNS-Tools, die für die Analyse und Verwaltung von DNS-Systemen eingesetzt werden können. Einige dieser Tools umfassen:

#### dig: 
Dies ist ein leistungsfähiges Befehlszeilenwerkzeug, das für die DNS-Abfrage und -Analyse verwendet wird. Mit dig können Sie DNS-Informationen abfragen, einschließlich A-, AAAA-, MX- und CNAME-Records, und die Antwortzeiten der DNS-Server messen. Es ist in der Regel auf Linux- und Unix-basierten Systemen vorinstalliert, kann aber auch für Windows heruntergeladen werden.

Beispiel:
``` bash
dig @1.1.1.1 example.com A
dig example.com AAAA
```

#### nslookup:
Ein weiteres nützliches DNS-Tool ist nslookup. Es ist ein Befehlszeilenwerkzeug, mit dem Sie DNS-Informationen abfragen und analysieren können, einschließlich A-, MX-, NS-, PTR- und TXT-Records. Nslookup wird oft für die Fehlerbehebung bei DNS-Systemen verwendet. Es ist auf den meisten Betriebssystemen, einschließlich Windows, MacOS und Linux, vorinstalliert.

``` bash
nslookup -type=MX example.com
```

#### dnstracer:
Dieses Tool wird verwendet, um den Pfad einer DNS-Abfrage zu verfolgen, indem es die IP-Adressen der DNS-Server aufzeichnet, die für die Auflösung der Abfrage verantwortlich sind. Es ist in der Regel auf Linux- und Unix-basierten Systemen vorinstalliert, kann aber auch für Windows heruntergeladen werden.

``` bash
dnstracer -4 -o example.com
```