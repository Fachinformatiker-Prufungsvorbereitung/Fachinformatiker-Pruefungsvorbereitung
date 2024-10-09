---
title: "USV - Unterbrechungsfreie Stromversorgung"
date: 2022-10-04T13:16:00-06:00
draft: false
type: docs
description: "Beschreibung der USV-Typen und der Haltedauer Berechnung"
---

## Allgemein

Eine USV ist ein Stromversorgungssystem mit Energiespeicher, das bei einem Ausfall der Stromzufuhr eine Versorgung sicherstellt.
Es gibt generell drei Arten von USV's

- **VFD** (Voltage Frequency Dependent from Mains Supply)
  - Standby- oder Offline-USV genannt
- **VI** (Voltage Independent from Mains Supply)
  - Line Interactive-USV oder Netzinteraktive USV genannt
- **VFI** (Voltage and Frequency Independent from Mains Supply)
  - Online-USV genannt

## Beschreibung

### Offline-USV (VFD)

Bei der Verwendung dieser Bauart wird im Normalbetrieb der Strom direkt vom Netz an die angeschlossenen Geräte weitergeleitet. Sollte die Netzversorgung abbrechen, so schaltet die USV auf Akkubetrieb um.

![VFD USV](./vfd-usv.png)  
[Wikipedia Commons](https://upload.wikimedia.org/wikipedia/commons/3/3b/UPS_VFD_-_Offline_UPS_%28German%29.svg)

#### Vor- und Nachteile

| Vorteile                              | Nachteile                    |
| ------------------------------------- | ---------------------------- |
| Sehr gutes Preis-Leistungs-Verhältnis | Verzerrtes Signal            |
| Keine Belüftung notwendig             | Schwankungen bei Lastwechsel |
| Hohe Lebenserwartung der Batterie     | Hohe Umschaltzeiten          |

#### Anwendungsbereich

- Einzelne Computer
- Peripheriegeräte

---

### Line-Interactive-USV (VI)

Bei dieser USV handelt es sich um eine verbesserte Variante der Offline-USV.
Eine Line-Interactive-USV verfügt über ein System, welches stets dafür sorgt, dass die Ein- und Ausgangsspannungen gemessen werden, sowie der Akku konstant über einen Gleichrichter geladen wird. Im Bedarfsfall kann sie somit schneller zugeschaltet werden.

![VI USV](./vi-usv.png)  
[Wikipedia Commons](https://upload.wikimedia.org/wikipedia/commons/8/83/VFI_UPS_-_Online_UPS_%28German%29.svg)

#### Vor- und Nachteile

| Vorteile                         | Nachteile                                                   |
| -------------------------------- | ----------------------------------------------------------- |
| Gutes Preis-Leistungs-Verhältnis | Filter notwendig                                            |
| Kurze Schaltzeiten               | ZusätzlicherTransformator für Spitzenausgleich erforderlich |
|                                  | Hohe Umschaltzeiten                                         |

#### Anwendungsbereich

- Computer
- Kleine Server-System
- Netzwerke / Telekommunikationsanlagen

---

### Online-USV (VFI)

Bei der Online-USV wird im Normalbetrieb als auch im Falle eines Netzausfalles die angeschlossenen Geräte über einen Wechselrichter versorgt, während ein Gleichrichter im Normalfall sowohl den Wechselrichter als auch die Akkus versorgt.
Fällt die Netzversorgung aus, wird sofort, ohne jede Verzögerung, der Wechselrichter von den Akkus versorgt. Für Servicezwecke verfügen Online-USV's über eine Bypass-Schaltung. Mit dieser Schaltung können angeschlossene Geräte entkoppelt werden, damit die USV abgeschaltet werden kann.

![VFI USV](./vfi-usv.png)  
[Wikipedia Commons](https://upload.wikimedia.org/wikipedia/commons/8/83/VFI_UPS_-_Online_UPS_%28German%29.svg)

#### Vor- und Nachteile

| Vorteile                                  | Nachteile                       |
| ----------------------------------------- | ------------------------------- |
| Wahre unterbrechungsfreie Stromversorgung | Lüftung benötigt                |
| Keine Schaltzeit                          | Relativ hoher Anschaffungspreis |
| Spannung und Frequenz sind absolut stabil |                                 |

#### Anwendungsbereich

- Sensible Netzwerkserver
- Umgebungen mit häufigen Störungen im Versorgungsnetz

## Hot-Swap
Hot-Swap bedeutet übersetzt "heißer Tausch" und bezeichnet den Wechsel von Systemkomponenten im laufenden Betrieb. Im Fall einer USV wäre es die Batterie, jedoch unterstützen nicht alle USVs einen Hot-Swap.

## Haltedauer einer USV

Um die Haltedauer einer USV berechnen zu können, müssen wir ein paar Begriffe klären.

### Wirkleistung

- Als **Wirkleistung** wird der **reale** Stromverbrauch, der angeschlossenen Geräte, bezeichnet. Gemessen in **Watt (W)**.

### Scheinleistung

- Als **Scheinleistung** wird die Summe von **Wirkleistung** und **Blindleistung** bezeichnet.
  **Blindleistung** ist jene die zwischen Erzeuger und Verbraucher übertragen wird.
  **Scheinleistung** wird in **Voltampere (VA = Volt \* Ampere)** gemessen.

### Autonomiezeit

- Die **Autonomiezeit** drück aus wie lange die angeschlossenen Geräte bei einem Netzausfall uneingeschränkt weiter benutzt werden können.


### Beispielaufgaben

#### 1. Aufgabe:

Ein Unternehmen betreibt ein Rechenzentrum, das aus vier Racks besteht. Jedes Rack benötigt eine Leistung von 2,75 kW. Das Rechenzentrum ist mit einer USV-Anlage mit einer Nennleistung von 15 kVA abgesichert. Die USV-Anlage wird mit einer Blei-Säure-Batterie betrieben, die eine Kapazität von 6 kWh hat.

a) Berechnen Sie die Autonomiezeit der USV in vollen Minuten für den Fall, dass die Akkumulatoren bei Netzausfall zu 100% geladen sind.

b) Wie verändert sich die Haltedauer der USV-Anlage, wenn ein Rack ausgeschaltet wird?

c) Die Wartungshistorie der USV-Anlage zeigt, dass in den letzten 365 Tagen vier Störungen aufgetreten sind, die jeweils zu einem Ausfall der USV-Anlage geführt haben. Die Ausfallzeiten betrugen 2 Stunden, 4 Stunden, 6 Stunden und 8 Stunden. Berechnen Sie die Verfügbarkeit der USV-Anlage in diesem Zeitraum.


##### Lösung
###### a) 
Die Haltedauer der USV-Anlage kann mit der Formel `Haltedauer = Batteriekapazität / Leistung` berechnet werden.
```txt
Haltedauer = 6 kWh / 11 kW = 0,54 Stunden = 32 Minuten 
```

###### b) 
Wenn ein Rack ausgeschaltet wird, beträgt die angeschlossene Last noch 3 * 2,75 kW = 8,25 kW. Die neue Haltedauer der USV-Anlage kann dann mit der gleichen Formel wie in a) berechnet werden:
```txt
Haltedauer = 6 kWh / 8,25 kW = 0,73 Stunden = 43 Minuten 
```

###### c)
Die Verfügbarkeit der USV-Anlage kann mit der Formel `Verfügbarkeit = (Gesamtzeit - Ausfallzeit) / Gesamtzeit * 100%` berechnet werden, wobei
`Gesamtzeit = 365 * 24 Stunden = 8760 Stunden` 
`Ausfallzeit = Summe der Ausfallzeiten der USV-Anlage in den letzten 365 Tagen = 2 + 4 + 6 + 8 = 20 Stunden`

Daraus ergibt sich:
```txt
Verfügbarkeit = (8760 - 20) / 8760 * 100% = 99,78% 
```

---

## Links 🔗

[Wikipedia Unterbrechungsfreie Stromversorgung](https://de.wikipedia.org/wiki/Unterbrechungsfreie_Stromversorgung)  
