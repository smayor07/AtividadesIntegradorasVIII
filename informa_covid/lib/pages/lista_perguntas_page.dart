import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/lista_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class ListaPerguntas extends StatelessWidget {

  ListaPerguntas({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

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
            child: CustonButton(
              label: 'Continuar',
              onTap: (){
                pessoa.sintomas = new List<String>();
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => PossuiComorbidadePage(pessoa:this.pessoa))
                );
              },
            )
          ),
          Rodape(),
        ],
      ),
    );
  }
}
