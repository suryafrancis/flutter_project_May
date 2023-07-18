import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview1(),
  ));
}
class gridview1 extends StatelessWidget {
  const gridview1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: List.generate(10, (index) => Card(child: Center(
        child: Image.asset("assets/image/img_15.png"),
      ),
        )),

      ),
    );

  }
}
