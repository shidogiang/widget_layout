import 'package:flutter/material.dart';
import 'explore.dart';

class BestSellerItem extends StatelessWidget {
  final String title;

  const BestSellerItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ExploreScreen()),
        );
      },
      child: Container(
        width: 140, 
        margin: const EdgeInsets.only(right: 15), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF539FB3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.photo_library, size: 40, color: Colors.white70),
                    SizedBox(height: 5),
                    Text("Image Here", style: TextStyle(color: Colors.white70, fontSize: 11)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [          
                Row(
                  children: List.generate(5, (index) => const Icon(
                    Icons.star, 
                    size: 13, 
                    color: Color(0xFFE48D41), 
                  )),
                ),
                const SizedBox(width: 5),
                const Text(
                  "5.0",
                  style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}