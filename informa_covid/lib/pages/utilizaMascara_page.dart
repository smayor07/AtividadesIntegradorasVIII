import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class UtilizaMascaraPage extends StatefulWidget {
  @override
  _UtilizaMascaraPageState createState() => _UtilizaMascaraPageState();
}

class _UtilizaMascaraPageState extends State<UtilizaMascaraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Titulo(
                  label: "Você utiliza máscara no seu dia a dia?",
                ),
                NoYes(
                  caminhoImg: "assets/tchau.png",
                  onTapYes: () {},
                  onTapNo: () {},
                ),
              ],
            ),
          )),
          Rodape()
        ],
      ),
    );
  }
}
