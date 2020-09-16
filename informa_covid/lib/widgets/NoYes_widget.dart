import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/round_button_widget.dart';

class NoYes extends StatelessWidget {
  final String caminhoImg;

  const NoYes({
    Key key,
    this.caminhoImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * .83,
      height: 320,
      child: Column(
        children: <Widget>[
          ClipOval(
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
          Row(
            children: <Widget>[
              RoundButton(
                caminhoImg: ("assets/yes.png"),
                onTap: () {
                  print("Sim");
                },
              ),
              RoundButton(
                caminhoImg: ("assets/no.png"),
                onTap: () {
                  print("Não");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
