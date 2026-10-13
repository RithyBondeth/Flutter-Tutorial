<div align="center">

# Flutter Tutorial

**Hands-on examples covering essential Flutter concepts, starting with Riverpod state management.**

![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Riverpod](https://img.shields.io/badge/Riverpod-0175C2?style=for-the-badge&logo=flutter&logoColor=white)

</div>

---

## Overview

Flutter Tutorial is my learning playground for core Flutter concepts. The current module covers **Riverpod**: simple counter state, async data fetching from an API, notifiers, and passing data between list and detail screens.

## Contents

| Module | Topics |
| --- | --- |
| `riverpod-module` | Providers, `Notifier`-based counter state, an HTTP client provider, async user fetching, user models, and list-to-detail navigation |

## Tech Stack

| Area | Technology |
| --- | --- |
| Framework | Flutter, Dart 3 |
| State management | Riverpod 3 |
| Networking | http |

## Getting Started

### Prerequisites

- Flutter SDK (Dart 3.11 or newer)

### Installation

```bash
git clone https://github.com/RithyBondeth/Flutter-Tutorial.git
cd Flutter-Tutorial
flutter pub get
flutter run
```

## Project Structure

```text
Flutter-Tutorial/
└── lib/
    ├── riverpod-module/
    │   ├── data/         # Users API
    │   ├── models/       # User model
    │   ├── notifiers/    # Counter and users notifiers
    │   ├── providers/    # Counter, users, and HTTP client providers
    │   └── screens/      # Main and detail screens
    └── main.dart
```

## Author

**Rithy Bondeth** — Full Stack Developer & AI Engineer

[![Portfolio](https://img.shields.io/badge/Portfolio-0A0A0A?style=for-the-badge&logo=vercel&logoColor=white)](https://bondeth.dev)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/RithyBondeth)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rithy-bondeth-484073282/)
