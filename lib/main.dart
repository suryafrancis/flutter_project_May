import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// funct({int? a,required int b,int c =10}).... optionl parameters
void main() {             // to run a program
  runApp(                //runapp... to attach the widget tree to the ui
      MaterialApp(
        debugShowCheckedModeBanner: false,//default theme of our app(multiplatform support
    home: FirstPage(), // initial screen of our app
  ));
}
class FirstPage extends StatelessWidget { // stateless means first page donot need any change
  @override
  Widget build(BuildContext context) {   //to create a widget tree( build context ..to monitor the
                                        // widgets in ths widget tree)
    return Scaffold(//curser kond vekunmbol kanunathu parameters ane scaffold nte
      backgroundColor: Colors.purple, // to set a single color to theentire screen
      /*appBar: AppBar(
        title: Text("My App"),
       // title: Icon(Icons.access_time_sharp),
     ),*/
      
      body: Container(
       // color: Colors.amber, // to set a single clor in entire screen using container
        decoration:  const BoxDecoration( // to set an image in a bckground
          //image: DecorationImage(
           // fit: BoxFit.fill, // to fit image in a full screen
            //image: NetworkImage("https://images.unsplash.com/photo-1618576980905-8b704806a39b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80")
             // image: AssetImage("assets/image/image1.png")
          gradient: LinearGradient( colors: [
            Colors.red,
            Colors.pink,
            Colors.pinkAccent,
            Colors.redAccent
          ], begin: Alignment.bottomRight, end: Alignment.topLeft // side il position kodukancloursinte
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // to move the children to the center of the coloumn
            children: [
             // Icon(Icons.ac_unit,color: Colors.orange, size: 40,),
             Image.asset("assets/image/5210056_cloud_media_social_icon.png",height: 200,width: 200,),
             // Image.network("https://images.unsplash.com/photo-1687190521573-337b1250e25e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),

              Text("My Application",
                //style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),
                  style: GoogleFonts.pacifico(fontSize:50,color:Colors.red)
                 )
            ],
          ),
        ),
      ),
        
    );
  }
}
