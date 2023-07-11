import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/practice/imagepractise.dart';
import 'package:flutter_project_may/practice/loginpge.dart';
import 'package:flutter_project_may/practice/regisstrtionpratc.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: tatbar2(),
  ));
}
class tatbar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(title: Text("WHATSAPP"),
      bottom: TabBar(tabs: [Icon(Icons.people_alt_rounded),
        Icon(Icons.call),
        Icon(Icons.chat)
      ]),
      ),
      body: TabBarView(children: [
        Imagescreen(),
        LoginPage1(),
        RegistrationPage1()
      ]),

    ));
  }
}
