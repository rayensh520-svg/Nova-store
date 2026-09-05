import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = ApiService.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0), // لون البيج الفاخر
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A1B29), // لون العنابي الفاخر
        title: const Text('NOVA STORE', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Product>>(
        future: futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Color(0xFF6A1B29)));
          } else if (snapshot.hasError) {
            return Center(child: Text('خطأ: ${snapshot.error}', style: const TextStyle(color: Color(0xFF6A1B29))));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('لا توجد منتجات حالياً', style: TextStyle(color: Color(0xFF6A1B29))));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white,
                elevation: 2,
                child: ListTile(
                  title: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF6A1B29))),
                  subtitle: Text('${product.price} دج', style: const TextStyle(color: Colors.grey)),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF6A1B29)),
                  onTap: () {
                    // تفاصيل المنتج لاحقاً
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

