import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: prodlistdumm(),
    debugShowCheckedModeBanner: false,
  ));
}
class prodlistdumm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dummy product list"),
      ),
    );
  }
}
