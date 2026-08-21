import 'package:flutter/material.dart';

void main() => runApp(const AtaWhatsApp());

class AtaWhatsApp extends StatelessWidget {
  const AtaWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AtaWhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF167D58)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool phoneMode = true;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.forum_rounded, size: 78, color: Color(0xFF167D58)),
              const SizedBox(height: 16),
              const Text('AtaWhatsApp',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('دردشة سريعة وآمنة', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 36),
              SegmentedButton<bool>(
                segments: const [
                  ButtonSegment(value: true, label: Text('رقم الهاتف'), icon: Icon(Icons.phone)),
                  ButtonSegment(value: false, label: Text('البريد'), icon: Icon(Icons.email)),
                ],
                selected: {phoneMode},
                onSelectionChanged: (s) => setState(() => phoneMode = s.first),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: controller,
                keyboardType: phoneMode ? TextInputType.phone : TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: phoneMode ? 'رقم الهاتف' : 'البريد الإلكتروني',
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(phoneMode ? Icons.phone : Icons.email),
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                  onPressed: () {
                    if (controller.text.trim().isEmpty) return;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                    );
                  },
                  child: const Text('متابعة', style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 14),
              const Text('النسخة الأولى تجريبية — التحقق الحقيقي عبر SMS/Email يُضاف في المرحلة التالية.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AtaWhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text('ابدأ محادثة جديدة'),
            subtitle: const Text('أضف أصدقاءك لاحقًا'),
            onTap: () {},
          ),
          const Divider(),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Text('لا توجد محادثات بعد', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
