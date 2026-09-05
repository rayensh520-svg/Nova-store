import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class ApiService {
  // رابط الخادم الخاص بنا (سيكون رابط السيرفر المحلي أو السحابي لاحقاً)
  final String baseUrl = 'https://api.novastore.com/v1';

  // جلب قائمة المنتجات الموثوقة للمتجر
  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products'));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        List<ProductModel> products = body
            .map((dynamic item) => ProductModel.fromJson(item))
            .toList();
        return products;
      } else {
        throw Exception('فشل في تحميل المنتجات من الخادم');
      }
    } catch (e) {
      throw Exception('خطأ في الاتصال: $e');
    }
  }

  // دالة تسجيل الدخول (تدعم التحقق من هوية البائع والمشتري)
  Future<bool> loginUser(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // تم تسجيل الدخول بنجاح وحفظ التوكن
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}

