import 'package:flutter/material.dart';
import 'package:widget_layout_homework/widget/ecom/product/explore.dart'; 

class CategoryGridItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const CategoryGridItem({
    super.key,
    required this.title,
    required this.icon,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F8F9), 
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              size: 28,
              color: const Color(0xFF4FA0B5), 
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}