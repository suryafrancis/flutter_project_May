import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/wastappui/callsui.dart';
import 'package:flutter_project_may/wastappui/chatuii.dart';
import 'package:flutter_project_may/wastappui/communityui.dart';
import 'package:flutter_project_may/wastappui/statusui.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: HelloConvexAppBar(),
  ));
}
class HelloConvexAppBar extends StatefulWidget {
  @override
  State<HelloConvexAppBar> createState() => _HelloConvexAppBarState();
}

class _HelloConvexAppBarState extends State<HelloConvexAppBar> {

  int index=0;

  var screens=[whatsppcommunityui(),
  wastappchattui(),
  wastappstatusui(),
  wastappcallsui(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello ConvexAppBar')),
      body: screens[index] ,

      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],

        onTap: (tapindex){
          setState(() {
            index =tapindex;
          });

        },
      ),


    );
  }
}