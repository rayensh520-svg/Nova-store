import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  late Future<List<ProductModel>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = apiService.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0), // بيج راقي
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A1B29), // عنابي فاخر
        title: const Text(
          'NOVA STORE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أهلاً بكِ في عالم الفخامة والتمرد العصري',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A1B29),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: FutureBuilder<List<ProductModel>>(
                future: futureProducts,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF6A1B29),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    // في حال كان السيرفر غير متصل، نعرض واجهة تجريبية أو رسالة أنيقة
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.store_mall_directory, size: 64, color: Color(0xFFD4B28C)),
                          SizedBox(height: 12),
                          Text(
                            'جاري تحضير المنتجات الفاخرة...',
                            style: TextStyle(color: Color(0xFF8C7B75), fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('لا توجد منتجات متاحة حالياً'),
                    );
                  }

                  final products = snapshot.data!;
                  return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: const Icon(Icons.shopping_bag, color: Color(0xFF6A1B29)),
                          title: Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('${product.price} دج'),
                          trailing: product.isVerified
                              ? const Icon(Icons.verified, color: Colors.blue)
                              : null,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

