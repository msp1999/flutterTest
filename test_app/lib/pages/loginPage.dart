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
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) => {name = value, setState(() {})},
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 40.0),
                  InkWell(
                    onTap:() async
                        {
                          setState(() {
                          changeButton = true;
                            
                          });
                          await Future.delayed(Duration(seconds:1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changeButton ? Icon(
                        Icons.done,
                        color: Colors.white,
                      ) : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          // shape: changeButton ? BoxShape.circle : BoxShape.rectangle
                          borderRadius: changeButton ? BorderRadius.circular(50) : BorderRadius.circular(8)
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
          ],
        ),
      ),
    );
  }
}
