import 'package:flutter/material.dart';
import 'package:flutter_project_may/wastappui/callsui.dart';
import 'package:flutter_project_may/wastappui/chatuii.dart';
import 'package:flutter_project_may/wastappui/communityui.dart';
import 'package:flutter_project_may/wastappui/statusui.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: tabbar(),
  ));
}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(width: 20,),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Settings")),
              ];
            }
            )
          ],

      bottom: TabBar(tabs: [
        Icon(Icons.people),
        Text("Chats"),
        Text("Status"),
        Text("Calls")
      ],),
      ),
      body:TabBarView(children: [
        whatsppcommunityui(),
        wastappchattui(),
        wastappstatusui(),
        wastappcallsui(),

      ],)

      ),
    );
  }
}