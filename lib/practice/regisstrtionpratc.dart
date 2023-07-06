
import 'package:flutter/material.dart';
import 'package:flutter_project_may/practice/loginpge.dart';

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({Key? key}) : super(key: key);

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SIGN UP"),),
      body: Column(
        children: [
          Text("Create an Account,its free..." ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                    hintText: "Username",
                    helperText: "Username must be strong",
                    labelText:"Username",
                    prefixIcon: Icon(Icons.person)
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                    hintText: "Email",
                    helperText: "Email must be strong",
                    labelText:"Email",
                    prefixIcon: Icon(Icons.email)
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                    hintText: "Password",
                    helperText: "Password must be strong",
                    labelText:"Pasword",
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffix: Icon(Icons.visibility)

                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                    hintText: "Confirm Password",
                    helperText: "Confirm Password must be strong",
                    labelText:"Confirm Pasword",
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffix: Icon(Icons.visibility)

                )
            ),
          ),
          ElevatedButton(onPressed: (){}, child: const Text ("SIGN UP")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage1()));
              },
              child: const Text("Do you have any user? login here..."))


        ],

      ),

    );
  }
}

