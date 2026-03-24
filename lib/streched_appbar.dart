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
//         backgroundColor: Colors.deepPurple[100],
//         body: CustomScrollView(
//           slivers: [
//             //slivver app bar
//             SliverAppBar(
//               backgroundColor: Colors.deepPurple,
//               leading: Icon(Icons.menu),
             
//               expandedHeight: 300,
//               // pinned: true,

//               flexibleSpace: FlexibleSpaceBar(
//                 background: Container(color: Colors.redAccent[200]),
//                 title: Text("S L I V E R A P P B A R"),
                
//               ),
//             ),
//             //sliver items
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(height: 400, color: Colors.deepPurple[300]),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(height: 400, color: Colors.deepPurple[300]),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(height: 400, color: Colors.deepPurple[300]),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(height: 400, color: Colors.deepPurple[300]),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(height: 400, color: Colors.deepPurple[300]),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
