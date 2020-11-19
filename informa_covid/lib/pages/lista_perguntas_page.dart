import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/dialog_mascara_widget.dart';
import 'package:informa_covid/widgets/lista_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class ListaPerguntas extends StatefulWidget {

  ListaPerguntas({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _ListaPerguntasState createState() => _ListaPerguntasState();
}

class _ListaPerguntasState extends State<ListaPerguntas> {
  String sintomas = "A presença de um ou mais destes sintomas pode indicar que você tem alguma doença respiratória que pode ser transmitida para outras pessoas, como a covid-19.";
  final List<CheckBoxPerguntas> itens = [
    CheckBoxPerguntas(texto: "Alteração no paladar"),
    CheckBoxPerguntas(texto: "Febre"),
    CheckBoxPerguntas(texto: "Falta de ar"),
    CheckBoxPerguntas(texto: "Dor de cabeça"),
    CheckBoxPerguntas(texto: "Dor de garganta"),
    CheckBoxPerguntas(texto: "Diarréia"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Titulo(label: 'Informe os sintomas',),
          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.builder(
              itemCount: itens.length,
              itemBuilder: (_, int index) {
                return CheckboxPerguntasWidget(item: itens[index],);
              }
            )
          )),
          Container(
            padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: Column(
              children: [
                CustonButton(
                  label: 'Nenhum sintoma',
                  onTap: (){
                    widget.pessoa.sintomas = new List<String>();
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => PossuiComorbidadePage(pessoa:widget.pessoa))
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustonButton(
                  label: 'Continuar',
                  onTap: (){
                    _dialogSintomas(sintomas);
                  },
                )
              ],
            )
          ),
          Rodape(),
        ],
      ),
    );
  }

  void _dialogSintomas(String msg) {
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
                widget.pessoa.sintomas = _doencasCheckadas();
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

  List<String> _doencasCheckadas() {
    List<String> listChecked = new List<String>();
    List<CheckBoxPerguntas> itensMarcados = List.from(itens.where((item) => item.checked));
    itensMarcados.forEach((element) {
      listChecked.add(element.texto);
    });
    return listChecked;
  }
}
