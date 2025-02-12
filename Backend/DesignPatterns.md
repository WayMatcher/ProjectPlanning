# Design Patterns

---

## 1. Creational Patterns

### 1.1. Singleton Pattern

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

### 1.2. Prototype Pattern

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

### 1.3. Builder Pattern

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

### 1.4. Factory Pattern

Das Factory-Muster kapselt die Objekterstellung in einer separaten Methode oder Klasse.

#### Beispiel in C#

```csharp
public interface IAnimal
{
    void Speak();
}

public class Dog : IAnimal
{
    public void Speak() => Console.WriteLine("Woof!");
}

public class Cat : IAnimal
{
    public void Speak() => Console.WriteLine("Meow!");
}

public class AnimalFactory
{
    public static IAnimal CreateAnimal(string type)
    {
        return type.ToLower() switch
        {
            "dog" => new Dog(),
            "cat" => new Cat(),
            _ => throw new ArgumentException("Unknown animal type")
        };
    }
}
```

---

## 2. Structural Patterns

### 2.1. Facade Pattern

Das Facade-Muster bietet eine vereinfachte Schnittstelle zu einem komplexen System.

#### Beispiel in C#
```csharp
public class Logger
{
    public void Log(string message, string type, string location)
    {
        Console.WriteLine($"{type}: {message} ({location})");
    }
}

public class LoggerFacade
{
    private Logger _logger = new Logger();
    
    public void Log(string message, string type)
    {
        _logger.Log(message, type, "defaultLocation");
    }
}
```

---

### 2.2. Proxy Pattern

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

### 2.3. Decorator Pattern

Das Decorator-Muster fügt Objekten zur Laufzeit zusätzliche Funktionen hinzu, ohne deren Struktur zu verändern.

```csharp 
public interface ICoffee 
{
    string GetDescription();
    double GetCost();
}

public class SimpleCoffee : ICoffee
{
    public string GetDescription() => "Einfacher Kaffee";
    public double GetCost() => 2.0;
}

public class MilkDecorator : ICoffee
{
    private ICoffee _coffee;
    public MilkDecorator(ICoffee coffee) => _coffee = coffee;
    
    public string GetDescription() => _coffee.GetDescription() + ", Milch";
    public double GetCost() => _coffee.GetCost() + 0.5;
}
```

---

## 3. Behavioral Patterns

### 3.1. Iterator Pattern

Das Iterator-Muster bietet eine Möglichkeit, über eine Sammlung von Objekten zu iterieren.

#### Beispiel in C#

```csharp
public class CustomIterator<T>
{
    private readonly List<T> _collection;
    private int _position = 0;

    public CustomIterator(List<T> collection) => _collection = collection;

    public bool HasNext() => _position < _collection.Count;
    public T Next() => _collection[_position++];
}
```

---

### 3.2. Observer Pattern

Das Observer-Muster implementiert ein Ein-zu-Viele-Abhängigkeitsverhältnis zwischen Objekten.

#### Beispiel in C#

```csharp
public interface IObserver { void Update(string message); }

public class EmailSubscriber : IObserver
{
    public string Email { get; set; }
    public void Update(string message) => Console.WriteLine($"Email to {Email}: {message}");
}

public class NotificationService
{
    private List<IObserver> _observers = new List<IObserver>();

    public void Attach(IObserver observer) => _observers.Add(observer);
    public void Notify(string message) => _observers.ForEach(o => o.Update(message));
}
```

---

### 3.3. Mediator Pattern

Das Mediator-Muster definiert ein Objekt, das die Kommunikation zwischen Objekten kapselt.

#### Beispiel in C#

```csharp
public interface IColleague { void Receive(string message); }

public class ChatUser : IColleague
{
    public string Name { get; set; }
    public void Receive(string message) => Console.WriteLine($"{Name} received: {message}");
}

public class ChatMediator
{
    private List<IColleague> _users = new List<IColleague>();
    public void Register(IColleague user) => _users.Add(user);
    public void SendMessage(string message, IColleague sender)
    {
        _users.Where(u => u != sender).ToList().ForEach(u => u.Receive(message));
    }
}
```

---

### 3.4. State Pattern

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

---

### 3.5. Strategy Pattern

Das Strategy-Muster definiert eine Familie von Algorithmen, kapselt sie und macht sie austauschbar.

#### Beispiel in C#

```csharp
public interface ICake
{
    void Bake();
}

public class CarrotCake : ICake
{
    public void Bake() => Console.WriteLine("Baking a Carrot Cake");
}

public class LemonCake : ICake
{
    public void Bake() => Console.WriteLine("Baking a Lemon Cake");
}
```
