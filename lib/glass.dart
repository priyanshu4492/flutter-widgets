// import 'dart:ui';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           color: Colors.red[100],
//           child: Center(child: GlassBox()),
//         ),
//       ),
//     );
//   }
// }

// class GlassBox extends StatelessWidget {
//   const GlassBox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(25),
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.deepPurple[200],
//         child: Stack(
//           children: [
//             //blur effect
//             BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//               child: Container(),
//             ),
//             //gradient effect
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white.withOpacity(0.3)),
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [
//                     Colors.white.withOpacity(0.3),
//                     Colors.white.withOpacity(0.3)
//                   ],
//                 ),
//               ),
//             ),

//             //child
//           ],
//         ),
//       ),
//     );
//   }
// }
