import 'package:flutter/material.dart';
import 'package:flutter_project_may/sharedpreferntions/login.dart';

class regsietionnew extends StatefulWidget {
  @override
  State<regsietionnew> createState() => _regsietionnewState();
}

class _regsietionnewState extends State<regsietionnew> {
  final formkey =GlobalKey<FormState>();
  var confirmpassword;
  bool showpass =true;// obsecuringvale hide akaumopen akanum
  bool showpass1 =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statefull Registration"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "Regitration Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                  decoration: InputDecoration(

                      border: OutlineInputBorder(), hintText: "Username"),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return " Enter a valid email/Field must not be empty ";
                    } else
                      return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          if(showpass){

                            showpass =false;
                          }
                          else{
                            showpass =true;
                          }
                        });
                      }, icon: Icon(showpass== true ? Icons.visibility:Icons.visibility_off_sharp)) ,
                      border: OutlineInputBorder(), hintText: "Password"),
                  validator: (password) {
                    confirmpassword = password;
                    if (password!.isEmpty || password.length < 6) {
                      return " Password length should be greater than 6 ";
                    } else
                      return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpass1,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    suffixIcon:IconButton(onPressed: (){
                      setState(() {
                        if(showpass1){

                          showpass1 =false;
                        }
                        else{
                          showpass1 =true;
                        }
                      });
                    }, icon: Icon(showpass1== true ? Icons.visibility:Icons.visibility_off_sharp)) ,
                  border: OutlineInputBorder(),hintText: "cofirm password"),
                validator: (cpaassword){
                  if (cpaassword != confirmpassword || cpaassword !.isEmpty){
    return"Password is mismatch";
    }else{
      return null;
                  }
                },
                ),
              ),

            ElevatedButton(onPressed: () {
              var isValid = formkey.currentState!.validate();
              if(isValid==true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              }

            }, child: Text("Register here"))
          ],
        ),
      ),
    );
  }
}
