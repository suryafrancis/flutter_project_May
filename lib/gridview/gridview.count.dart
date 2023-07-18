
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridviewcount3(),
  ));
}
class gridviewcount3 extends StatelessWidget {
  const gridviewcount3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: GridView.count(crossAxisCount: 4,
    crossAxisSpacing: 30,
    mainAxisSpacing: 20,
    children:List.generate(15,
            (index) => Container(decoration: BoxDecoration(color: Colors.black,),
                child: Column(
                children: [
                  Image.asset("assets/image/img_15.png",height: 80,),
                  Text("Mango",style: TextStyle(color: Colors.yellow),)
                ],
                )))),
    );
  }
}
