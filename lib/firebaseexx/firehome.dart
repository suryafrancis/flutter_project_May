import 'package:flutter/material.dart';
import 'package:flutter_project_may/firebaseexx/firebasehelper.dart';
import 'package:flutter_project_may/firebaseexx/firelogin.dart';

class Homefire extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Firehelper().signOut().then((value) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginfire()));
            });
          },
          child: Text("sign_out")),
        ),

    );
  }
}
