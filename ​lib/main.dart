import 'package:flutter/material.dart';

void main() {
  runApp(const NovaStoreApp());
}

class NovaStoreApp extends StatelessWidget {
  const NovaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NOVA STORE',
      debugShowCheckedModeBanner: false,
      // الهوية البصرية الفاخرة: العنابي (Burgundy) والبيج (Beige)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A1B29), // Burgundy فاخر
          primary: const Color(0xFF6A1B29),
          secondary: const Color(0xFFD4B28C), // Beige راقي
          background: const Color(0xFFF9F6F0),
        ),
        scaffoldBackgroundColor: const Color(0xFFF9F6F0),
        fontFamily: 'Cairo', // خط عربي أنيق ومتناسق مع الطابع الراقي
      ),
      home: const NovaAuthScreen(),
    );
  }
}

// شاشة الدخول الموحدة (أول واجهة يراها المستخدم)
class NovaAuthScreen extends StatelessWidget {
  const NovaAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // شعار المتجر
              const Text(
                'NOVA STORE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A1B29),
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'متجرك الإلكتروني الفاخر',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8C7B75),
                ),
              ),
              const SizedBox(height: 48),
              
              // زر تسجيل الدخول / إنشاء حساب
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A1B29),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // هنا سيتم توجيه المستخدم لتسجيل الدخول أو الترقية لاحقاً
                },
                child: const Text(
                  'تسجيل الدخول / إنشاء حساب',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

