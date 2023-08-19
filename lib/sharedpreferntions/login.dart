import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/sharedpreferntions/mainpage.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ProfileHome extends StatefulWidget {
  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  late SharedPreferences preferences;


  @override
  void initState() {
    userdata();
    super.initState();
  }
  String?name;
  String?uname;
  String?pwd;
  String?phone;

  void userdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      name = preferences.getString('name');
      uname = preferences.getString('username');
      pwd = preferences.getString('password');
      phone = preferences.getString('phone');

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome $name",
                style: const TextStyle(fontSize: 24),
              ),
              Text(" Phone_Number: $phone"),
              ElevatedButton(
                  onPressed: () {
                    preferences.setBool("firstlogin", true);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("LOGOUT"))
            ],
          ),
        ),
      ),
    );
  }
}