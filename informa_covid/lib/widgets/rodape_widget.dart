import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rodape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 62,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFF7dcadb),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 0),
            child: SvgPicture.asset(
              "assets/logo-unifenas.svg",
              color: Colors.white,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
