import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: wastappcallsui(),
  ));
}
class wastappcallsui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // appBar: AppBar(),
        body:ListView(
            children: [

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading:CircleAvatar(backgroundColor: Colors.green),
                  title: Text("Create call link",style: GoogleFonts.abel(fontSize:20,color:Colors.black)),
                  subtitle:
                  Row(
                    children: [

                      Text("Share a link for your WhatsApp Call"),

                    ],
                  ),
        ),
                ),
    Card(
    color: Colors.white,
    elevation: 5,
    shadowColor: Colors.black,
    child: ListTile(leading:Text("Recent")
    )
    ),



              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_9.png"),),
                    title: Text("Sunil bro",style: GoogleFonts.abel(fontSize:20,color:Colors.red)),
                    subtitle:
                        Row(
                          children: [
                            Icon(Icons.call_received_outlined ,color: Colors.red,),
                            Text("Today 9.40PM"),
                          ],
                        ),
                    trailing:

                    Icon(Icons.video_call,color: Colors.teal,),
                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_5.png"),),
                  title: Text("mummy(2)"),
                  subtitle:

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.call_made,color: Colors.green,),
                      SizedBox(width:5,),
                      Text("July 7,8.09 PM"),

                    ],
                  ),
                   trailing:

                  Icon(Icons.call,color: Colors.teal,),

                ),



              ),



              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_11.png"),),
                    title: Text(" Sebin"),
                  subtitle:

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.call_made,color: Colors.green,),
                      SizedBox(width:5,),
                      Text("July 7,8.09 PM"),

                    ],
                  ),
                  trailing:

                  Icon(Icons.video_call,color: Colors.teal,),

                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png"),),
                    title: Text("Sumi"),
                  subtitle:

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.call_made,color: Colors.green,),
                      SizedBox(width:5,),
                      Text("June 17,9.09 AM"),

                    ],
                  ),
                  trailing:

                  Icon(Icons.video_call,color: Colors.teal,),
                ),
              ),

              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_8.png"),),
                    title: Text(" Savi",style: GoogleFonts.abel(fontSize:20,color:Colors.red)),
                  subtitle:

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.call_received_outlined,color: Colors.red,),
                      SizedBox(width:5,),
                      Text("Aug 14,11.00 PM"),

                    ],
                  ),
                  trailing:

                  Icon(Icons.call,color: Colors.red,),
                ),
              ),
            ]
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_call),),

    );
  }
}
