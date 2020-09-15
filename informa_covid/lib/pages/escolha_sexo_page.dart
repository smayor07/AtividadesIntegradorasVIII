import 'package:flutter/material.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
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
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50.0),
                RoundButton(
                  caminhoImg: "assets/fem.png",
                  onTap: () {
                    print("Feminino");
                  },
                ),
                SizedBox(height: 50.0),
                RoundButton(
                  caminhoImg: "assets/masc.png",
                  onTap: () {
                    print("Masculino");
                  },
                ),
              ],
            )),
          ),
          Rodape()
        ],
      ),
    );
  }
}
