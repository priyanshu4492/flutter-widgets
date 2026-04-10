import 'package:flutter/material.dart';

class Neomorphism extends StatelessWidget {
  const Neomorphism({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),

              boxShadow: [
                BoxShadow(
                  //bottomright
                  offset: Offset(4, 4),
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: Colors.grey.shade600,
                ),
                //topleft
                BoxShadow(
                  //bottomright
                  color: Colors.white,
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(-4, -4),
                ),
              ],
            ),
            child: Center(child: Text("SHADOW")),
          ),
        ),
      ),
    );
  }
}
