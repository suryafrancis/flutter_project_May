import 'dart:typed_data';



import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: contactui(),
  ));
}
class contactui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("SimpleContactList"),),
      body:ListView(
        children:[
        Card(
            color: Colors.pink,
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_9.png")),
              title: Text("Surya Sebin"),
              subtitle: Text("8907612390"),
              trailing: Icon(Icons.shopping_cart),
            ),
    ),

           Card(
            color: Colors.pinkAccent,
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_10.png"),),
              title: Text("Sebin John"),
              subtitle: Text("9995253146"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),

            ),
          ),


          Card(
              color: Colors.pink,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_11.png"),),
                title: Text("Rowan Sebin"),
                subtitle: Text("9995256987"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),

              ),
            ),

          Card(
            color: Colors.pinkAccent,
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png"),),
              title: Text("Hazel Maria"),
              subtitle: Text("9995014514"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),

            ),
          ),
      ],

      ));

  }
}
