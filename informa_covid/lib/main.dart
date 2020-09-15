import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informa Covid',
      theme: ThemeData(
        primaryColor: Color(0xFF0EBCA3),
        canvasColor: Color(0xFFD6EDE7),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
