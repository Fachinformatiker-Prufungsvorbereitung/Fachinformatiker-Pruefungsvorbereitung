---
title: "Virtualisierung"
draft: false
type: docs
weight: 6
description: "Alles was du über Virtualisierung zur Prüfungsvorbereitung zum Fachinformatiker für Systemintegration wissen musst."
---

Bei der Virtualisierung wird eine virtuelle Computingumgebung bereitgestellt statt einer physischen Umgebung.

## Virtuelle Maschinen (VMs) und Container

Containervirtualisierung ist eine Technologie, die es ermöglicht, Anwendungen und deren Abhängigkeiten in einer isolierten Umgebung (Container) auszuführen, die beliebteste Software für Containervirtualisierung ist Docker.
Virtuelle Maschinen virtualisieren dagegen ein komplettes Betriebssystem.

Der Hauptunterschied besteht darin, wie der Kernel genutzt wird. Bei virtuellen Maschinen wird der Kernel jedes Mal mit virtualisiert, während sich Container den Kernel der Containerisierungsmaschine teilen und dadurch weniger Ressourcen benötigen.

## Hypervisor

Ein Hypervisor ist eine Software, die virtuelle Maschinen (VMs) erstellt und ausführt. Es übernimmt die Ressourcenverwaltung bzw. weist den einzelnen virtuellen Maschinen Arbeitsspeicher, Festplattenspeicher, Netzwerkkomponenten oder Prozessorleistung zu. So können auf einem Host-System mehrere Virtualisierungen (VMs) laufen ohne dass diese sich gegenseitig behindern und die benötigten Kapazitäten zur Verfügung haben.

### Typ 1 Hypervisor

Ein Typ 1 Hypervisor wird direkt auf der Host-Hardware ausgeführt um die Gast-Betriebssysteme zu verwalten, Beispiele hierfür sind KVM, Microsoft Hyper-V oder VMware vSphere.

### Typ 2 Hypervisor

Ein Typ 2 Hypervisor wird auf einem konventionellen Betriebssystem als Software ausgeführt und abstrahiert das Gast-Betriebssystem vom Host-Betriebssystem, Beispiele hierfür sind VMware Workstation oder VirtualBox.
