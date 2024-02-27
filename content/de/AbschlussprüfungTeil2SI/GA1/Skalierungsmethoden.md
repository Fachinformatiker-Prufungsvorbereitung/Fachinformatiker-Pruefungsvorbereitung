---
title: "Skalierungsmethoden"
draft: false
type: docs
weight: 4
description: "Alles was man über Skalierungsmethoden zur Prüfungsvorbereitung für die Fachinformatiker Ausbildung wissen muss."
---

Skalierungsmethoden sind Methoden um die Leistung von IT-Systemen zu erhöhen und waren Teil der Abschlussprüfung Sommer 2023, hier wurden lediglich die Konzepte der Methoden abgefragt.

## Horizontale Skalierung (Scale out)

Die horizontale Skalierung bezieht sich auf das Hinzufügen von mehreren Servern, die anschließend gleichartige Anfragen erfüllen, um die Last zu verteilen. Dies ist dynamisch, ohne Ausfallzeiten möglich.

## Vertikale Skalierung (Scale up)

Die vertikale Skalierung ist das Hinzufügen von Ressourcen wie CPU, Arbeitsspeicher (RAM) und Speicher zu einem bereits bestehenden Server, um dessen Leistung zu verbessern. Dies soll hervorsehbare Lastspitzen durch ausreichend Performance decken und ist meist nicht ohne Ausfallzeiten möglich.

## Blue-Green Deployment

Das Blue-Green Deployment wird zur Software-Bereitstellung genutzt. Dabei existieren immer zwei Umgebungen, die Live-Umgebung und eine andere, die zum Weiterentwickeln bzw. Testen existiert. Angenommen das Update, welches auf der Testumgebung entwickelt wurde, ist bereit, veröffentlicht zu werden. Nun werden unterbrechungsfrei über einen Loadbalancer die Umgebungen getauscht, wodurch die Testumgebung zur Live-Umgebung wird.
