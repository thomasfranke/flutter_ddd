# Flutter DDD  

A fun project with a simple implementation of DDD using MobX and Modular, leveraging the public Binance API to fetch currency prices.

This project is under development and is meant to showcase good practices, DDD, Clean Architecture, Design Patterns, and more.

Currently, only the basic request to fetch all prices is working, however, we can already see the complete DDD pattern, with Data, Domain and UI layers.

---

### Why MobX + Modular?  

This combination might not be as popular as Bloc, nor is it the newest stack for State Management.  

However, it strikes a great balance between simplicity and the powerful tools that state management can offer.

It sits between the verbosity of Bloc and the minimalism of ValueNotifier/ChangeNotifier.  

Most importantly, it works. Really well. 🚀  

---

### Under Development

The following features will be added in the coming days:

- Tests: E2E, integration and unit
- Local Storage using Objective Box
- Favorites
- Search
- Multi-language support
- Dark Mode
- Various improvements to the app architecture
- Documentation with Class, Sequence, and Use Case Diagrams.


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

### Structure:

- Basic:

core/
  ├── exceptions/
  ├── http_client/
  ├── l10n/
  └── local_storage/
Tudo que é infraestrutura essencial, usada globalmente e que não pertence a nenhuma feature específica.

shared/
  ├── constants/
  ├── mappers/
  ├── extensions/
  ├── theme/
  └── widgets/
Tudo que é reutilizável entre features, mas ligado à interface ou estrutura do app, não à lógica de domínio.

utils/
  ├── fetch/
  ├── result/
  └── validators/
Funções ou componentes auxiliares puros, com pouca ou nenhuma dependência do app (sem estado, sem dependências pesadas).

- DDD
data/
domain/
presentation/
