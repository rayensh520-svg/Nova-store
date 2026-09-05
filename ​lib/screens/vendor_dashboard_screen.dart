import 'package:flutter/material.dart';

class VendorDashboardScreen extends StatelessWidget {
  const VendorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0), // بيج راقي
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A1B29), // عنابي فاخر
        title: const Text(
          'لوحة تحكم البائع - NOVA STORE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // بطاقة الترحيب وحالة التحقق للبائع
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFD4B28C), width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'حالة الحساب: موثق ✓',
                    style: TextStyle(
                      color: Color(0xFF6A1B29),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'أهلاً بك، شريك النجاح. يمكنك إدارة منتجاتك ومتابعة سجل المبيعات من هنا.',
                    style: TextStyle(color: Color(0xFF8C7B75), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // زر إضافة منتج جديد
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6A1B29),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // منطق إضافة منتج جديد
              },
              icon: const Icon(Icons.add_box),
              label: const Text(
                'إضافة منتج جديد للمتجر',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),

            // زر عرض السجل المالي
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF6A1B29),
                side: const BorderSide(color: Color(0xFF6A1B29), width: 1.5),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // عرض السجل المالي والتقارير
              },
              icon: const Icon(Icons.account_balance_wallet),
              label: const Text(
                'السجل المالي والمبيعات',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

