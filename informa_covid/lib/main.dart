import 'package:flutter/material.dart';

import 'pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informa Covid',
      theme: ThemeData(accentColor: Color(0xFF0EBCA3)),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
