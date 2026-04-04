// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: PatternScreen(),
//     );
//   }
// }

// class PatternScreen extends StatefulWidget {
//   const PatternScreen({super.key});

//   @override
//   State<PatternScreen> createState() => _PatternScreenState();
// }

// class _PatternScreenState extends State<PatternScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;

//   @override
//   void initState() {
//     super.initState();

//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: AnimatedBuilder(
//           animation: controller,
//           builder: (context, child) {
//             return CustomPaint(
//               size: const Size(300, 300),
//               painter: PatternPainter(controller.value),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class PatternPainter extends CustomPainter {
//   final double value;

//   PatternPainter(this.value);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);

//     final paint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;

//     int layers = 20;

//     for (int i = 0; i < layers; i++) {
//       double angle = (2 * pi / layers) * i + (value * 2 * pi);
//       double radius = 20 + i * 6;

//       final offset = Offset(
//         center.dx + cos(angle) * radius,
//         center.dy + sin(angle) * radius,
//       );

//       paint.color = Colors.primaries[i % Colors.primaries.length]
//           .withOpacity(0.7);

//       canvas.drawCircle(offset, 10 + sin(value * pi * 2 + i) * 5, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(covariant PatternPainter oldDelegate) {
//     return true;
//   }
// }