import 'package:flutter/material.dart';
import 'package:test_app/pages/loginPage.dart';
import 'package:test_app/utils/routes.dart';
import './pages/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp(Key key) : super(key: key)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/" : (context) => Login(),
        MyRoutes.loginRoute : (context) => Login(),
        MyRoutes.homeRoute : (context) => Home(),
      },
    );
  }
}
