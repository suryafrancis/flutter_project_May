import 'package:flutter/material.dart';
import 'package:flutter_project_may/hivenextoption/databasee/hivedbb.dart';
import 'package:flutter_project_may/hivenextoption/model/user_modell.dart';
import 'package:flutter_project_may/hivenextoption/screen/register.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('UserData');
  runApp(GetMaterialApp(home: loginhivee()));
}
class loginhivee extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login using HIVE"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "email"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                    hintText: "password"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                final userslist = await HiveDB.instance.getuser();
                checkuserexit(userslist);
              }, child: Text("login")),
              TextButton(onPressed: () {
                Get.to(Hiveregistration());
              },
                  child: Text("not a user? Register here"))

            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkuserexit(List<User> userslist) async {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userFound = false;
    if (lemail != '' && lpass != '') {
      await Future.forEach(userslist, (reguserfromhive) {
        if (lemail == reguserfromhive.email &&
            lpass == reguserfromhive.password) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound == true) {
        Get.offAll(() => HiveHOmee(email: lemail));
        Get.snackbar("Success", "Login Success $lemail",colorText: Colors.red);
      } else {
        Get.snackbar("Error", "notuser found",colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Field must not be empty",colorText: Colors.red);
    }
  }
}
