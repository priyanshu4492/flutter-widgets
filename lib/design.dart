// import 'package:flutter/material.dart';


// import 'dart:async';


// class AnimatedScrollPage extends StatefulWidget {
//   const AnimatedScrollPage({super.key});

//   @override
//   State<AnimatedScrollPage> createState() => _AnimatedScrollPageState();
// }

// class _AnimatedScrollPageState extends State<AnimatedScrollPage> {
//   final ScrollController _controller = ScrollController();
//   double offset = 0;

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       setState(() {
//         offset = _controller.offset;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           ListView(
//             controller: _controller,
//             children: [Container(height: 1000, color: Colors.white)],
//           ),

//           Positioned(
//             top: 200 - offset * 0.3,
//             left: 50 + offset * 0.2,
//             child: Transform.rotate(
//               angle: -0.2,
//               child: containerBox(Colors.pink, "No design team"),
//             ),
//           ),

//           Positioned(
//             top: 300 - offset * 0.4,
//             right: 40 - offset * 0.2,
//             child: Transform.rotate(
//               angle: 0.2,
//               child: containerBox(Colors.blue, "Launching next week"),
//             ),
//           ),

//           Positioned(
//             top: 400 - offset * 0.5,
//             left: 80 + offset * 0.1,
//             child: Transform.rotate(
//               angle: -0.1,
//               child: containerBox(Colors.green, "Need assets fast"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget containerBox(Color color, String text) {
//     return Container(
//       width: 180,
//       height: 120,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: TextStyle(color: Colors.black, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }
