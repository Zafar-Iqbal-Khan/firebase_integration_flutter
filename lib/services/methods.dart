import 'package:data_me/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<User> createAccount({String name, String email, String password}) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;

    if (user != null) {
      print('account created successfully');
      return user;
    } else {
      print('account creation failed');
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<User> login({String email, String password}) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;

    if (user != null) {
      print('login successful');
      return user;
    } else {
      print('login failed');
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<User> logout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut().then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    });
  } catch (e) {
    print("error");
  }
}
