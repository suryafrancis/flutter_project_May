
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(MaterialApp(home: lotanimations(),
    debugShowCheckedModeBanner: false,
  ));
}
class lotanimations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       // child: Lottie.asset("assets/animations/box.json"),
        child:Lottie.network("https://lottie.host/f924107b-73d5-4260-a6fa-58b8f15fcf9f/OyCmzrRYNq.json")
      ),
    );
  }
}
