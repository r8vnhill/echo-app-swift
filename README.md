# echo-app-swift

This repository contains the source code for the lessons:

- [**"Creating a Basic Project in Swift"**](https://dibs.pages.dev/docs/build-systems/init/swift)
- [**"Configuring Multi-Module Projects in Swift"**](https://dibs.pages.dev/docs/build-systems/basic-config/swift)

Both are part of the course **Software Library Design and Implementation (Diseño e Implementación de Bibliotecas de Software, DIBS)**.

While the lessons are written in Spanish, the repository and source code are in English to ensure broader accessibility and usability across international and multilingual audiences.

## 🌱 Lesson Overview

The **first lesson** walks you through:

- Installing Swift on Windows, macOS, or Linux.
- Initializing a new project with Swift Package Manager (SwiftPM).
- Running a simple terminal-based app — no Xcode required.

The **second lesson** builds on this foundation and teaches you how to:

- Organize code into multiple reusable modules (called *targets* in SwiftPM).
- Declare internal dependencies and products in `Package.swift`.
- Follow SwiftPM’s folder conventions (`Sources/`, `Tests/`).
- Prepare your codebase for scalable and maintainable library development.

## 🚀 How to Run

To run the application:

1. Make sure you have Swift installed. You can check with:

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
    swift run App
    ```

You should see output like this:

```
Building for debugging...
[8/8] Linking .build/...
Build of product 'App' complete!
Spirals.... this town is contaminated with spirals.
```

## 🧱 Project Structure (Multi-Module)

```text
echo-app-swift/
├── Package.swift         # Project configuration: products and modules
├── Sources/
│   ├── App/              # Executable target
│   │   └── main.swift
│   └── Lib/              # Library target
│       └── Echo.swift
├── Tests/
│   └── LibTests/         # Unit tests for Lib
│       └── EchoTests.swift
└── .build/               # Build artifacts and cache
```

## 📚 Related Lessons

> 📘 [Creating a Basic Project in Swift](https://dibs.pages.dev/docs/build-systems/init/swift)  
> 📦 [Configuring Multi-Module Projects in Swift](https://dibs.pages.dev/docs/build-systems/basic-config/swift)

These lessons are part of the **DIBS** course and aim to teach practical techniques for organizing Swift projects using SwiftPM, particularly with a focus on building **modular and reusable libraries**.

## 🌀 About the Message

The printed message is a small homage to *Uzumaki*, a horror manga by Junji Ito, where spirals gradually overtake a small town. It demonstrates how to customize the default "Hello, World!" and provides a gentle first contact with the Swift CLI toolchain.

## 🛠️ Requirements

- Swift 6.0 or later
- Terminal / Command Prompt / Shell access