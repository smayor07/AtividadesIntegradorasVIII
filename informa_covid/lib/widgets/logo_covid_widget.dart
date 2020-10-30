import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoCovid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/logo-covid.svg",
      height: 40.0,
      color: Colors.white,
    );
  }
}
