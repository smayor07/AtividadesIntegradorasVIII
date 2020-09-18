import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';

class DiagnosticadoCovidPage extends StatefulWidget {
  @override
  _DiagnosticadoCovidPage createState() => _DiagnosticadoCovidPage();
}

class _DiagnosticadoCovidPage extends State<DiagnosticadoCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informa Covid diag'),
        centerTitle: true,
      ),
      body: Center(
        child: NoYes(
          caminhoImg: "assets/saude.png",
        ),
      ),
    );
  }
}
