import 'package:flutter/material.dart';
import 'package:flutter_app2/Screens/Fourth2Screen.dart';
import 'file:///E:/pagesjob/2/flutter_app2/lib/Screens/SecScreen.dart';
import 'package:flutter_app2/Screens/FourthScreen.dart';
import 'package:flutter_app2/Screens/ThirdScreen.dart';


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
        '/': (context) => Fourth2Screen(),
      },
    );
  }
}