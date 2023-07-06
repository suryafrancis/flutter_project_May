import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/login.dart';
import 'package:flutter_project_may/practice/loginpge.dart';
import 'package:flutter_project_may/registrationstatefull.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Spashspage(),
  ));
}

class Spashspage extends StatefulWidget {
  @override
  State<Spashspage> createState() => _SpashspageState(); //  create and initial state of the screen
}

class _SpashspageState extends State<Spashspage> { // initial state of spashpage
  // there are two functionalities in state class
  // initState (){} and setState(){}
  //instate..what will happend when the appear screen is loaded initially
  // setstate.... what change will occur on widget or screen
   @override
  void initState() {
    Timer(Duration(seconds:3 ),(){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage())) ;
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
              //image: NetworkImage("https://images.unsplash.com/photo-1618576980905-8b704806a39b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80")
              image: AssetImage("assets/image/img_1.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/img.png",
                height: 400,
                width: 400,
              ),
              Text(
                "My Appliaction",
                style: GoogleFonts.abel(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
