import 'dart:ui';

import 'package:flutter/material.dart';
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
      home:ModerContainer()
    );
  }
}
