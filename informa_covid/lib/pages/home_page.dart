import 'package:flutter/material.dart';
import 'package:informa_covid/pages/escolha_sexo_page.dart';

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
            MaterialPageRoute(builder: (context) => EscolhaSexoPage()),
          );
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
