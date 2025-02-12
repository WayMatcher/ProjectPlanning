# Design Patterns

---

## Creational Patterns

### Singleton Pattern

Das Singleton-Muster stellt sicher, dass eine Klasse nur eine einzige Instanz besitzt und bietet einen globalen Zugriffspunkt darauf.

#### Beispiel in C#

```csharp
public class Singleton
{
    private static Singleton _instance;
    private static readonly object _lock = new object();

    private Singleton() {}

    public static Singleton Instance
    {
        get
        {
            lock (_lock)
            {
                if (_instance == null)
                {
                    _instance = new Singleton();
                }
                return _instance;
            }
        }
    }
}
```

---

### Prototype Pattern

Das Prototype-Muster ermöglicht das Klonen von Objekten, um neue Instanzen zu erstellen, anstatt direkt neue Objekte zu instanziieren.

#### Beispiel in C#

```csharp
public class Prototype : ICloneable
{
    public string Name { get; set; }

    public object Clone()
    {
        return this.MemberwiseClone();
    }
}
```

---

### Builder Pattern

Das Builder-Muster trennt die Konstruktion eines komplexen Objekts von seiner Repräsentation, indem es schrittweise aufgebaut wird.

#### Beispiel in C#

```csharp
public class PersonBuilder
{
    private string _name;
    private int _age;

    public PersonBuilder SetName(string name)
    {
        _name = name;
        return this;
    }

    public PersonBuilder SetAge(int age)
    {
        _age = age;
        return this;
    }

    public Person Build()
    {
        return new Person { Name = _name, Age = _age };
    }
}
```

---

### Factory Pattern

Das Factory-Muster kapselt die Objekterstellung in einer separaten Methode oder Klasse.

#### Beispiel in C#

```csharp
public interface IButton
{
    void Render();
}

public class AndroidButton : IButton
{
    public void Render() => Console.WriteLine("Android Button");
}

public class IOSButton : IButton
{
    public void Render() => Console.WriteLine("iOS Button");
}

public class ButtonFactory
{
    public static IButton CreateButton(string type)
    {
        return type.ToLower() == "android" ? new AndroidButton() : new IOSButton();
    }
}
```

---

## Structural Patterns

### Facade Pattern

Das Facade-Muster bietet eine vereinfachte Schnittstelle zu einem komplexen System.

#### Beispiel in C#
```csharp
public class SubsystemA { public void OperationA() => Console.WriteLine("Operation A"); }
public class SubsystemB { public void OperationB() => Console.WriteLine("Operation B"); }

public class Facade
{
    private SubsystemA _a = new SubsystemA();
    private SubsystemB _b = new SubsystemB();

    public void Operation()
    {
        _a.OperationA();
        _b.OperationB();
    }
}
```

---

### Proxy Pattern

Das Proxy-Muster stellt einen Stellvertreter für ein anderes Objekt bereit, um den Zugriff darauf zu steuern.

#### Beispiel in C#

```csharp
public interface IService
{
    void Request();
}

public class RealService : IService
{
    public void Request() => Console.WriteLine("Echte Anfrage wird bearbeitet.");
}

public class ProxyService : IService
{
    private RealService _realService;

    public void Request()
    {
        if (_realService == null)
            _realService = new RealService();
        
        _realService.Request();
    }
}
```

---

## Behavioral Patterns

### Iterator Pattern

Das Iterator-Muster bietet eine Möglichkeit, über eine Sammlung von Objekten zu iterieren.

#### Beispiel in C#

```csharp
public class Iterator<T>
{
    private readonly List<T> _collection;
    private int _position = 0;

    public Iterator(List<T> collection) => _collection = collection;

    public bool HasNext() => _position < _collection.Count;
    public T Next() => _collection[_position++];
}
```

---

### Observer Pattern

Das Observer-Muster implementiert ein Ein-zu-Viele-Abhängigkeitsverhältnis zwischen Objekten.

#### Beispiel in C#

```csharp
public class Subject
{
    private List<IObserver> _observers = new List<IObserver>();

    public void Attach(IObserver observer) => _observers.Add(observer);
    public void Notify() => _observers.ForEach(o => o.Update());
}

public interface IObserver { void Update(); }
```

---

### Mediator Pattern

Das Mediator-Muster definiert ein Objekt, das die Kommunikation zwischen Objekten kapselt.

#### Beispiel in C#

```csharp
public class Mediator
{
    private List<IColleague> _colleagues = new List<IColleague>();
    public void Register(IColleague colleague) => _colleagues.Add(colleague);
    public void Send(string message, IColleague sender)
    {
        _colleagues.Where(c => c != sender).ToList().ForEach(c => c.Receive(message));
    }
}

public interface IColleague { void Receive(string message); }
```

---

### State Pattern

Das State-Muster erlaubt einem Objekt, sein Verhalten zu ändern, wenn sich sein interner Zustand ändert.

#### Beispiel in C#

```csharp
public interface IState { void Handle(Context context); }

public class StateA : IState
{
    public void Handle(Context context)
    {
        Console.WriteLine("State A");
        context.SetState(new StateB());
    }
}

public class StateB : IState
{
    public void Handle(Context context)
    {
        Console.WriteLine("State B");
    }
}

public class Context
{
    private IState _state;
    public Context(IState state) => _state = state;
    public void SetState(IState state) => _state = state;
    public void Request() => _state.Handle(this);
}
```
