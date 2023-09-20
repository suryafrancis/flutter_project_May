


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/practice/loginpage12.dart';

import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashspage1(),
  ));
}

class Splashspage1 extends StatefulWidget {
  @override
  State<Splashspage1> createState() => _Splashspage1State(); //  create and initial state of the screen
}

class _Splashspage1State extends State<Splashspage1> {

  
  @override
  void initState() {
    Timer(Duration(seconds:5 ),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPages())) ;
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/image/img_14.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Beauty is who you are… Jewelery is simply the icing on the cake...",
                style: GoogleFonts.adventPro(fontSize: 15, color: Colors.white),
              ),
              Image.asset(
                "assets/image/img_17.png",
                height: 300,
                width: 300,
              ),
              Text(
                "ROWAN'S JEWELERY",
                style: GoogleFonts.abel(fontSize: 60, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }



   
}








