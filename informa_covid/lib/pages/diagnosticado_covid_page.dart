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
        title: Text("Informa Covid Tela diag"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 240,
              height: 150,
              color: Colors.transparent,
              child: Text(
                'Você já foi '
                'diagnosticado com '
                'covid-19? ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
