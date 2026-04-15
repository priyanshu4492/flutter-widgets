import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/darkmode/dark_home.dart';
import 'package:widgets/darkmode/theme/theme.dart';
import 'package:widgets/darkmode/theme/themeprovider.dart';
import 'package:widgets/glassmorphism.dart';
import 'package:widgets/gradient.dart';
import 'package:widgets/gridview.dart';
import 'package:widgets/modern_container.dart';
import 'package:widgets/neomorphism.dart';
import 'package:widgets/quiz.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DarkHome(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
