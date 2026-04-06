import 'package:flutter/material.dart';

class ModerContainer extends StatelessWidget {
  const ModerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.pink.shade400,
              ]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.pink.shade600,
                  offset: Offset(4, 4),
                  spreadRadius: 20,
                ),
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.pink.shade100,
                  offset: Offset(-4, -4),
                  spreadRadius: 20,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lifetime",
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "staking Rewards",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1.8420",
                          style: TextStyle(color: Colors.black, fontSize: 50),
                        ),
                        Row(
                          children: [
                            Icon(Icons.heart_broken,size: 40,),
                            Icon(Icons.person,size: 40,),
                            Icon(Icons.home,size: 40,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
