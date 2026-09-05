import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // متغير لتحديد نوع الحساب (مشتري أو بائع)
  bool isVendor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0), // بيج راقي
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A1B29), // عنابي فاخر
        title: const Text(
          'إنشاء حساب جديد - NOVA STORE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'انضمي إلى عائلة الفخامة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A1B29),
                ),
              ),
              const SizedBox(height: 24),

              // حقل الاسم الكامل
              TextField(
                decoration: InputDecoration(
                  labelText: 'الاسم الكامل',
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
              const SizedBox(height: 20),

              // اختيار نوع الحساب (بائع أو مشتري)
              SwitchListTile(
                title: const Text(
                  'التسجيل كبائع (لتكييف المتجر وعرض المنتجات)',
                  style: TextStyle(color: Color(0xFF6A1B29), fontSize: 14, fontWeight: FontWeight.bold),
                ),
                value: isVendor,
                activeColor: const Color(0xFF6A1B29),
                onChanged: (bool value) {
                  setState(() {
                    isVendor = value;
                  });
                },
              ),
              const SizedBox(height: 24),

              // زر تأكيد التسجيل
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
                  // منطق إرسال البيانات للخادم لاحقاً
                },
                child: const Text(
                  'إنشاء الحساب',
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

