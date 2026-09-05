import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0), // بيج راقي
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // شعار أو اسم المتجر
              const Text(
                'NOVA STORE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A1B29), // عنابي فاخر
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'سوق متعدد البائعين بتصميم فاخر',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8C7B75),
                ),
              ),
              const SizedBox(height: 48),

              // حقل البريد الإلكتروني
              TextField(
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                  labelStyle: const TextStyle(color: Color(0xFF8C7B75)),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // حقل كلمة المرور
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  labelStyle: const TextStyle(color: Color(0xFF8C7B75)),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // زر تسجيل الدخول
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A1B29),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // مؤقتاً للتجربة: الانتقال للشاشة الرئيسية عند الضغط
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              // زر الانتقال إلى شاشة إنشاء حساب جديد
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text(
                  'ليس لديكِ حساب؟ انضمي إلينا كبائع أو مشتري',
                  style: TextStyle(
                    color: Color(0xFF6A1B29),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
