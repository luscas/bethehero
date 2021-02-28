import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bethehero/screens/dashboard.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xFFE02041),
      statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Color(0xFFE02041),
      body: FutureBuilder(
        future: new Future.delayed(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()) )),
        builder: (_, builder) => Container(
          child: Center(
            child: SizedBox(
              width: 240.0,
              height: 102.0,
              child: Image.asset('assets/splash_logo.png', width: 240.0, height: 102.0)
            ),
          )
        ),
      ),
    );
  }
}
