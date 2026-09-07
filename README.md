# BMI Calculator

A simple and modern **BMI Calculator mobile application** built with **Flutter** and **Dart**.

The application allows users to enter their personal measurements, calculate their Body Mass Index (BMI), and view the result through a dedicated result screen.

## Features

* Gender selection
* Height input
* Weight input
* Age input
* BMI calculation
* Dedicated result screen
* Reusable custom widgets
* Dark-themed user interface
* Clean and responsive mobile layout

## Tech Stack

* **Flutter**
* **Dart**
* **Material Design**

## Project Structure

```text
lib/
├── main.dart
├── bmi_app.dart
│
├── screen/
│   ├── home_screen.dart
│   └── result_screen.dart
│
└── widgets/
    ├── custom_app_bar.dart
    ├── custom_container.dart
    └── custom_weight_age_container.dart

assets/
└── image/
```

The project separates screens and reusable widgets to keep the code organized and maintainable.

## BMI Calculation

The application uses the standard BMI formula:

```text
BMI = Weight (kg) / Height² (m²)
```

The calculated value is displayed on the result screen.

## Getting Started

### Prerequisites

Make sure you have the following installed:

* Flutter SDK
* Dart SDK
* Android Studio or Visual Studio Code
* Android emulator or physical Android device

### Installation

Clone the repository:

```bash
git clone https://github.com/MeeladSam/BMI_Calculator-_Flutter.git
```

Navigate to the project directory:

```bash
cd BMI_Calculator-_Flutter
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## What I Practiced

This project helped me practice:

* Flutter application development
* Dart programming
* Building reusable widgets
* User input handling
* Screen navigation
* UI design and layout
* Implementing calculations
* Organizing a Flutter project

## Author

**Meelad Sam**

[GitHub](https://github.com/MeeladSam)

---

⭐ If you like the project, consider giving it a star.
