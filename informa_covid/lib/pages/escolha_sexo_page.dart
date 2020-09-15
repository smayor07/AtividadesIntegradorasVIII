import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/round_button_widget.dart';

class EscolhaSexoPage extends StatefulWidget {
  @override
  _EscolhaSexoPageState createState() => _EscolhaSexoPageState();
}

class _EscolhaSexoPageState extends State<EscolhaSexoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informa Covid"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundButton(
            caminhoImg: "assets/fem.png",
          ),
          RoundButton(
            caminhoImg: "assets/masc.png",
          ),
        ],
      ),
    );
  }
}
