# FactsApp_IndividualProject2

A simple Flutter application that fetches random facts from the [Useless Facts API](https://uselessfacts.jsph.pl) and displays them in a user-friendly interface. Users can click a button to fetch a new fact, making the app a fun way to learn something new every time!

---

## Table of Contents
1. [Purpose]
2. [Features]
3. [Architecture]
4. [Codebase Structure]
5. [API Reference]
6. [How to Run]

---

## Purpose

The **Daily Facts App** aims to provide users with a daily dose of random trivia in a visually appealing and interactive way. It showcases:
- **Integration with RESTful APIs**
- **State management in Flutter** via Stateful Widgets
- **Asynchronous programming** with `Future` and `async/await`

---

## Features

- **Random Fact Display**: Fetch and display a random fact using the API.
- **Interactive UI**: Button to fetch a new fact.
- **Expandable Architecture**: Ready for additional features such as favorites, categories, and offline storage.

---

## Architecture

The app uses a simple **MVC-like pattern**:
1. **Model**: API response data is dynamically managed.
2. **View**: UI components include `Scaffold`, `AppBar`, and widgets for displaying facts and fetching new data.
3. **Controller**: Handles user interactions (e.g., button press) and fetches data from the API.

---

## Codebase Structure

```
lib/
├── main.dart        # Entry point of the application
├── home_screen.dart # Core logic and UI for displaying random facts
```

### Key Components

#### **1. Main.dart**
- Sets up the MaterialApp and routes for navigation.
- Launches the `HomeScreen`.

#### **2. HomeScreen**
- A `StatefulWidget` that manages the core functionality:
  - Displays the random fact.
  - Fetches new facts from the API when the button is pressed.
  - Updates the UI dynamically using `setState`.

#### **fetchData Function**
- Responsible for calling the API.
- Handles successful responses and errors gracefully.
- Updates the `randomFact` variable to trigger UI changes.

---

## API Reference

The app uses the **Useless Facts API**:

- **Endpoint**: `https://uselessfacts.jsph.pl/api/v2/facts/random`
- **Response Example**:
  ```json
  {
    "id": "1",
    "text": "Bananas are berries, but strawberries are not.",
    "source": "random fact",
    "source_url": "",
    "language": "en",
    "permalink": "https://uselessfacts.jsph.pl/..."
  }
  ```
- **Key Used**: `text` – Contains the random fact text.

---

## How to Run

### Prerequisites
- [Flutter SDK]
- Internet connection for API access

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/abubakar-ahmed/FactsApp_IndividualProject2
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

Enjoy learning new facts every day! 😊
