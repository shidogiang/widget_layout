import 'package:flutter/material.dart';
import 'Category/category_card_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, dynamic>> categories = [
      {'title': 'Fruit', 'icon': '🍊'},
      {'title': 'Vegetable', 'icon': '🥬'},
      {'title': 'Cookies', 'icon': '🍩'},
      {'title': 'Meat', 'icon': '🥩'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), 
      
      //  SafeArea để nội dung không bị lẹm vào tai thỏ / thanh trạng thái
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
                    Text(
                      "Your Balance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "\$1,700.00",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900, 
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5A9846),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            //BANNER 
            Container(
              height: 180,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF5A9846),
                borderRadius: BorderRadius.circular(20), 
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  Text(
                    "Buy Orange 10 Kg\nGet discount 25%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.3, 
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),

            const Text(
              "For you",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            
            const SizedBox(height: 15),
            // Gridview 
            GridView.builder(
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.9, 
              ),
              itemBuilder: (context, index) {
                return CategoryCard(
                  title: categories[index]['title'],
                  icon: categories[index]['icon'],
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
