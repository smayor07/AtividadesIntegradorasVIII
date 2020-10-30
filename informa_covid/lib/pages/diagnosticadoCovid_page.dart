import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/contatoCovid_page.dart';
import 'package:informa_covid/pages/lista_perguntas_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/dialog_mascara_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class DiagnosticadoCovidPage extends StatefulWidget {

  DiagnosticadoCovidPage({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _DiagnosticadoCovidPageState createState() => _DiagnosticadoCovidPageState();
}

class _DiagnosticadoCovidPageState extends State<DiagnosticadoCovidPage> {
  String naoDiagnosticadoCovid = "É sempre importante seguir as recomendações dos profissionais da saúde e respeitar a quarentena!";
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
                    widget.pessoa.diagnosticado = true;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListaPerguntas(pessoa:widget.pessoa)),
                    );
                  },
                  onTapNo: () {
                    _naoDiagnosticadoCovid(naoDiagnosticadoCovid);
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

  void _naoDiagnosticadoCovid(String msg) {
    AlertDialogUsaMascara dialogDiagCovid = AlertDialogUsaMascara(mensagem: msg);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'ATENÇÃO!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
            ),
          ),
          content: dialogDiagCovid,
          actions: [
            FlatButton(
              onPressed: (){
                widget.pessoa.diagnosticado = false;
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ContatoCovidPage(pessoa:widget.pessoa))
                );
              }, 
              child: Text('Entendido?')
            )
          ],
        );
      }
    );
  }

  // alertdialogDiagnostico(BuildContext context) {
  //   Widget okButton = FlatButton(
  //     child: Text("Entendido"),
  //     color: Colors.white,
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => ContatoCovidPage()),
  //       );
  //     },
  //   );

  //   // configura o  AlertDialog
  //   AlertDialog alerta = AlertDialog(
  //     title: Text(
  //         "É sempre importante seguir as recomendações dos profissionais da saúde e respeitar a quarentena!"),
  //     actions: [
  //       okButton,
  //     ],
  //   );

  //   // exibe o dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alerta;
  //     },
  //   );
  // }
}
