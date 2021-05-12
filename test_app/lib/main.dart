import 'package:flutter/material.dart';
import 'package:test_app/pages/loginPage.dart';
import './pages/homePage.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/" : (context) => Login(),
        "/login" : (context) => Login(),
      },
    );
  }
}
