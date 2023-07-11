import 'dart:typed_data';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: wastappstatusui(),
  ));
}
class wastappstatusui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        body:ListView(
            children: [
              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_9.png")),
                    title: Text("Surya "),
                    subtitle: Text("58 minutes ago"),
                    trailing:Text("")
                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_10.png"),),
                  title: Text("John"),
                  subtitle:

                      Text("Today, 10.45PM"),
                  trailing:
                    Text(""),

                ),

              ),



              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_11.png"),),
                    title: Text("Rowan "),
                    subtitle:

                        Text("Today, 6.30AM"),
                    trailing:Text(""),

                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png"),),
                    title: Text("Hazel Maria"),
                    subtitle:

                        Text("Today,8.40PM"),
                    trailing:
                    Text("")

                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_4.png"),),
                    title: Text(" Maria"),
                    subtitle:
                        Text("Today,8.20 PM"),
                    trailing:
                    Text(""),

                ),
              ),
            ]
        )
    );




  }
}
