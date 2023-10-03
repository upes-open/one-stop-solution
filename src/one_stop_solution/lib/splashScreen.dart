import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/login_signup.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Splash_screen extends StatefulWidget {
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => LoginPage(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: 'Work Sans'),
      home: Scaffold(
        body: Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/logo_1.gif",
                    height: 350.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "A SOLUTION FOR ALL YOUR NEEDS",
                  style: TextStyle(
                    color: textColor,
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
                    color: Color.fromARGB(255, 0, 0, 0),
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
