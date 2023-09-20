
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: Grid2screen(),
  ));
}

class Grid2screen extends StatelessWidget {

  static String id = 'GridviewBuilder-Screen';

  @override
  Widget build(BuildContext context) {
    List cardContent = [
      [Icons.apple, 'Name: Apple', Colors.grey],
      [Icons.add_call, 'Heart\nShaker', Colors.red],
      [Icons.move_down, 'Heart\nShaker', Colors.yellow],
      [Icons.notification_add, 'Heart\nShaker', Colors.cyan],
      [Icons.downhill_skiing, 'Heart\nShaker', Colors.purple],
      [Icons.home, 'Heart\nShaker', Colors.blue],
      [Icons.terminal, 'Heart\nShaker', Colors.red],
      [Icons.move_down, 'Heart\nShaker', Colors.yellow],
      [Icons.notification_add, 'Heart\nShaker', Colors.cyan],
      [Icons.downhill_skiing, 'Heart\nShaker', Colors.purple],
    ];
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text('GridView Task'),
        backgroundColor: Colors.green.shade300,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) =>
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cardContent[index][2]),
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        cardContent[index][0],
                        size: 40,
                      ),
                      title: Text(
                        cardContent[index][1],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ))),
    );
  }
}



