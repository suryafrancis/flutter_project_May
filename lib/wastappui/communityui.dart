import 'package:flutter/material.dart';

class whatsppcommunityui extends StatelessWidget {
  const whatsppcommunityui({Key? key}) : super(key: key);

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
              child: ListTile(leading: Icon(Icons.people),

                  title: Text("New Community"),

            ),
              ),


            Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/image/img_15.png"),),
                title: Text("LUMINAR TECHNO LAB"),
                subtitle: Text("~ luminar:https//www.luninarr...."),


              ),
            ),
    Card(
    color: Colors.white,
    elevation: 5,
    shadowColor: Colors.black,
    child: ListTile(leading:Icon(Icons.arrow_forward_ios_outlined),
    title: Text("View All")


    ),
    ),
]
      ),
    );
  }
}
