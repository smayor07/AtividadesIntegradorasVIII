import 'package:flutter/material.dart';
import 'package:informa_covid/classes/aluno.dart';
import 'package:informa_covid/pages/informe_idade_matricula_page.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
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
                    Aluno aluno = new Aluno("Feminino");
                    print("Feminino");
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformeIdadeMatricula(aluno:aluno)),
                  );
                  },
                ),
                RoundButton(
                  caminhoImg: "assets/masc.png",
                  onTap: () {
                    Aluno aluno = new Aluno("Masculino");
                    print("Masculino");
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformeIdadeMatricula(aluno:aluno)),
                  );
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
