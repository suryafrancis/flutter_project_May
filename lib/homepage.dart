
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage1(),
  ));
}
class homepage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME PAGE"),
     // actions: [
    //    Icon(Icons.camera_alt)
     // ],
    ),
      body: ListView(
        children:[
          Center(child: Text("Fruits",style: GoogleFonts.dancingScript(fontSize:80,color:Colors.red))),
             const Card(
             color: Colors.green,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_5.png")),
             //child: ListTile(leading: Image.asset("assets/image/img_5.png"), .. sadharna cheyunathu
            title: Text("Grapes"),
            subtitle: Text("\$200"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.favorite),
      SizedBox(width: 20,),
      Icon(Icons.shopping_cart)

    ],
    )

            ),
          ),
          const Card(
            color: Colors.greenAccent,
            elevation: 5,
    shadowColor: Colors.red,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_6.png")),
            title: Text("Mangos"),
            subtitle: Text("\$150"),
            trailing:Row(
              mainAxisSize: MainAxisSize.min,
    children: [
    Icon(Icons.favorite),
    SizedBox(width: 20,),
    Icon(Icons.shopping_cart)

    ],
    )
            ),
          ),
           const Card(
            color: Colors.green,
            elevation: 5,
    shadowColor: Colors.red,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_7.png")),
            title: Text("Pineapple"),
            subtitle: Text("\$250"),
            trailing:
    Row(
    mainAxisSize: MainAxisSize.min,
    children: [
    Icon(Icons.favorite),
    SizedBox(width: 20,),
    Icon(Icons.shopping_cart)

    ],
    )

            ),
          ),
         const Card(
           color: Colors.greenAccent,
           elevation: 5,
           shadowColor: Colors.red,
           child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_8.png")),
           title: Text("Apple"),
           subtitle: Text("\$300"),
           trailing:
    Row(
    mainAxisSize: MainAxisSize.min,
    children: [
    Icon(Icons.favorite),
    SizedBox(width: 20,),
    Icon(Icons.shopping_cart)

    ],
    )
           ),
         ),
        ],
      )
        
    );

  }
}
