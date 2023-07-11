import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listviewcustom(),
  ));
}
class listviewcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LISTVIEWCUSTOM"),),
    //  body: ListView.custom(
        //  childrenDelegate:SliverChildListDelegate(List.generate(10, (index) => Center(child: Text("Hi"))))),
body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Center(child: Text("Hi")))),
    );
  }
}
