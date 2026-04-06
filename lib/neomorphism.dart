// import 'package:flutter/material.dart';
// class neoMorphism extends StatelessWidget {
//   const neoMorphism({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.deepPurple[300],
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 100,
//                 width: 100,

//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                     end: Alignment.topLeft,
//                     begin: Alignment.bottomRight,
//                     colors: [
//                       Colors.deepPurple.shade300,
//                       Colors.deepPurple.shade700,
//                     ],
//                   ),

//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.deepPurple.shade700,
//                       blurRadius: 15,
//                       spreadRadius: 1,
//                       offset: Offset(-10, -10),
//                     ),
//                     BoxShadow(
//                       color: Colors.deepPurple.shade700,
//                       blurRadius: 15,
//                       spreadRadius: 1,
//                       offset: Offset(10, 10),
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: Text(
//                     "1",
//                     style: TextStyle(
//                       fontSize: 50,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }