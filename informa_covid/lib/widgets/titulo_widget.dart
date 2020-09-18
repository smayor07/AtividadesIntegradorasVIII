import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String label;

  const Titulo({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28.0,
      ),
    );
  }
}
