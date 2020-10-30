import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/escolha_sexo_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class VinculoUniversitarioPage extends StatefulWidget {
  VinculoUniversitarioPage({Key key}) : super(key: key);
  @override
  _VinculoUniversitarioPageState createState() =>
      _VinculoUniversitarioPageState();
}

class _VinculoUniversitarioPageState extends State<VinculoUniversitarioPage> {
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
                  label: "Qual seu vinculo com a Universidade?",
                ),
                CustonButton(
                  label: "Professor",
                  onTap: () {
                    Pessoa pessoa = new Pessoa("Professor");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EscolhaSexoPage(pessoa: pessoa)),
                    );
                  },
                ),
                CustonButton(
                  label: "Aluno",
                  onTap: () {
                    Pessoa pessoa = new Pessoa("Aluno");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EscolhaSexoPage(pessoa: pessoa)),
                    );
                  },
                ),
                CustonButton(
                  label: "Colaborador",
                  onTap: () {
                    Pessoa pessoa = new Pessoa("Colaborador");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EscolhaSexoPage(pessoa: pessoa)),
                    );
                  },
                )
              ],
            ),
          )),
          Rodape()
        ],
      ),
    );
  }
}
