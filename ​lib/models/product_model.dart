class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String vendorId; // معرف البائع (لدعم تعدد البائعين في NOVA STORE)
  final bool isVerified; // هل المنتج مصرح به وموثوق؟

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.vendorId,
    required this.isVerified,
  });

  // دالة لتحويل البيانات القادمة من قاعدة البيانات (JSON) إلى شكل يفهمه التطبيق
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0.0).toDouble(),
      imageUrl: json['image_url'] ?? '',
      vendorId: json['vendor_id'] ?? '',
      isVerified: json['is_verified'] ?? false,
    );
  }

  // دالة لتحويل البيانات لإرسالها لقاعدة البيانات
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'image_url': imageUrl,
      'vendor_id': vendorId,
      'is_verified': isVerified,
    };
  }
}

