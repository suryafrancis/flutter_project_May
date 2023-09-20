import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/firebaseexx/firebasehelper.dart';

import 'firehome.dart';
import 'fireregstration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: loginfire(),));
}
class loginfire extends StatefulWidget {
  const loginfire({Key? key}) : super(key: key);

  @override
  State<loginfire> createState() => _loginfireState();
}

class _loginfireState extends State<loginfire> {
  final email=TextEditingController();
  final pass =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Login Page"),),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "email"),
              ),
        SizedBox(height: 20,),
        TextField(
          controller: pass,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password"),
        ),
            SizedBox(height: 20,
            ),

ElevatedButton(onPressed: (){
  String username =email.text.trim();
  String password = pass.text.trim();
  Firehelper().signIn(email:username,pass:password).then((value){
    if(value==null){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homefire()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(value)));


    }
  });
},
    child: Text("Login here")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>frieegistration()));
            },
                child: Text("Register here")),
             ],
        ),
      ),
    );
  }
}
