import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bethehero/screens/dashboard.dart';
import 'package:bethehero/screens/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/' : (_) => MyHomePage(),
        '/dashboard' : (_) => Dashboard(),
        '/post' : (_) => Post(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()) ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE02041),
        child: Center(
          child: SizedBox(
            width: 240.0,
            height: 102.0,
            child: SvgPicture.asset('assets/splash_logo.svg', width: 240.0, height: 102.0)
          ),
        )
      ),
    );
  }
}
