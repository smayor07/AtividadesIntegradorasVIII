import 'package:flutter/material.dart';
import 'package:informa_covid/pages/informe_idade_matricula_page.dart';
import 'package:informa_covid/widgets/NoYes_widget.dart';
import 'package:informa_covid/widgets/dialog_mascara_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class UtilizaMascaraPage extends StatefulWidget {
  @override
  _UtilizaMascaraPageState createState() => _UtilizaMascaraPageState();
}

class _UtilizaMascaraPageState extends State<UtilizaMascaraPage> {
  String usaMascara = 'O uso da máscara é de extrema importância para garantir sua proteção e a proteção ao próximo.';
  String naoUsaMascara = 'O uso da máscara ajuda a diminuir o risco de contágio para você e todos ao seu redor.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Titulo(
                  label: "Você utiliza máscara no seu dia a dia?",
                ),
                NoYes(
                  caminhoImg: "assets/tchau.png",
                  onTapYes: () {
                    _utilizaMascara(usaMascara);
                  },
                  onTapNo: () {
                    _naoUtilizaMascara(naoUsaMascara);
                  },
                ),
              ],
            ),
          )),
          Rodape()
        ],
      ),
    );
  }

  void _utilizaMascara(String msg) {
    AlertDialogUsaMascara dialogUsaMascara = AlertDialogUsaMascara(mensagem: msg);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'PARABÉNS!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
            ),
          ),
          content: dialogUsaMascara,
          actions: [
            FlatButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => InformeIdadeMatricula())
                );
              }, 
              child: Text('Continuar')
            )
          ],
        );
      }
    );
  }

  void _naoUtilizaMascara(String msg) {
    AlertDialogUsaMascara dialogUsaMascara = AlertDialogUsaMascara(mensagem: msg);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'ATENÇÃO!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
            ),
          ),
          content: dialogUsaMascara,
          actions: [
            FlatButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => InformeIdadeMatricula())
                );
              }, 
              child: Text('Entendido?')
            )
          ],
        );
      }
    );
  }
}
