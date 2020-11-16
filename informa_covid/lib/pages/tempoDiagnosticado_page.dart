import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/agradecimento_page.dart';
import 'package:informa_covid/pages/lista_perguntas_page.dart';
import 'package:informa_covid/pages/pussuiComorbidade_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/dialog_mascara_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class TempoDiagnosticadoCovid extends StatefulWidget {
  @override
  TempoDiagnosticadoCovid({Key key, this.pessoa}) : super(key: key);
  final Pessoa pessoa;
  _TempoDiagnosticadoCovidState createState() => _TempoDiagnosticadoCovidState();
}

class _TempoDiagnosticadoCovidState extends State<TempoDiagnosticadoCovid> {
  String diagnosticadoMenosSeteDias = "Recomenda-se  que  você  fique  em  casa  por  14  dias  após  o  diagnóstico  da doença. Fique o tempo todo de máscara, mesmo dentro de casa, limpe as superfícies e lave as mão frequentemente e mantenha uma distância de 1,5 metro de outras pessoas  sempre  que  possível.";
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
                  label: "Informe o tempo",
                ),
                CustonButton(
                  label: "A menos de 14 dias",
                  onTap: () {
                    widget.pessoa.tempoContato = "Menos de 14 dias";
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => AgradecimentoPage(pessoa:widget.pessoa))
                    );
                  },
                ),
                CustonButton(
                  label: "A mais de 14 dias",
                  onTap: () {
                    widget.pessoa.tempoContato = "Mais de 14 dias";
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaPerguntas(pessoa:widget.pessoa)),
                  );
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

  // void _diagnosticadoMenosSeteDias(String msg) {
  //   AlertDialogUsaMascara dialogDiagCovid = AlertDialogUsaMascara(mensagem: msg);
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text(
  //           'ATENÇÃO!',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             fontSize: 20.0,
  //             color: Colors.black
  //           ),
  //         ),
  //         content: dialogDiagCovid,
  //         actions: [
  //           FlatButton(
  //             onPressed: (){
  //               widget.pessoa.tempoContato = "Menos de 7 dias";
  //               Navigator.push(
  //                 context, 
  //                 MaterialPageRoute(builder: (context) => ListaPerguntas(pessoa:widget.pessoa))
  //               );
  //             }, 
  //             child: Text('Entendido?')
  //           )
  //         ],
  //       );
  //     }
  //   );
  // }
}