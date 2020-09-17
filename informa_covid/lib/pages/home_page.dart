import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:informa_covid/pages/diagnosticado_covid_page.dart';
//import 'package:informa_covid/pages/escolha_sexo_page.dart';
=======
import 'package:informa_covid/pages/agradecimento_page.dart';
import 'package:informa_covid/pages/escolha_sexo_page.dart';
import 'package:informa_covid/pages/informe_idade_matricula_page.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
>>>>>>> master

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem Vindo ao"),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
<<<<<<< HEAD
            MaterialPageRoute(builder: (context) => DiagnosticadoCovidPage()),
=======
            MaterialPageRoute(builder: (context) => PossuiComorbidadePage()),
>>>>>>> master
          );
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
