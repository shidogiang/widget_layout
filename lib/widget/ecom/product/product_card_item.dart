import 'package:flutter/material.dart';
class ProductCardItem extends StatelessWidget {
  final String title;

  const ProductCardItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, 
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), 
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Expanded(
              flex: 3, 
              child: Container(
                color: const Color(0xFF539FB3), 
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.photo_library, 
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Image Here",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1, 
              child: Container(
                color: const Color(0xFFEBEBEB),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.centerLeft, 
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}