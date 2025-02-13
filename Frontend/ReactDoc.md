# React Documentation

## 1. Single Page Application (SPA)

A **Single Page Application (SPA)** is a web application that loads a single HTML page and dynamically updates content as the user interacts with the app. React facilitates SPA development by allowing components to manage UI without reloading the page, improving performance and user experience.

---

## 2. Components

React applications are built using **components**, which are reusable and self-contained pieces of UI. Components can be **functional** or **class-based**.

### Example: Functional Component with Props and State

```jsx
import React, { useState } from 'react';

function Welcome({ name }) {
  const [message, setMessage] = useState("Hello");

  return (
    <div>
      <h1>{message}, {name}!</h1>
      <button onClick={() => setMessage("Welcome")}>Change Message</button>
    </div>
  );
}

export default Welcome;
```

---

## 3. JSX

**JSX (JavaScript XML)** is a syntax extension for JavaScript that allows HTML-like code inside JavaScript files. JSX makes the UI code more readable and expressive.

### Example: JSX in a Component

```jsx
const element = (
  <div>
    <h1>Hello, JSX!</h1>
    <p>This is a JSX paragraph.</p>
  </div>
);
```

---

## 4. Router

React Router is used for navigation between different views in an SPA.

### Example: Implementing Routes

```jsx
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';

function Home() {
  return <h2>Home Page</h2>;
}

function About() {
  return <h2>About Page</h2>;
}

function App() {
  return (
    <Router>
      <nav>
        <Link to="/">Home</Link>
        <Link to="/about">About</Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
      </Routes>
    </Router>
  );
}
```

---

## 5. Props

Props (short for properties) allow data to be passed from a parent component to a child component, making components dynamic and reusable.

### Example: Passing and Using Props

```jsx
function Greeting({ name, age }) {
  return <h1>Hello, {name}! You are {age} years old.</h1>;
}

<Greeting name="Alice" age={25} />;
```

---

## 6. State

State allows components to manage dynamic data and re-render when the state changes.

### Example: Counter Component with State

```jsx
import { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <h2>Count: {count}</h2>
      <button onClick={() => setCount(count + 1)}>Increment</button>
      <button onClick={() => setCount(count - 1)}>Decrement</button>
    </div>
  );
}
```

---

## 7. Component Lifecycle

Class components have lifecycle methods that run at different phases of a component's life.

### Example: Lifecycle Methods in a Class Component

```jsx
import React, { Component } from 'react';

class Example extends Component {
  constructor(props) {
    super(props);
    this.state = { count: 0 };
  }

  componentDidMount() {
    console.log("Component mounted");
  }

  componentDidUpdate() {
    console.log("Component updated");
  }

  render() {
    return <h1>Lifecycle Example</h1>;
  }
}
```

---

## 8. React Hooks

Hooks allow functional components to use state and lifecycle methods.

### Example: useEffect Hook for Fetching Data

```jsx
import { useEffect, useState } from 'react';

function DataFetcher() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch("https://jsonplaceholder.typicode.com/posts/1")
      .then(response => response.json())
      .then(json => setData(json));
  }, []);

  return <pre>{JSON.stringify(data, null, 2)}</pre>;
}
```

---

## 9. Global State

For managing state across multiple components, **Context API** or **Redux** is used.

### Example: Context API for Theme Management

```jsx
import { createContext, useContext, useState } from 'react';

const ThemeContext = createContext();

function App() {
  const [theme, setTheme] = useState("light");

  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      <ThemeSwitcher />
    </ThemeContext.Provider>
  );
}

function ThemeSwitcher() {
  const { theme, setTheme } = useContext(ThemeContext);
  return (
    <button onClick={() => setTheme(theme === "light" ? "dark" : "light")}>
      Toggle Theme
    </button>
  );
}
```

---

## 10. Virtual DOM

React's **Virtual DOM** is a lightweight JavaScript representation of the actual DOM, allowing efficient updates and rendering optimizations.

---

## 11. Key Prop

Keys help React efficiently identify which items have changed, are added, or removed in lists.

### Example: Using Unique Keys in a List

```jsx
const list = ["Apple", "Banana", "Cherry"];

<ul>
  {list.map((item) => (
    <li key={item}>{item}</li>
  ))}
</ul>
```

---

## 12. Handling Events

React uses **synthetic events**, which are optimized for cross-browser compatibility.

### Example: Event Handling

```jsx
function ClickButton() {
  function handleClick() {
    alert("Button Clicked!");
  }

  return <button onClick={handleClick}>Click Me</button>;
}
```

---

## 13. Handling Forms

Forms in React use **controlled components** to manage user input with state.

### Example: Controlled Form

```jsx
function Form() {
  const [inputValue, setInputValue] = useState("");

  return (
    <form>
      <input type="text" value={inputValue} onChange={(e) => setInputValue(e.target.value)} />
      <button type="submit">Submit</button>
    </form>
  );
}
```

---

## 14. Conditional Rendering

React allows rendering elements conditionally based on logic.

### Example: Conditional Rendering with Ternary Operator

```jsx
function Greeting({ isLoggedIn }) {
  return isLoggedIn ? <h1>Welcome back!</h1> : <h1>Please log in.</h1>;
}
```

---

## 15. Common Commands

Some important CLI commands for working with React:

- **Create a React App**

```command
npx create-react-app my-app
```

- **Start Development Server**

```command
npm start
```

- **Build for Production**

```command
npm run build
```

- **Install Dependencies**

```command
npm install package-name
```

- **Run Tests**

```command
npm test
```
