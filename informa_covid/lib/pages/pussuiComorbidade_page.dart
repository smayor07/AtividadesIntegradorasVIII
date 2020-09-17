import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';

class PossuiComorbidadePage extends StatefulWidget {
  @override
  _PossuiComorbidadePageState createState() => _PossuiComorbidadePageState();
}

class _PossuiComorbidadePageState extends State<PossuiComorbidadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informa Covid'),
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
