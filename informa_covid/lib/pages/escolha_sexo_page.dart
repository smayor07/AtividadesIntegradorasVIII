import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/round_button_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class EscolhaSexoPage extends StatefulWidget {
  @override
  _EscolhaSexoPageState createState() => _EscolhaSexoPageState();
}

class _EscolhaSexoPageState extends State<EscolhaSexoPage> {
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
                  label: "Informe se sexo",
                ),
                RoundButton(
                  caminhoImg: "assets/fem.png",
                  onTap: () {
                    print("Feminino");
                  },
                ),
                RoundButton(
                  caminhoImg: "assets/masc.png",
                  onTap: () {
                    print("Masculino");
                  },
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
