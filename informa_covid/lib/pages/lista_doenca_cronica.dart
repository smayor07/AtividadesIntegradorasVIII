import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/agradecimento_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/lista_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class ListaDoencaCronica extends StatefulWidget {
  @override
  ListaDoencaCronica({Key key, this.pessoa}) : super(key: key);
  final Pessoa pessoa;
  
  _ListaDoencaCronicaState createState() => _ListaDoencaCronicaState();
}

class _ListaDoencaCronicaState extends State<ListaDoencaCronica> {

  final List<CheckBoxPerguntas> itens = [
    CheckBoxPerguntas(texto: "Diabetes"),
    CheckBoxPerguntas(texto: "Pressão Alta"),
    CheckBoxPerguntas(texto: "HIV"),
    CheckBoxPerguntas(texto: "Câncer"),
    CheckBoxPerguntas(texto: "Bronquite")
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
          Titulo(label: 'Informe as doenças',),
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
                widget.pessoa.sintomas = new List<String>();
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => AgradecimentoPage(pessoa:widget.pessoa))
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