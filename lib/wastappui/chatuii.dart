import 'dart:typed_data';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: wastappchattui(),
  ));
}
class wastappchattui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // appBar: AppBar(),
        body:ListView(
          children: const[
            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_9.png")),
                title: Text("Surya Sebin"),
                subtitle: Text("ok done ..."),
                trailing:
                  Column(
              mainAxisSize: MainAxisSize.min,
                  children: [

                    Text("11.53 AM"),
                    SizedBox(height: 2,),
                    

    ],
    )
              ),
            ),

            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_10.png"),),
                title: Text("Sebin John"),
                subtitle:
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.photo),
                      SizedBox(width:5,),
                      Text("nokku"),
                    ],
                  ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                children: [
                  Text ("10.45 AM") ,
                        SizedBox(height:5,),
                    Icon(Icons.circle,size: 22,color:Color.fromARGB(255, 66, 210, 71),),
                ],
            ),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png")),
                  title: Text("Francis"),
                  subtitle: Text("hello baby"),
                  trailing:
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Text("5.00 AM"),
                      SizedBox(height: 2,),


                    ],
                  )
              ),
            ),

            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_11.png"),),
                title: Text("Rowan Sebin"),
                subtitle:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.done),
                    SizedBox(width: 5,),
                    Text("pleae check my msg")
                  ],
                ),
                trailing:Text("3.45 PM")
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png"),),
                title: Text("Hazel Maria"),
                subtitle:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.done_all,color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text("mmmmmm....")
                  ],
                ),
                trailing:
                  Text("Yesterday")
              ),
            ),
          
          Card(
            color: Colors.white,
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_4.png"),),
                title: Text(" Maria"),
                subtitle:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call,color: Colors.red,),
                    SizedBox(width:5,),
                    Text("Missed a Vedio Call")
                  ],
                ),
                trailing:
                Text("3 weeks ago")
            ),
          ),
      ]
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.message),),
    );
  }
}
