import 'package:flutter/material.dart';
import 'package:flutter_project_may/sharedpreferntions/registrionshared.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
import 'mainpage.dart';
void main() {
  runApp(MaterialApp(home: loginreg2(),
    debugShowCheckedModeBanner: false,
  ));
}
class loginreg2 extends StatefulWidget {
  const loginreg2({Key? key}) : super(key: key);

  @override
  State<loginreg2> createState() => _loginreg2State();
}

class _loginreg2State extends State<loginreg2> {

  final uname=TextEditingController();
  final pass=TextEditingController();

  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("register login"),
     ),
     body: Center(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               controller: uname,
               decoration: InputDecoration(border: OutlineInputBorder(),
               hintText: "username"),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               controller: pass,
               decoration: InputDecoration(border: OutlineInputBorder(),
                   hintText: "password"),

             ),
           ),
           ElevatedButton(onPressed: ()=>validateandlogin(), child: Text("Login")),
           ElevatedButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>registrtionshared()));

           }, child: Text("go toregistration page"))
         ],
       ),
     ),
   );
  }

 void validateandlogin() async{
   preferences =await SharedPreferences.getInstance()!;
   String storedusername = preferences.getString('uname')!;
   String storedpasswrd = preferences.getString('pwd')!;

    String username =uname.text;
    String pwd= pass.text;

    if(storedusername == username && storedpasswrd ==pwd){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
    }else
      {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("inavlid username or passwrd")));
      }
 }
}
