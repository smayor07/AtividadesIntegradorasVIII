import 'package:flutter/material.dart';
import 'package:informa_covid/pages/utilizaMascara_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class PossuiComorbidadePage extends StatefulWidget {
  @override
  _PossuiComorbidadePageState createState() => _PossuiComorbidadePageState();
}

class _PossuiComorbidadePageState extends State<PossuiComorbidadePage> {
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
                  label: "Você possui alguma comorbidade?",
                ),
                NoYes(
                  caminhoImg: "assets/saude.png",
                  onTapYes: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UtilizaMascaraPage()),
                    );
                  },
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
