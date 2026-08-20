# تشغيل البناء من الهاتف

1. أنشئ مستودعًا جديدًا على GitHub.
2. ارفع كامل ملفات مشروع AtaWhatsApp إلى المستودع.
3. تأكد أن الملف `.github/workflows/build-apk.yml` موجود.
4. افتح تبويب **Actions**.
5. اختر **Build AtaWhatsApp APK**.
6. اضغط **Run workflow**.
7. انتظر انتهاء البناء.
8. افتح نتيجة التشغيل وابحث عن **Artifacts**.
9. حمّل `AtaWhatsApp-release-apk.zip` ثم فك الضغط لتحصل على `app-release.apk`.
10. افتح APK على هاتفك وثبّته.

ملاحظة: هذه العملية تبني النسخة الحالية من المشروع. تسجيل الدخول الحقيقي عبر SMS/Email وFirebase لم يُربط بعد.
