import 'package:flutter/material.dart';
import 'package:informa_covid/classes/aluno.dart';
import 'package:informa_covid/pages/agradecimento_page.dart';
import 'package:informa_covid/pages/utilizaMascara_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/dialog_writer_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class PossuiComorbidadePage extends StatefulWidget {

  PossuiComorbidadePage({Key key, this.aluno}) : super(key: key);

  final Aluno aluno;

  @override
  _PossuiComorbidadePageState createState() => _PossuiComorbidadePageState();
}

class _PossuiComorbidadePageState extends State<PossuiComorbidadePage> {
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
                  label: "Você possui alguma comorbidade?",
                ),
                NoYes(
                  caminhoImg: "assets/saude.png",
                  onTapYes: () {
                    _comorbidade();
                  },
                  onTapNo: () {
                    widget.aluno.comorbidades = new List<String>();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AgradecimentoPage(aluno:widget.aluno)),
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

  void _comorbidade() {
    DialogWriterWidget dialogDoenca = DialogWriterWidget();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Informe sua doença:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
            ),
          ),
          content: dialogDoenca,
          actions: [
            FlatButton(
              onPressed: (){
                widget.aluno.comorbidades.add(dialogDoenca.toString());
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => AgradecimentoPage(aluno:widget.aluno))
                );
              }, 
              child: Text('OK')
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => PossuiComorbidadePage())
                );
              }, 
              child: Text('Cancelar')
            )
          ],
        );
      }
    );
  }
}