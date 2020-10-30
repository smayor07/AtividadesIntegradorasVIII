import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/lista_perguntas_page.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/dialog_mascara_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class ContatoCovidPage extends StatefulWidget {

  ContatoCovidPage({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _ContatoCovidPageState createState() => _ContatoCovidPageState();
}

class _ContatoCovidPageState extends State<ContatoCovidPage> {
  String naoContato = "Para sua segurança e a de todos, entre em contato com profissionais de saúde e siga as orientações!";
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
                  label:
                      "Você já teve contato com alguém diagnosticado com Covid-19?",
                ),
                NoYes(
                  caminhoImg: "assets/contato.png",
                  onTapYes: () {
                    widget.pessoa.contato = true;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaPerguntas(pessoa:widget.pessoa)),
                    );
                  },
                  onTapNo: () {
                    _naoContatoCovid(naoContato);
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

  void _naoContatoCovid(String msg) {
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
                widget.pessoa.contato = false;
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => PossuiComorbidadePage(pessoa:widget.pessoa))
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
  //     color: Colors.green,
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => PossuiComorbidadePage()),
  //       );
  //     },
  //   );

  //   // configura o  AlertDialog
  //   AlertDialog alerta = AlertDialog(
  //     title: Text(
  //         "Para sua segurança e a de todos, entre em contato com profissionais de saúde e siga as orientações!"),
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
