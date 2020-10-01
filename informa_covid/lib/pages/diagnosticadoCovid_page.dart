import 'package:flutter/material.dart';
import 'package:informa_covid/main.dart';
import 'package:informa_covid/pages/contatoCovid_page.dart';
import 'package:informa_covid/pages/lista_perguntas_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class DiagnosticadoCovidPage extends StatefulWidget {
  @override
  _DiagnosticadoCovidPageState createState() => _DiagnosticadoCovidPageState();
}

class _DiagnosticadoCovidPageState extends State<DiagnosticadoCovidPage> {
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
                  label: "Você já foi diagnosticado com Covid-19?",
                ),
                NoYes(
                  caminhoImg: "assets/tosse.png",
                  onTapYes: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListaPerguntas()),
                    );
                  },
                  onTapNo: () {
                    alertdialogDiagnostico(context);
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

  alertdialogDiagnostico(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("Entendido"),
      color: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContatoCovidPage()),
        );
      },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(
          "É sempre importante seguir as recomendações dos profissionais da saúde e respeitar a quarentena!"),
      actions: [
        okButton,
      ],
    );

    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}
