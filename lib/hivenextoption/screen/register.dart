import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/hivenextoption/model/user_modell.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../databasee/hivedbb.dart';
import 'login.dart';

class Hiveregistration extends StatelessWidget {

final hemail= TextEditingController();
final hpass= TextEditingController();
final hname=TextEditingController();
final husername=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Hive Regestration"),),
      body: Column(
        children: [
          TextField(
            controller: hemail,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email'
            ),
          ),
          TextField(
            controller: hpass,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password'
            ),
          ),
          TextField(
            controller: hname,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name'
            ),
          ),
          TextField(
            controller: husername,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username'
            ),
          ),
          ElevatedButton(onPressed: () async{
            /// database name hive db already ulla email address register cheyulla
            final reguserList = await HiveDB.instance.getuser(); /// ithu kittan ane databae code eyudhiyathu
             validateRegistration(reguserList);
             hemail.text="";
             hpass.text="";
             hname.text="";
             husername.text="";

          },
              child: const Text("Register here"))
        ],
      ),
    );
  }

  void validateRegistration(List<User> reguserList)async {
    final eemail=hemail.text.trim();
    final epwd=hpass.text.trim();
    final ename=hname.text.trim();
    final eusername=husername.text.trim();
    bool userFound =false;

    final validateEmail = EmailValidator.validate(eemail);/// thaniye email validation nadanolum
 if(eemail !="" && epwd !="") { /// checking emailand paswrd is null
   if (validateEmail == true) { ///checking corrrect form gamil menas .com undo ennu
     await Future.forEach(reguserList, (Userfromhive) { ///checking hive ulla email and koduthirikunna email correct or not
       if (Userfromhive.email == eemail) {
         userFound = true;
       } else {
         userFound = false;
       }
     });
     if(userFound == true){
Get.snackbar("error","User already Registered /Exit", colorText: Colors.red);
     }else{
       final pwdvalidation =checkpassword(epwd);
       if(pwdvalidation == true){
         final user =User(email: eemail, password: epwd, name: ename,username: eusername);
         await HiveDB.instance.adduser(user);
         Get.to (loginhivee());
         Get.snackbar("Success", "Registration succesfull",colorText: Colors.greenAccent);
       }
     }
   }else{
     Get.snackbar("Error", 'Enter a Valid Email');
   }
 }else{
   Get.snackbar("Error", "Fields must not be empty",colorText: Colors.red);
 }
  }

 bool checkpassword(String epwd) {
    if(epwd.length <6){
      Get.snackbar("Error", "Password length error",colorText: Colors.red);
      return false;
    }else{
      return true;
    }
 }
}
