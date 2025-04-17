## Flutter DDD  

A fun project with a simple implementation of DDD using MobX and Modular, leveraging the public Binance API to fetch currency prices.

UI: Developing a polished interface is not the priority. **The main goal is to implement and test programming best practices, with a strong focus on architecture.**

---

### APK
An Android APK is available in the root folder in case you want to run the app without having Dart or Flutter installed.

---

### Development Status
🟩🟩🟩🟩🟩🟩🟩🟩🟩⬜  **90%** Architecture: DDD, and implementing: Modular, MobX, Hive, Result, Dio, Json Serializable  
🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 **100%** Binance API  
🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 **100%** Favorites: With local storage, using Hive  
🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 **100%** Features: Dark Mode, Multi Language  
🟩🟩🟩🟩🟩⬜⬜⬜⬜⬜  **50%** Automated Tests  
🟩🟩🟩🟩🟩⬜⬜⬜⬜⬜  **50%** Documentation  

---

### Why MobX + Modular?  

This combination might not be as popular as Bloc, nor is it the newest stack for State Management.  

However, it strikes a great balance between simplicity and the powerful tools that state management can offer.

It sits between the verbosity of Bloc and the minimalism of ValueNotifier/ChangeNotifier.  

Most importantly, it works. Really well. 🚀  

---

### Domain-Driven Design (DDD)

This project applies **DDD concepts** to separate application layers:

- `domain/` contains core business logic: entities, services, and use cases  
- `data/` handles external data sources (API, DB), using models and repositories  
- `presentation/` contains UI and controllers  
- `core/` and `shared/` include reusable and app-wide concerns (e.g., http, exceptions, constants)

---

### Packages

**Architecture & State:**
- `mobx`
- `flutter_mobx`
- `flutter_modular`

**Networking & Storage:**
- `dio`
- `hive`

**Code Generation:**
- `build_runner`
- `json_annotation`

**Functional Programming:**
- `result`

**Testing:**
- `mocktail`
- `flutter_test`


---

### Timer

[![wakatime](https://wakatime.com/badge/user/81ee337c-1e3d-460c-9004-b1ee1d921524/project/8e57dd84-45a1-4384-80f0-09216746f224.svg)](https://wakatime.com/badge/user/81ee337c-1e3d-460c-9004-b1ee1d921524/project/8e57dd84-45a1-4384-80f0-09216746f224)

---

### Automations  

This project includes a Makefile for basic automation.  

To configure the Flutter version, run the following command in the terminal:  

```sh
make fvm
```

---

### Folder Structure

```
app/
  ├──data/
  |   ├── models/
  |   └── repositories/ 
  ├──domain/
  |   ├── entities/
  |   ├── repositories/
  |   ├── services/
  |   └── usecases/
  └──presentation/
      └── page1/
          ├── controller.dart
          ├── module.dart
          └── screen.dart

core/
  ├── exceptions/
  ├── http_client/
  ├── l10n/
  └── local_storage/

shared/
  ├── constants/
  ├── mappers/
  ├── extensions/
  ├── theme/
  └── widgets/

utils/
  ├── fetch/
  ├── result/
  └── validators/
```
---
### Additional Documentation
```
docs/
  └── diagrams/
      ├── data/
      └── domain/
```
---
### Automated Tests
```
tests/
  ├── data/
  ├── domain/
  ├── presentation/
  └── utils/
```

> Clean, decoupled architecture following DDD (Domain-Driven Design) and Clean Architecture principles.  
> This setup promotes **separation of concerns**, **testability**, and **scalability**.

