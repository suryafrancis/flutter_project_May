import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_custm(),
  ));
}

class Grid_custm extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          childrenDelegate:
              ///way 1
          // SliverChildBuilderDelegate((context, index) => const Card(
          //       child: Center(
          //         child: Text("Hello"),
          //       ),
          //     ))
          SliverChildListDelegate(
            /// way 2
              List.generate(10,
                      (index) =>  Card(
                    color: colors[index],
                    child: const Center(
                      child: Text("Hello"),
                    ),
                  )))),
    );
  }
}