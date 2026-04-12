import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets/glassmorphism.dart';
import 'package:widgets/gradient.dart';
import 'package:widgets/modern_container.dart';
import 'package:widgets/neomorphism.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Glassmorphism(),
    );
  }
}



