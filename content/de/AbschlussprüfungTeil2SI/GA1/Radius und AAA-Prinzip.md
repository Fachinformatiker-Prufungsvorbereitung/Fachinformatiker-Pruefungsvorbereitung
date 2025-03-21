---
title: "RADIUS und AAA-Prinzip"
draft: false
type: docs
weight: 6
description: "Grundlegende Informationen über das RADIUS-Protokoll und das AAA-Prinzip."
---
Im Bereich der **Netzwerksicherheit** und der Authentifizierung,  
spielen **RADIUS** (Remote Authentication Dial-In User Service) und das **AAA-Prinzip** eine 
zentrale Rolle. Sie sorgen für eine sichere und nachvollziehbare Authentifizierung und Autorisierung und sind für die Abschlussprüfung immer wieder relevant.  

## AAA-Prinzip
Das AAA-Modell beschreibt drei wesentliche Funktionen in Netzwerken:
1. Authentication - Identitätsprüfung eines Benutzers oder Gerätes (z.B. mit Benutzername/ Passwort oder Zertifikaten)
2. Authorization - Festlegung, auf welche Ressourcen der Benutzer oder das Gerät nach erfolgreicher Authentication Zugriff hat
3. Accounting - Protokollierung und Nachverfolgung der Aktivitäten des Benutzers oder Gerätes im Netzwerk

Diese drei Aspekte sorgen für eine sichere und nachvollziehbare **Zugriffskontrolle**. 


## RADIUS
RADIUS ist ein **Netzwerkprotokoll**, das für AAA-Dienste verwendet wird. 
Es arbeitet nach dem Client-Server-Prinzip und wird oft in Kombination mit VPNs, WLANs und Netzwerkzugriffskontrollsystemen genutzt. 

**Komponenten eines RADIUS-Systems:**

 - RADIUS-Client - Das Netzwerkgerät (z.B. Access-Point oder VPN-Server) sendet die Authentifizierungsanfrage 
 - RADIUS-Server - Prüft die Authentifizierungsanfrage anhand einer Benutzer-Datenbank und gibt eine Autorisierungsentscheidung zurück
 - Benutzerdatenbank - kann lokal oder über externe System wie z.B. Active Directory oder LDAP verwaltet werden

**RADIUS-Ablauf:**

 - Benutzer sendet Anmeldeinformationen an einen **RADIUS-Client**
 - Der **RADIUS-Client** leitet die Anfrage an den **RADIUS-Server** weiter
 - Der **RADIUS-Server** überprüft die Anmeldeinformationen in der **Benutzerdatenbank** und gibt eine Zulassung oder Ablehnung zurück
 - Wenn die Authentifizierung erfolgreich ist, kann der **RADIUS-Server** Autorisierungsrichtlinien anwenden (z.B. VLAN-Zuweisung)
 - Der **RADIUS-Server** kann Aktivitäten protokollieren (Accounting)

**Vorteile von RADIUS:**

 - Zentrale Benutzerverwaltung (leichte Verwaltbarkeit)
 - Erhöhte Sicherheit
 - Skalierbarkeit
 - Kombinierbar mit anderen Technologien (z.B. AD, LDAP)

