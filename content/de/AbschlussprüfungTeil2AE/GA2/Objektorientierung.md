---
title: "Objektorientierung"
date: 2022-09-04T22:40:55-06:00
draft: false
type: docs
description: "Die Objektorientierung ist eine Programmierungstechnik mit bestimmten Konzepten. So liegt der Fokus dieser Technik auf einem bestimmten Objekt."
weight: 1
---

⚠️Achtung⚠️ nicht alle Programmiersprachen weisen dieses Paradigma auf! (Zum Beispiel: Funktionale Programmiersprachen)

## Unterschied zwischen Objekt / Instanz und Klasse 📘

### Klasse 📘

Eine Klasse ist ein Bauplan. In diesem Bauplan werden Methoden, Funktionen und Attribute festgelegt.

### Objekt / Instanz  🚗

Ein Objekt wird aus einer Klasse erschaffen quasi nach dem Bauplan gebaut. Dies ist **in der Objektorientierung** der Baustein der Daten und Funktionalitäten dann tatsächlich auch ausführt bzw. trägt.

## Kapselung 💊

Die in den Objekten enthaltenen Methoden, Funktionen und Attribute werden gekapselt. So wird der Zugriff auf diese eingeschränkt. Dies passiert durch sogenannte Zugriffsbeschränkungen (public, private). So kann sichergestellt werden, dass das Objekt immer in einem korrekten Zustand ist. Außerdem werden so ungewollte Fehler vermieden. Der interne Code wird quasi abgeschottet und der Zugriff darauf erfolgt nur über darauf ausgelegte Schnittstellen.

### Beispiel

```csharp
public class Pen
{
    private bool _canStillWrite;

    public bool GetCanStillWrite()            // Public: Alle dürfen den Wert von "_canStillWrite" abfragen
    {
        return _canStillWrite;
    }
    
    private void SetCanStillWrite(bool value) // Privat: Nur innerhalb dieser Klasse darf der Wert gesetzt werden
    {
        _canStillWrite = value;
    }
}
```

## Vererbung 🔗

Bei der Vererbung können Attribute und Methoden zwischen Klassen hierarchisch ausgetauscht und ergänzt werden. Das bedeutet wenn eine Klasse von einer Basisklasse erbt dann übernimmt die Klasse alle Attribute sowie Methoden der Basisklasse. Sie hat diese geerbt. Die erbende Klasse kann auch Subklasse genannt werden.

## Polymorphie

Die Eigenschaften der Polymorphie treten in Zusammenhang mit Vererbung und Interfaces auf. Polymorphie ist wenn einer Variable unterschiedliche Typen zugewiesen werden können und dann je nach Typ eine andere Implementierung aufgerufen wird.

### Beispiel

```csharp
public class Shape
{
    // A few example members
    public int X { get; private set; }
    public int Y { get; private set; }
    public int Height { get; set; }
    public int Width { get; set; }

    // Virtual method
    public virtual void Draw()
    {
        Console.WriteLine("Performing base class drawing tasks");
    }
}

public class Circle : Shape
{
    public override void Draw()
    {
        // Code to draw a circle...
        Console.WriteLine("Drawing a circle");
        base.Draw();
    }
}
public class Rectangle : Shape
{
    public override void Draw()
    {
        // Code to draw a rectangle...
        Console.WriteLine("Drawing a rectangle");
        base.Draw();
    }
}
public class Triangle : Shape
{
    public override void Draw()
    {
        // Code to draw a triangle...
        Console.WriteLine("Drawing a triangle");
        base.Draw();
    }
}
```

## Links 🔗

[Wikipedia](https://de.wikipedia.org/wiki/Objektorientierung)  
[Häufige Fragen im Fachgespräch zu Objektorientierung](https://it-berufe-podcast.de/haeufige-fragen-im-fachgespraech-objektorientierung-anwendungsentwickler-podcast-2/)  
