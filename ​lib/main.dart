import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

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
      theme: ThemeData(
        primaryColor: const Color(0xFF6A1B29), // اللون العنابي الفاخر
        scaffoldBackgroundColor: const Color(0xFFF9F6F0), // لون البيج الفاخر
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A1B29),
          secondary: const Color(0xFFF9F6F0),
        ),
      ),
      // اجعل شاشة تسجيل الدخول هي البداية
      home: const LoginScreen(),
    );
  }
}
