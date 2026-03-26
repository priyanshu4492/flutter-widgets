// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.pink[100],
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: _textController,
//                 decoration: InputDecoration(
//                   hintText: 'whats on your mind',
//                   border: OutlineInputBorder(),
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       _textController.clear();
//                     },
//                     icon: Icon(Icons.clear),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
