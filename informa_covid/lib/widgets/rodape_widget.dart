import 'package:flutter/material.dart';

class Rodape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0xFF7dcadb),
          image: DecorationImage(
            image: AssetImage('assets/white-logo-unifenas.png'),
          )),
    );
  }
}
