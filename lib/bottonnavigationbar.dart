import 'package:flutter/material.dart';
import 'package:flutter_project_may/wastappui/callsui.dart';
import 'package:flutter_project_may/wastappui/chatuii.dart';
import 'package:flutter_project_may/wastappui/communityui.dart';
import 'package:flutter_project_may/wastappui/statusui.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: Bottonnavigationbar(),
  ));
}
class Bottonnavigationbar extends StatefulWidget {
  @override
  State<Bottonnavigationbar> createState() => _BottonnavigationbarState();
}

class _BottonnavigationbarState extends State<Bottonnavigationbar> {
  int index=0;
  var screens=[whatsppcommunityui(),
    wastappchattui(),
    wastappstatusui(),
    wastappcallsui(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomBar"),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
            index =tapindex;
          });

        },
        //backgroundColor: Colors.green,
        currentIndex: index,
        selectedItemColor: Colors.yellowAccent,
        type: BottomNavigationBarType.shifting,
       // type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(backgroundColor:Colors.red ,
            icon: Icon(Icons.home_filled),label: "HOME"),
        BottomNavigationBarItem(backgroundColor:Colors.green,
            icon: Icon(Icons.search),label: "SEARCH"),
        BottomNavigationBarItem(backgroundColor:Colors.pink,
            icon: Icon(Icons.add_box_rounded),label: "VIEW"),
        BottomNavigationBarItem(backgroundColor:Colors.brown,
            icon: Icon(Icons.contacts_sharp),label: "CONTACT")
      ],),
      body:screens[index] ,
    );
  }
}
