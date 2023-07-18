import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Litviewseperate(),
  ));
}
class Litviewseperate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(" LIST SEPERATE"),
    ),
    body: ListView.separated(itemBuilder: (context,index) {
      return Card(
        child: Text("hello"),
        color: Colors.red,
      );
    },
      separatorBuilder : (context,index) {
        return Divider();
      },
        itemCount: 10));
  }
  }

