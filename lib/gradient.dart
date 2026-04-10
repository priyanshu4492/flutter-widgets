import 'dart:ui';

import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  const GradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔥 Base Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEADCD5),
                  Color(0xFFD6B1B1),
                  Color(0xFF6D4A7E),
                  Color(0xFF2E1A3C),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // 🌈 Radial Glow (Top Left)
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.8,
                  colors: [Colors.pink.withOpacity(0.4), Colors.transparent],
                ),
              ),
            ),
          ),

          // 🌈 Radial Glow (Bottom Right)
          Positioned(
            bottom: -120,
            right: -100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.9,
                  colors: [
                    Colors.deepPurple.withOpacity(0.4),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // ✨ Extra Soft Glow (Center)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.7,
                  colors: [Colors.orange.withOpacity(0.2), Colors.transparent],
                ),
              ),
            ),
          ),

          // 🌫️ Blur Layer (IMPORTANT)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(color: Colors.transparent),
          ),

          
            //main content
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //profile icon
                Container(
                  height: 70,
                  width: 70,
                  child: Icon(Icons.person, size: 30, color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.08),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),

                //name and welcome message
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                        Text("Welcome👋", style: TextStyle(color: Colors.grey,fontSize: 15)),

                        Text(
                          "Noah Copper",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                //notification icon
                Container(
                  height: 70,
                  width: 70,
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.08),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),


              ],
            ),
          ),


            //task containers
        Row(
          children: [
                Positioned(
            top: 140,
            left: 30,
            child: Container(
              width: 80,
              height: 100,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.08),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          ),
              Positioned(
            top: 140,
            left: 30,
            child: Container(
              width: 80,
              height: 100,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.08),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          ),

    Positioned(
            top: 140,
            left: 30,
            child: Container(
              width: 80,
              height: 100,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.08),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          ),


          ],
        ),
          const SizedBox(height: 30,),
          //chart container
          Center(
            child: Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.08),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 20),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Circle UI
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: SweepGradient(
                              colors: [
                                Colors.white24,
                                Colors.orange,
                                Colors.orange,
                                Colors.white24,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Text(
                                  "87",
                                  style: TextStyle(
                                    fontSize: 38,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Bring It On",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "A great night's sleep can boost your readiness.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // Stack(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [
      //             Color(0xFFEADCD5),
      //             Color(0xFFD6B1B1),
      //             Color(0xFFB07A8F),
      //             Color(0xFF6D4A7E),
      //             Color(0xFF2E1A3C),
      //           ],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //         ),
      //       ),
      //     ),

      //     Positioned(
      //       top: -120,
      //       left: -50,
      //       child: Container(
      //         width: 300,
      //         height: 300,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.pink.withOpacity(0.2),
      //         ),
      //       ),
      //     ),

      //     Positioned(
      //       top: 300,
      //       left: 50,
      //       child: Container(
      //         width: 300,
      //         height: 300,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.pink.withOpacity(0.1),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: -120,
      //       right: -50,
      //       child: Container(
      //         width: 300,
      //         height: 300,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.purple.withOpacity(0.2),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
