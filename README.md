# Flutter Clean Architecture Auth App

A Flutter authentication flow built using **Clean Architecture** and **Riverpod**.  
This project demonstrates best practices for structuring a scalable Flutter app with layers for **presentation**, **domain**, and **data**.

---

## 📌 Features

- **Clean Architecture**
  - Separation of concerns into **Data**, **Domain**, and **Presentation** layers.
- **State Management**
  - Powered by [Riverpod](https://riverpod.dev) for reactive and testable state.
- **Dependency Injection**
  - Providers for easy dependency overrides during testing.
- **Authentication Flow**
  - Login with fake API / remote data source simulation.
  - Loading and error states built-in.
- **Scalable Structure**
  - Ready for production with minimal changes.

---

## 🗂 Project Structure

lib/
│
├── features/
│ └── auth/
│ ├── data/
│ │ ├── datasources/
│ │ │ └── auth_remote_data_source.dart
│ │ ├── models/
│ │ │ └── user_model.dart
│ │ └── repositories/
│ │ └── auth_repository_impl.dart
│ │
│ ├── domain/
│ │ ├── entities/
│ │ │ └── user.dart
│ │ ├── repositories/
│ │ │ └── auth_repository.dart
│ │ └── usecases/
│ │ └── login_user.dart
│ │
│ └── presentation/
│ ├── pages/
│ │ └── login_page.dart
│ ├── providers/
│ │ └── auth_providers.dart
│ └── state/
│ └── auth_notifier.dart
│
└── main.dart

---

## 🚀 Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/yourusername/flutter_clean_arch_auth.git
cd flutter_clean_arch_auth

2️⃣ Install dependencies
flutter pub get

3️⃣ Run the app
flutter run

Dependencies
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.5.0
  http: ^1.2.0
  equatable: ^2.0.5


