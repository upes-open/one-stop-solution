import 'package:flutter/material.dart';
import 'splash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        fontFamily: 'Work Sans'
      ),
      home: Second_screen (),
    );
  }
}
