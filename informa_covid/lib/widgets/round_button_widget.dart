import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String caminhoImg;
  final Function onTap;

  const RoundButton({
    Key key,
    this.caminhoImg = "assets/fem.png",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Material(
      color: Colors.white, // button color
      child: InkWell(
        splashColor: Color(0xFF86CFC4), // inkwell color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 130,
            height: 130,
            child: Image.asset(caminhoImg),
          ),
        ),
        onTap: onTap,
      ),
    ));
  }
}
