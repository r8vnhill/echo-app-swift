# echo-app-swift

This repository contains the source code for the lesson [**"Creating a Basic Project in Swift"**](https://dibs.pages.dev/docs/build-systems/init/swift), part of the course **Software Library Design and Implementation (Diseño e Implementación de Bibliotecas de Software, DIBS)**.

The lesson is written in Spanish, but this repository and its code are presented in English to ensure wider accessibility and usability across international and multilingual audiences.

The lesson walks through how to install Swift, initialize a project using Swift Package Manager (SwiftPM), and run a simple terminal-based application — no Xcode required.

The code prints a small tribute to *Uzumaki* by Junji Ito:

```
Spirals.... this town is contaminated with spirals.
```

## 🚀 How to Run

To run the application:

1. Make sure you have Swift installed. You can check it with:

    ```bash
    swift --version
    ```

2. Clone this repository:

    ```bash
    git clone https://github.com/r8vnhill/echo-app-swift.git
    cd echo-app-swift
    ```

3. Run the app:

    ```bash
    swift run
    ```

You should see output like this:

```
Building for debugging...
[8/8] Linking .build/...
Build of product 'echo-app-swift' complete!
Spirals.... this town is contaminated with spirals.
```

## 🧱 Project Structure

```text
echo-app-swift/
├── .build/               # Build artifacts and caches
├── Sources/
│   └── main.swift    # Entry point of the application
├── Package.swift         # Project configuration file
└── .gitignore
```

## 📚 Related Lesson

You can follow the full step-by-step lesson (in Spanish) here:

> [Creando un Proyecto Básico en Swift](https://dibs.pages.dev/docs/build-systems/init/swift)

The lesson explains how to install Swift on Windows, macOS, and Linux, initialize the project using SwiftPM, and modify the default file to customize the output.

## 🌀 About the Message

The printed message is a small homage to *Uzumaki*, a horror manga by Junji Ito, where spirals take over a small town. The message demonstrates how to replace Swift's default `Hello, world!` and serves as a first hands-on exercise with Swift from the command line.

## 🛠️ Requirements

- Swift 5.9 or later
- Terminal / Command Prompt / Shell access
