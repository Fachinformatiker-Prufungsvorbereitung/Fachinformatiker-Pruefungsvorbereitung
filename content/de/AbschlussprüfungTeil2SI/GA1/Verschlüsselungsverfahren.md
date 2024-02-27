---
title: "Verschlüsselungsverfahren"
date:
draft: false
type: docs
weight: 3
description: "Verschlüsselungsverfahren sind Verfahren, die einen Klartext in einen Geheimtext umwandeln (Verschlüsselung) und umgekehrt den Geheimtext in Klartext rückwandeln (Entschlüsselung)."
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

## Verschlüsselungsalgorithmen

### DES (Data Encryption Standard)
DES ist ein symmetrischer Verschlüsselungsalgorithmus, der in den 1970er Jahren entwickelt wurde. Er verwendet ein 56-Bit-Schlüssel und ist heutzutage nicht mehr als sicher angesehen.

### AES (Advanced Encryption Standard)
AES ist ein symmetrischer Verschlüsselungsalgorithmus, der 2001 als Nachfolger von DES eingeführt wurde. Er verwendet Schlüssellängen von 128, 192 oder 256 Bit und ist derzeit einer der sichersten Verschlüsselungsalgorithmen.

### RSA (Rivest-Shamir-Adleman)
RSA ist ein asymmetrischer Verschlüsselungsalgorithmus, der 1977 entwickelt wurde. Er verwendet ein Schlüsselpaar, bestehend aus einem Public- und einem Private-Key.

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