

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/practice/loginpge.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:Imagescreen(),
  ));
}

class Imagescreen extends StatefulWidget{
  @override
  State<Imagescreen> createState() => _ImagescreenState();
}

class _ImagescreenState extends State<Imagescreen> {
  @override
  void initState() {

    Timer(Duration(seconds:3 ),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage1())) ;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
    ),
      body: Container(
        decoration: const BoxDecoration(
          //image: DecorationImage(
            //image: AssetImage("assets/image/5210056_cloud_media_social_icon.png")
            gradient: LinearGradient(colors: [Colors.yellow,
            Colors.black,
            Colors.yellowAccent
            ],begin: Alignment.bottomRight,end:Alignment.bottomLeft
            )
          ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.construction, size: 20,color: Colors.green,),
              Text("MY Practice Section",
              style: GoogleFonts.pacifico(fontSize:50,color:Colors.red)
              //Image.asset("assets/image/5210056_cloud_media_social_icon.png"),
          )
              ],
          ),
        ),

      ),
    );

  }
}
