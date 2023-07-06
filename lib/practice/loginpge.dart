

import 'package:flutter/material.dart';
import 'package:flutter_project_may/practice/regisstrtionpratc.dart';

class LoginPage1 extends StatelessWidget {

  String username1= "surya123";
  String password1="sebin123";

  final usesurya =TextEditingController();
  final passsebin=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Login Page1"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: usesurya,
              decoration: InputDecoration (
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),
                 hintText: "UserName",
                helperText: "Username must be an email",
                labelText: "Uername",
                prefixIcon: Icon(Icons.person)
              ),
            ),
          ),


    Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: passsebin,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)),
    hintText: "Password",
    helperText: "Password must be strong",
    labelText: "Password",
    prefixIcon: Icon(Icons.visibility),
    suffix: Icon(Icons.visibility_off_sharp)
          )
        ),
      ),
    ElevatedButton(onPressed: () {
      if (usesurya.text != "" && passsebin.text != "") {
        if (usesurya.text == username1 && passsebin.text == password1) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RegistrationPage1()));
        }
        else {
          ScaffoldMessenger.of(context).showSnackBar
            (SnackBar(content: Text("username or password is incorrect")));
        }
      }else{
        ScaffoldMessenger.of(context).showSnackBar
          (SnackBar(content: Text("Fields must no be empty")));
      }

    },
        child: Text("LOGIN")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationPage1()));
              },
              child: const Text("Not a User!!!!! Register here"))

        ],
      ),
    );
  }
}



