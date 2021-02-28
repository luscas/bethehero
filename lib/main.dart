import 'package:flutter/material.dart';

import 'package:bethehero/screens/splash.dart';
import 'package:bethehero/screens/dashboard.dart';
import 'package:bethehero/screens/post.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Be The Hero',
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    routes: {
      '/' : (_) => SplashPage(),
      '/dashboard' : (_) => DashboardPage(),
      '/post' : (_) => PostPage(),
    },
  )
);

