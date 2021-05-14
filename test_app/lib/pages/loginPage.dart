import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState.validate()){

    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text("Welcome $name",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "username can't be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) => {name = value, setState(() {})},
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "password can't be empty";
                        } else if (value.length < 6) {
                          return "password can't be smaller than 6 digits";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(height: 40.0),
                    Material(
                      color: Colors.blue,
                      // shape: changeButton ? BoxShape.circle : BoxShape.rectangle
                      borderRadius: changeButton
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          // decoration: BoxDecoration(
                          //     color: Colors.blue,
                          //     // shape: changeButton ? BoxShape.circle : BoxShape.rectangle
                          //     borderRadius: changeButton
                          //         ? BorderRadius.circular(50)
                          //         : BorderRadius.circular(8)),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     onPressed: () =>
                    //         {Navigator.pushNamed(context, MyRoutes.homeRoute)},
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
