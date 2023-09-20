import 'package:flutter/material.dart';

class HiveHOmee extends StatelessWidget {
  final String email;
  const HiveHOmee({super. key, required this.email }) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME $email"),),
    );
  }
}
