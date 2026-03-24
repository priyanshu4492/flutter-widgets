import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext ontext) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 12,
          children: [Container(height: 50, width: 50, color: Colors.red)],
        ),
      ),
    );
  }
}
