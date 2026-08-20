# AtaWhatsApp — Android build

المتطلبات:
- Flutter SDK حديث
- Android Studio
- Android SDK
- Java 17

## البناء
من داخل مجلد المشروع:
flutter pub get
flutter build apk --release

الـAPK الناتج عادةً سيكون:
build/app/outputs/flutter-apk/app-release.apk

## ملاحظة
هذه النسخة هي هيكل Android/Flutter قابل للبناء. تسجيل الدخول الحقيقي عبر SMS/Email وFirebase لم يُربط بعد؛ شاشة الدخول الحالية تجريبية.
