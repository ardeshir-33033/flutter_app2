import 'package:flutter/material.dart';
import 'package:flutter_app2/SecScreen.dart';
import 'package:flutter_app2/ThirdScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SecScreen(),
      },
    );
  }
}