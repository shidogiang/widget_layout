import 'package:flutter/material.dart';
import 'category/category_card_item.dart';
import 'product/best_seller_item.dart';
class EcomHomeScreen extends StatelessWidget {
  const EcomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data cho Grid 2x4 (8 items)
    final List<Map<String, dynamic>> gridCategories = [
      {'title': 'Music', 'icon': Icons.music_note},
      {'title': 'Property', 'icon': Icons.business},
      {'title': 'Game', 'icon': Icons.sports_esports},
      {'title': 'Gadget', 'icon': Icons.devices},
      {'title': 'Electronic', 'icon': Icons.tv},
      {'title': 'Property', 'icon': Icons.home},
      {'title': 'Game', 'icon': Icons.videogame_asset},
      {'title': 'Book', 'icon': Icons.book},
    ];

    final List<String> bestSellers = ['Plant', 'Lamp', 'Chair', 'Table'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.black54)),
                    SizedBox(height: 4),
                    Text("Samantha William", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined, size: 28, color: Colors.black87),
                      onPressed: () {},
                    ),
                    Positioned(
                      right: 6,
                      top: 6,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
                        child: const Text("1", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: const Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Searching Item",
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: const Color(0xFFE48D41), borderRadius: BorderRadius.circular(12)),
                  child: const Icon(Icons.tune, color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 25), 
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(color: const Color(0xFF539FB3), borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Icon(Icons.image, size: 60, color: Colors.white60),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: index == 0 ? 18 : 6, // Dấu chấm đầu tiên dài hơn
                height: 6,
                decoration: BoxDecoration(
                  color: index == 0 ? const Color(0xFFE48D41) : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
              )),
            ),
            const SizedBox(height: 25),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: gridCategories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, 
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return CategoryGridItem(
                  title: gridCategories[index]['title'],
                  icon: gridCategories[index]['icon'],
                );
              },
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Best Seller", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All", style: TextStyle(color: Color(0xFFE48D41), fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 190, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal, 
                itemCount: bestSellers.length,
                itemBuilder: (context, index) {
                  return BestSellerItem(title: bestSellers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}