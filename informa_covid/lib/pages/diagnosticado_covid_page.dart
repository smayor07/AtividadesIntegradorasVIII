import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiagnosticadoCovidPage extends StatefulWidget {
  @override
  _DiagnosticadoCovidPage createState() => _DiagnosticadoCovidPage();
}

class _DiagnosticadoCovidPage extends State<DiagnosticadoCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informa Covid'),
        centerTitle: true,
      ),
      body: Center(
          //child: NoYes(
          //caminhoImg: "assets/saude.png",
          ),
      //),
    );
  }
}
