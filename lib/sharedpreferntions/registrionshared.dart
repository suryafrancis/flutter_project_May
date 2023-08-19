import 'package:flutter/material.dart';
import 'package:flutter_project_may/sharedpreferntions/mainpage.dart';
import 'package:flutter_project_may/sharedpreferntions/reglogin2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class registrtionshared extends StatefulWidget {
  const registrtionshared({Key? key}) : super(key: key);

  @override
  State<registrtionshared> createState() => _registrtionsharedState();
}

class _registrtionsharedState extends State<registrtionshared> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  final phone =TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "pasword"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Phone number"),
              ),
            ),
            ElevatedButton(onPressed: ()=>storedate(), child: Text("Register Here"))
          ],
        ),
      ),
    );
  }
///ojct vilikan ullathu ane method
 void storedate() async{
   String personname=name.text;
   String username =uname.text;
   String password =pwd.text;
   String number =phone.text;

   preferences= await SharedPreferences.getInstance()!;
   preferences.setString('name', personname);
   preferences.setString('uname', username);
   preferences.setString('pwd', password);
   preferences.setString('phone', number);

   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
 }
}


