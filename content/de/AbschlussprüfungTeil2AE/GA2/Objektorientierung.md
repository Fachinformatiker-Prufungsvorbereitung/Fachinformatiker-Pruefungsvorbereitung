---
title: "Objektorientierung"
date: 2022-09-04T22:40:55-06:00
draft: false
type: docs
weight: 1
---

Die Objektorientierung ist eine Programmierungstechnik mit bestimmten Konzepten.  
⚠️Achtung⚠️ nicht alle Programmiersprachen weisen dies Konzepte auf! (Zum Beispiel: Funktionale Programmiersprachen)

## Unterschied zwischen Objekt / Instanz und Klasse 📘

### Klasse 📘

Die Klasse ist ein Bauplan. In diesem Bauplan werden Methoden, Funktionen und Parameter festgelegt.

### Objekt / Instanz  🚗

Das Objekt wird aus der Klasse erschaffen quasi nach dem Bauplan gebaut. Dies ist **in der Objektorientierung** der Baustein der Daten und Funktionalitäten dann tatsächlich auch ausführt bzw. trägt.

## Kapselung 💊

Die in den Objekten enthaltenen Methoden / Funktionen und Attribute werden gekapselt. So wird der Zugriff auf diese eingeschränkt. Dies passiert durch sogenannte Zugriffsbeschrenkungen (public, private). So kann sichergestellt werden das dass Objekt immer in einem so korrekten Zustand ist. Außerdem werden so ungewollte Fehler vermieden. Der interne Code wird quasi abgeschottet und der Zugriff darauf erfolgt nur über darauf ausgelegte Schnittstellen.

## Vererbung 🔗

Bei der Vererbung können Eigenschaften und Methoden / Funktionen zwischen Klassen hierarchisch ausgetauscht und ergänzt werden. Das bedeutet wenn eine Klasse von einer Basisklasse erbt dann übernimmt die Klasse alle Eigenschaften der Basisklasse. Die abgeleitete Klasse davon hat dann Zugriff auf diese Eigenschaften und Methoden / Funktionen der Basisklasse. Sie hat diese geerbt. Die erbende Klasse kann auch Subklasse genannt werden.

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

## Assoziation

TODO

## Komposition

TODO

## Links 🔗

[Wikipedia](https://de.wikipedia.org/wiki/Objektorientierung)  
[Häufige Fragen im Fachgespräch zu Objektorientierung](https://it-berufe-podcast.de/haeufige-fragen-im-fachgespraech-objektorientierung-anwendungsentwickler-podcast-2/)  
