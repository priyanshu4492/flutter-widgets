import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOfTimesTapped = 0;

  void increasenumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  void decreaseNumber() {
    setState(() {
      numberOfTimesTapped--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 173, 125, 231),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Tapped" + numberOfTimesTapped.toString() + "times ",
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: increasenumber,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        color: Colors.red,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Text(
                    "click here",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),

              GestureDetector(
                onTap: decreaseNumber,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        color: Colors.green,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Text("click to ", style: TextStyle(fontSize: 40)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
