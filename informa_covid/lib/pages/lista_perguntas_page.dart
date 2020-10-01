import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/lista_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';

class ListaPerguntas extends StatelessWidget {
  final List<CheckBoxPerguntas> itens = [
    CheckBoxPerguntas(texto: "Alteração no paladar"),
    CheckBoxPerguntas(texto: "Alteração no olfato"),
    CheckBoxPerguntas(texto: "Febre"),
    CheckBoxPerguntas(texto: "Falta de ar"),
    CheckBoxPerguntas(texto: "Dor de garganta"),
    CheckBoxPerguntas(texto: "Diarreia"),
    CheckBoxPerguntas(texto: "Dor de cabeça"),
    CheckBoxPerguntas(texto: "Outros"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (_, int index) {
          return CheckboxPerguntasWidget(item: itens[index]);
        },
      ),
    );
  }
}
