---
title: "VPN-Arten und Begriffe"
draft: false
type: docs
weight: 8
description: "Begrifflichkeiten rund um Virtual Private Networks (VPN) kurz und bündig zusammengefasst."
---

## Definition VPN

Ein **VPN (Virtual Private Network)** ist eine Technologie, die einen sicheren **Tunnel** durch das Internet schafft. Dieser **Tunnel** verschlüsselt den Datenverkehr zwischen einem Gerät und einem VPN-Server und maskiert dadurch deine IP-Adresse. Unverschlüsselte Verbindungen können so sicherer gemacht werden. Wenn der VPN-Server keine Log-Dateien oder ähnliches erzeugt kann die IP Adresse verschleiert werden. 

## Remote-Access-VPN / Client to Site VPN

- **Klassisches VPN** für verschiedene Anwendungszwecke, z.B. "Homeoffice".
Ermöglicht sicheren Zugriff auf ein privates Netzwerk über das Internet, z.B. von zu Hause auf das Firmennetzwerk.
Benötigt typischerweise eine VPN-Client-Software oder eine integrierte VPN-Funktion auf dem Betriebssystem.

- **Alternativ** kann der Zugriff über einen Browser erfolgen (SSL VPN), ohne zusätzliche Software. 

- Häufig verwendete Protokolle: IPSec, L2TP, OpenVPN, WireGuard, SSTP, IKEv2   

## Site to Site VPN

- Verbindet **ganze Netzwerke** miteinander - z.B. zwei Firmenstandorte 
- Kann **intranetbasiert (innerhalb eines Unternehmens)** oder **extranetbasiert (zwischen Partnerunternehmen)** sein.
- Nutzt ein sicheres Gateway um mehrere Netzwerke an verschiedenen Standorten zu verbinden.  

## Sonstige VPN-Arten

- **Mobile-VPN** - VPN auf dem Smartphone, bleibt verbunden, auch wenn z. B. von WLAN auf mobile Daten gewechselt wird.
- **Cloud-VPN** - Ermöglicht den Zugriff auf cloudbasierte Ressourcen mit verbesserter Skalierbarkeit und reduzierter lokaler Netzwerkinfrastrukturbelastung. Für Cloud-Dienste oder Server, z. B. AWS, Azure usw.
- **Double VPN** - Leitet den Internetverkehr durch zwei VPN-Server, wodurch eine zusätzliche Verschlüsselungsebene entsteht und die Rückverfolgbarkeit der ursprünglichen IP-Adresse erheblich erschwert wird.
