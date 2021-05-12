import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Text(
        "login Page ",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
      ),
    ));
  }
}
