
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
        child:Lottie.network("url")
      ),
    );
  }
}
