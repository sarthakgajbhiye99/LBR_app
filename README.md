# 📍 Location-Based Recommendation App

A cross-platform mobile app (Android & iOS) built with **Flutter** that provides location-aware recommendations using:

- ✅ Real-time location tracking
- 📡 Background geolocation
- 🛎️ Push notifications via Firebase
- 📦 Local storage using Hive & SQLite
- ☁️ Cloud sync with Firebase
- 🧠 Optional recommendation logic via .NET MAUI backend

---

## 🚀 Features

- Real-time geolocation & background tracking
- Proximity-based alerts and POI suggestions
- Push notifications via Firebase Cloud Messaging (FCM)
- Offline local caching with Hive and SQLite
- Sync user data & preferences with Firebase
- Modular structure for extensibility

---

## 📱 Tech Stack

| Layer        | Technology                  |
|--------------|-----------------------------|
| Frontend     | Flutter                     |
| Location     | Geolocator, background_fetch |
| Notifications| Firebase Cloud Messaging    |
| Local DB     | Hive, SQLite                |
| Backend (opt)| .NET MAUI (C#)              |
| Cloud Sync   | Firebase Firestore          |

---

## 📂 Project Structure

```
lib/
├── main.dart
├── location_service.dart
├── notification_service.dart
├── db/
│   ├── hive_helper.dart
│   └── sqlite_helper.dart
├── models/
│   └── location_model.dart
```

---

## 🛠️ Getting Started

### 🔧 Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Firebase project with Android/iOS setup
- Android Studio or VS Code
- Android/iOS emulator or physical device

### 🧪 Setup Instructions

1. **Clone this repo**

   ```bash
   git clone https://github.com/your-username/location-recommendation-app.git
   cd location-recommendation-app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Configure Firebase**

   - Add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Follow Firebase setup steps [here](https://firebase.google.com/docs/flutter/setup)

4. **Run the app**

   ```bash
   flutter run
   ```

---

## 🔒 Permissions

Make sure the following permissions are added:

### Android

**AndroidManifest.xml**

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>
```

### iOS

**Info.plist**

```xml
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>We use your location to show relevant recommendations.</string>
```

---

## 💡 Future Improvements

- AI-driven recommendation engine (TensorFlow Lite or backend ML API)
- Geofencing
- User authentication
- Multi-language support

---

## 👨‍💻 Contributing

Contributions are welcome! Please open an issue or submit a pull request. 🙌


- Author: Sarthak Gajbhiye