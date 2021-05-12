import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("my app"),
        ),
        body: Center(
          child: Container(
            child: Text("hello msp"),
          ),
        ),
        drawer: Drawer()
        );
  }
}
