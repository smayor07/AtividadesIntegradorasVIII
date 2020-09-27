import 'package:flutter/material.dart';
import 'package:informa_covid/pages/diagnosticadoCovid_page.dart';
import 'package:informa_covid/pages/informe_idade_matricula_page.dart';
import 'package:informa_covid/pages/splash_screen.dart';
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
                  onTapYes: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DiagnosticadoCovidPage()),
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