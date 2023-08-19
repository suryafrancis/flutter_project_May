import 'package:flutter/material.dart';

import '../databasee/hivedbb.dart';

class Hiveregistration extends StatelessWidget {

final hemail= TextEditingController();
final hpass= TextEditingController();
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
          ElevatedButton(onPressed: () async{
            /// database name hive db already ulla email address register cheyulla
            final reguserList=await HiveDB.instance.getuser();

          }, child: const Text("Register here"))
        ],
      ),
    );
  }
}
