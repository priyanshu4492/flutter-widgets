import 'package:flutter/material.dart';

class ModerContainer1 extends StatelessWidget {
  const ModerContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Color(0xff7b2ff7), Color(0xfff107a3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
    );
  }
}