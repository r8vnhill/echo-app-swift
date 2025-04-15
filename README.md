# EchoAppSwift

![Swift](https://img.shields.io/badge/swift-6.1%2B-orange?logo=swift)
![License: BSD-2](https://img.shields.io/badge/license-BSD--2--Clause-green.svg)
![Platform](https://img.shields.io/badge/platform-linux%20%7C%20macOS%20%7C%20windows-lightgrey)
[![Lesson (ES) – Basic Project](https://img.shields.io/badge/ver%20lecci%C3%B3n-proyecto%20b%C3%A1sico-blueviolet)](https://dibs.pages.dev/docs/build-systems/init/swift/)
[![Lesson (ES) – Modular Project](https://img.shields.io/badge/ver%20lecci%C3%B3n-proyecto%20modular-blueviolet)](https://dibs.pages.dev/docs/build-systems/modular-design/swift/)

This repository accompanies two lessons on how to create and structure Swift projects using **Swift Package Manager (SwiftPM)**.

> 📘 **The lessons are written in Spanish**, but the repository and its structure are fully in English for broader accessibility:
>
> - [Lesson 1 – Basic Project Setup](https://dibs.pages.dev/docs/build-systems/init/swift/)
> - [Lesson 2 – Modular Project Design](https://dibs.pages.dev/docs/build-systems/modular-design/swift/)

## 📁 Project Structure

The project evolves in two stages:

1. **Initial structure**: A single Swift executable created with `swift package init --type executable`.
2. **Modular design**: The project is split into:
   - `App`: An executable module.
   - `Lib`: A reusable library module.
   - `LibTests`: A unit test module for `Lib`.

```
EchoAppSwift/
├── Package.swift
├── Sources
│   ├── App
│   │   └── main.swift
│   └── Lib
│       └── Echo.swift
├── Tests
│   └── LibTests
│       └── EchoTests.swift
└── README.md
```

This structure follows SwiftPM conventions strictly. Each folder name must match the declared targets in `Package.swift`.

## 🧪 What does it do?

You can run the app from the root with:

```bash
swift run App Kanna Kenji Friend
```

Expected output:

```text
Kanna
Kenji
Friend
```

## 📦 What's inside?

- `Sources/Lib/Echo.swift`:  
  Defines a simple public function:

  ```swift
  public func echo(_ message: String) -> String {
      return message
  }
  ```

- `Sources/App/main.swift`:  
  Entry point that uses `echo`:

  ```swift
  import Lib

  func main() {
      let args = CommandLine.arguments.dropFirst()
      for arg in args {
          print(echo(arg))
      }
  }

  main()
  ```

## 💡 Learn More

These lessons guide you through:

- Installing Swift on Linux, macOS, or Windows.
- Using `swift package init` to bootstrap a project.
- Understanding `Package.swift` and SwiftPM conventions.
- Refactoring to a modular structure with a library and tests.
- Running and organizing Swift projects from the terminal.

Although written in Spanish, the code is accessible and the directory structure is self-explanatory.

## 🔗 References

- [🌐 Swift Package Manager Documentation](https://www.swift.org/documentation/package-manager/)
- [📰 Modular Project Structure with SwiftPM](https://santoshbotre01.medium.com/modular-project-structure-with-swift-package-manager-spm-c81fb62c8619)
- [🎥 How to Make a Swift Command Line Tool – YouTube](https://youtu.be/w7HvY29P9A4)
