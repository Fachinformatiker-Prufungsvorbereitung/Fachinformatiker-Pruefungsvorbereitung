---
title: "Verschlüsselungsverfahren"
date:
draft: false
type: docs
weight: 3
description: ""
---

## symmetrische Verschlüsselung
Daten werden mit demselben Schlüssel sowohl verschlüsselt als auch entschlüsselt. Sender und Empfänger müssen dafür den Schlüssel kennen.

| Vorteile | Nachteile 
| -------- | -------- 
| + Entschlüsselung schnell  | - Für jeden Kommunikationspartner wird ein neuer Schlüssel benötigt   
| | - Der Schlüssel muss sicher dem Kommunikationspartner übergeben werden   

## asymmetrische Verschlüsselung
Sender und Empfänger verwenden unterschiedliche Schlüssel. Der Sender verschlüsselt seine Datei über den Public Key des Empfängers und der Empfänger entschlüsselt die Datei über seinen eigenen Private Key. Im gegensatz zu dem Public Key darf der Private Key **nicht** weitergegeben werden.

| Vorteile | Nachteile 
| -------- | -------- 
| + Schlüsselaustausch über unsichere Netzwerke möglich  | - Entschlüsselung rechenintensiv (langsamer)
| + Für unendlich viele Kommunikationspartner wird nur ein Schlüsselpaar benötigt | - Es werden zwei Schlüssel benötigt

Ein bekanntes Beispiel für die asymmetrische Verschlüsselung ist das Programm PrettyGoodPrivacy (PGP).

## digitale Zertifikate

Digitale Zertifikate sind ein elektronischer Echtheitsnachweis, der von einer Zertifizierungsstelle ausgestellt wurde.

Eigenschaften eines digitalen Zertifikats:
- Namen des Zertifikatsinhabers
- Zertifizierungsstelle
- Gültigkeitsdauer
- Seriennummer
- öffentlicher Schlüssel des Inhabers
- digitale Signatur der Zertifizerungsstelle (um die Echtheit des Zertifikates zu verifizieriern)

Nutzungsbeispiele digitaler Zertifikate:
- verschlüsselte Verbindungen zwischen Browser und Webserver per HTTPS (SSL-Zertifikat)
- Signierung von E-Mails
- Signierung von digitalen Dokumenten
- Signierung von Software

Um ein digitales Zertifikat nutzen zu können, muss man es bei einer Zertifizierungsstelle beantragen und auf dem Server installieren.