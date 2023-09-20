import 'package:flutter/material.dart';
import 'package:flutter_project_may/homepage.dart';
import 'package:flutter_project_may/practice/homepage123.dart';


void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: LoginPages(),
  ));
}
class LoginPages extends StatelessWidget
{
  String username ="admin@123";
  String Password ="abc123";

  final uname= TextEditingController();
  final pass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"),),
      body: Container(
        decoration:  const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,

              image: AssetImage("assets/image/img_15.png")),

        ),
        child: Column(
          children: [
           // Image.asset("assets/image/img_1.png",height:100,width: 100),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),

                    hintText:"username",
                    helperText: "Uername must be an email",
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: pass,
                obscureText: true, // .... marunathu dot
                obscuringCharacter: "*", //.... dot mari star akan
                decoration:InputDecoration(border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),

                    hintText: "password",
                    helperText: "password must be contain 6 characters",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffix: Icon(Icons.visibility)
                ),

              ),
            ),

            ElevatedButton(
                onPressed: () {
                  if (uname.text != "" && pass.text !="") {
                    if (uname.text == username && pass.text == Password) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => listvw3()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar
                        (SnackBar(content: Text("email or pasword is incorrect")));

                    }
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar
                      (SnackBar(content: Text("Fields must no be empty")));
                  }
                },
                child: const Text ("Login")),
            TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>listvw3()));
                },
                child: const Text("Not a User!!!!! Register here"))



          ],
        ),
      ),
    );
  }
}





