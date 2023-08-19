import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Spashscreen(),
      ));
}

class Spashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("MyDRAWER"),),
      body: Container(
        decoration:  const BoxDecoration(
          image: DecorationImage(
           fit: BoxFit.fill, // to fit image in a full screen
          //image: NetworkImage("https://images.unsplash.com/photo-1618576980905-8b704806a39b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80")
           image: AssetImage("assets/image/img_3.png")),
            /*gradient: LinearGradient( colors: [
              Colors.red,
              Colors.pink,
              Colors.pinkAccent,
              Colors.redAccent
            ], begin: Alignment.bottomRight, end: Alignment.topLeft // side il position kodukancloursinte
            )*/
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // to move the children to the center of the coloumn
            children: [
               Icon(Icons.food_bank_rounded,color: Colors.black, size: 40,),
              Text("Fresh Foods",
                  style: GoogleFonts.pacifico(fontSize:50,color:Colors.black)
              ),
              Text("Tasty & Healthy",
                  style: GoogleFonts.abel(fontSize:30,color:Colors.black)
              ),
              //Image.asset("assets/image/img_1.png",height:400,width:400)
            ],
          ),
        ),
      ),

    );
  }
}
