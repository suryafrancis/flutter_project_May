import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/firebaseexx/firelogin.dart';

class Firehelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;// to fetch the currentlogin user
Future<String?>signUP({required String email,required String pwd})async {
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: pwd);
    return null;
  }on FirebaseAuthException catch(e){
    return e.message;
  }
}
///login
  Future<String?>signIn({required String email,required String pass})async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }
   Future<void>signOut()async{
await auth.signOut();
}
}