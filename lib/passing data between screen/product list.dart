import 'package:flutter/material.dart';
import 'package:flutter_project_may/passing%20data%20between%20screen/dummydata.dart';
import 'package:flutter_project_may/passing%20data%20between%20screen/product%20details.dart';
void main() {
  runApp(MaterialApp(
    home: productlist(),
    debugShowCheckedModeBanner: false,
    routes: {
      "details":(context)=>productdetails(),
     // "cart":(context)=>listview(), ... next route kodukan pageil set cheyam
    },
  ));
}
class productlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Products"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        ///e represents each single map in the list
        children: products.map((e) => ListTile(
          leading: Image.asset(e["image"]),
          title: Text(e["name"]),
          onTap: ()=>gotodetails(context,e["id"]),
        )).toList(),///.... to list is used to convert themap values to the list
      ),
    );
  }
 void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details",arguments: id);


  }
}
