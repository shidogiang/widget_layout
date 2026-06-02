import 'package:flutter/material.dart';
import 'product_card_item.dart';
class ProductListScreen extends StatelessWidget {
  final String categoryName; 

  const ProductListScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
   
    final List<Map<String, dynamic>> products = [
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Apple', 'stock': '1000 ready stock', 'price': '\$20'},
      {'name': 'Banana', 'stock': '1000 ready stock', 'price': '\$5'},
      {'name': 'Mango', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$10'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), 
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F9FA),
        elevation: 0,
      
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace, color: Colors.black, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        
        title: Text(
          categoryName, 
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      
      // ListView.separated để tự động có dải phân cách giữa các item
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: products.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black12, 
          height: 30, 
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          final item = products[index];
          return ProductCard(
            name: item['name'],
            stock: item['stock'],
            price: item['price'],
          );
        },
      ),
    );
  }
}