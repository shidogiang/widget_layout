import 'package:flutter/material.dart';
import 'product_card_item.dart';
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'Gundam Bael HG 1/144',
      'Zaku II Char Custom',
      'Motor Nuclear Mecha',
      'Ultraman Blazar Blokees',
      'ZD Toys Iron Man',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1E3E47), 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Find products easier here",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70, 
                        ),
                      ),
                    ],
                  ),
         
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE48D41), 
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),

              
              Expanded(
                child: ListView.separated(
                  itemCount: products.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 20), 
                  itemBuilder: (context, index) {
                    
                    return ProductCardItem(title: products[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
