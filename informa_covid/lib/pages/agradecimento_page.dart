import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/repository/data_pessoa.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';

class AgradecimentoPage extends StatefulWidget {
  AgradecimentoPage({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _AgradecimentoPageState createState() => _AgradecimentoPageState();
}

class _AgradecimentoPageState extends State<AgradecimentoPage> {
  PessoaRepository pessoaRepository = new PessoaRepository();
  String alertaDiagnosticado = "Recomendamos que você fique em casa por 14 dias após seu diagnóstico, pois nesse período você pode transmitir a doença para outras pessoas. Sempre faça a utilização de máscaras, mesmo após se recuperar. Limpe as superfícies e lave as mãos frequentemente e mantenha o distanciamento social sempre que possível.";
  String alertaDiagnosticadoContato = "Você pode estar infectado pelo novo coronavírus, mesmo que não tenha nenhum sintoma. É muito importante que você utilize máscaras sempre e mantenha o distanciamento social para sua proteção e para proteção de outras pessoas. Se você apresentar algum sintoma, procure atendimento médico o mais breve possível.";
  String agradecimento = "Agradecemos sua colaboração e desejamos boas aulas!!!";
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                color: Colors.transparent,
                child: Text(
                  _retornaMensagem(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustonButton(
                  label: "     Fim     ",
                  onTap: () {
                    pessoaRepository.addPessoa(widget.pessoa);
                    Timer(
                        Duration(seconds: 1),
                        () => exit(0));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SplashScreen())
                    // );
                  },
                ),
              ],
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Rodape()
        ],
      ),
    );
  }

  String _retornaMensagem(){
    if (widget.pessoa.tempoContato == "Menos de 14 dias") {
      msg = alertaDiagnosticado;
    } else if (widget.pessoa.contato != null && widget.pessoa.contato == true) {
      msg = alertaDiagnosticadoContato;
    } else {
      msg = agradecimento;
    }
    return msg;
  }
}
