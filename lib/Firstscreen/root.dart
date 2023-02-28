import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../App.dart';
import '../login.dart';


class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> user) {
        if (user.hasData) {
          return App();
        } else {
          return Login();
        }
      },
    );
  }
}
