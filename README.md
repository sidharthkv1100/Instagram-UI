#  Instagram Clone – Flutter & Firebase

An Instagram-like mobile application built using **Flutter** and **Firebase**, developed completely in **VS Code**.  
This project implements core Instagram features such as authentication, posting images, viewing a feed, and basic chat UI.

---

##  Features

-  User Authentication (Email & Password)
-  Upload Images with Captions
-  Home Feed (Realtime from Firestore)
-  Profile Screen
-  Chat UI (Expandable)
-  Clean Project Structure
-  Firebase Backend Integration

---

## 🛠 Tech Stack

| Layer | Technology |
|------|-----------|
| Frontend | Flutter (Dart) |
| Backend | Firebase |
| Authentication | Firebase Auth |
| Database | Cloud Firestore |
| Storage | Firebase Storage |
| IDE | VS Code |

---
```
##  Project Structure
lib/
├── main.dart
│
├── models/
│ ├── user_model.dart
│ └── post_model.dart
│
├── services/
│ ├── auth_service.dart
│ ├── firestore_service.dart
│ └── storage_service.dart
│
├── screens/
│ ├── login_screen.dart
│ ├── signup_screen.dart
│ ├── home_screen.dart
│ ├── upload_screen.dart
│ ├── profile_screen.dart
│ └── chat_screen.dart
│
├── widgets/
│ ├── post_card.dart
│ └── message_bubble.dart

