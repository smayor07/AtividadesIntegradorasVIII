import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/informe_idade_matricula_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class EscolhaSexoPage extends StatefulWidget {
  @override
  EscolhaSexoPage({Key key, this.pessoa}) : super(key: key);
  final Pessoa pessoa;
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
                  label: "Informe seu sexo",
                ),
                CustonButton(
                  label: "Feminino",
                  onTap: () {
                    widget.pessoa.sexo = "Feminino";
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformeIdadeMatricula(pessoa:widget.pessoa)),
                  );
                  },
                ),
                CustonButton(
                  label: "Masculino",
                  onTap: () {
                    widget.pessoa.sexo = "Masculino";
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformeIdadeMatricula(pessoa:widget.pessoa)),
                  );
                  },
                ),
                CustonButton(
                  label: "Não Informar",
                  onTap: () {
                    widget.pessoa.sexo = "Não Informado";
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformeIdadeMatricula(pessoa:widget.pessoa)),
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
