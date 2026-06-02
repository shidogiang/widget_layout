import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String stock;
  final String price;

  const ProductCard({
    super.key,
    required this.name,
    required this.stock,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFF5A9846), 
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(width: 15),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  stock,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: const TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w900),
                ),
              ],
             ),
           ),
           
           IconButton(
             icon: const Icon(Icons.favorite_border, color: Colors.black54),
             onPressed: () {
               print("Đã thả tim $name");
             },
           ),
         ],
       
     );
   }
}