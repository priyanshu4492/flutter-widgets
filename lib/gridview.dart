import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
    int rows = 20;
  int cols = 10;

  List<Color> gridColors = [];

  @override
  void initState() {
    super.initState();
    gridColors = List.generate(rows * cols, (index) => Colors.grey);
  }

  void changeColor(int index) {
    setState(() {
      gridColors[index] = Colors.primaries[index % Colors.primaries.length];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10) ,
      itemCount: 200,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: () => changeColor(index),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 20,
              color: gridColors[index],
            ),
          ),
        );
      }),
    );
  }
}