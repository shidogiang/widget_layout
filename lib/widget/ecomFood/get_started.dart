import 'package:flutter/material.dart';
import 'package:widget_layout_homework/widget/ecom/ecom_home_screen.dart';
import 'home_screen.dart'; //
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Hình nền xanh bo tròn  
          Container(
            height: size.height * 0.55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF5A9846),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(size.width, 50), 
              ),
            ),
          ),
          // Text & button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Complete your\ngrocery need\neasily",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      height: 1.1,
                      color: Colors.black,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Column(
                    children: [
                      // Button: GET STARTED 
                      SizedBox(
                        width: 220,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5A9846),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            print("Đã ấn sang home screen");    
                             Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen()),
                            );
                            
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Get Started",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_right_alt, size: 28),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 15), 

                      // Alternative ~ Sang giao diện ecom (Phụ)
                      TextButton(
                        onPressed: () {
                          print("Chuyển sang giao diện ecom");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EcomHomeScreen(), 
                            ),
                          );
                          
                        },
                        child: const Text(
                          "Alternative - Giao diện Ecom",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey, 
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline, 
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}