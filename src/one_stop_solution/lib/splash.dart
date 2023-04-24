import 'package:flutter/material.dart';
class Second_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        fontFamily: 'Work Sans'
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  "One Stop Solution",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 168),
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  "A one-stop solution for all your needs",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 168),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/logo1.gif",
                    height: 350.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Welcome UPESite!",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 168),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                  top: 150.0,
                  bottom: 20.0,
                ),
                child: Text(
                  "Made with ❤️ by OPEN Community",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 168),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
