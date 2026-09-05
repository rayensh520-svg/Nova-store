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
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF9F6F0), // البيج الراقي
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A1B29), // العنابي الفاخر
          primary: const Color(0xFF6A1B29),
          secondary: const Color(0xFFD4B28C),
        ),
      ),
      // جعل شاشة تسجيل الدخول هي البداية للتطبيق
      home: const LoginScreen(),
    );
  }
}
