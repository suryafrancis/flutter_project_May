import 'package:flutter/material.dart';

import 'firebasehelper.dart';
import 'firelogin.dart';

class frieegistration extends StatefulWidget {
  const frieegistration({Key? key}) : super(key: key);

  @override
  State<frieegistration> createState() => _frieegistrationState();
}

class _frieegistrationState extends State<frieegistration> {
  final remail =TextEditingController();
  final rpass =TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(title: Text("Firebase Login Page"),),
    body: Padding(
    padding: EdgeInsets.all(15.0),
    child: Column(
    children: [
    TextField(
    controller: remail,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: "email"),
    ),
    SizedBox(height: 20,),
    TextField(
    controller: rpass,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: "password"),
    ),
    SizedBox(height: 20,),

    ElevatedButton(onPressed: (){
    String username =remail.text.trim();
    String password = rpass.text.trim();
    
    Firehelper().signUP(email:username, pwd:password).then((message)
    {

    if(message== null){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginfire()));
    }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
    }
    });
    },
     child: Text("Register here")),
    SizedBox(height: 10,),
   
    ],
    ),
    ),
    );
    }
    }

    
  

