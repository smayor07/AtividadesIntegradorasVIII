import 'package:flutter/material.dart';
import 'package:informa_covid/pages/utilizaMascara_page.dart';
import 'package:informa_covid/widgets/round_button_widget.dart';

class NoYes extends StatelessWidget {
  final String caminhoImg;
  final Function onTapYes;
  final Function onTapNo;

  const NoYes({
    Key key,
    this.caminhoImg,
    this.onTapYes,
    this.onTapNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF0EBCA3)),
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * .83,
      height: 320,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipOval(
              child: Material(
                color: Colors.white,
                child: InkWell(
                  splashColor: Color(0xFF86CFC4),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 130,
                      height: 130,
                      child: Image.asset(caminhoImg),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Botao(caminhoImg: ("assets/yes.png"), onTap: onTapYes),
                Botao(caminhoImg: ("assets/no.png"), onTap: onTapNo),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Botao extends StatelessWidget {
  final String caminhoImg;
  final Function onTap;

  const Botao({
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
        splashColor: Color(0xFF0EBCA3), // inkwell color
        child: Container(
          width: 95,
          height: 95,
          child: Image.asset(caminhoImg),
        ),
        onTap: onTap,
      ),
    ));
  }
}
