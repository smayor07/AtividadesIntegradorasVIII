import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/utilizaMascara_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class InformeIdadeMatricula extends StatefulWidget {
  InformeIdadeMatricula({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _InformeIdadeMatriculaState createState() => _InformeIdadeMatriculaState();
}


class _InformeIdadeMatriculaState extends State<InformeIdadeMatricula> {
  var _informeMatriculaController = TextEditingController();
  var _informeIdadeController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Informa Covid"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Titulo(
                  label: "Informe",
                ),
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: 40,left: 20, right: 20),
                      child: TextFormField(
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'Insira uma idade válida!';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (input) =>
                            _informeIdadeController.text = input,
                            controller: _informeIdadeController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                            labelText: 'Idade em anos*',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            )),
                      )),
                ),
                Center(
                  child: returnMatriculaGambi()
                )
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: CustonButton(
                    label: 'Continuar',
                    onTap: (){
                      widget.pessoa.idade = int.parse(this._informeIdadeController.text);
                      widget.pessoa.matricula = this._informeMatriculaController.text;
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => UtilizaMascaraPage(pessoa:widget.pessoa))
                      );
                    },
                  ),
          ),
          Rodape()
        ],
      ),
    );
  }

  Widget returnMatriculaGambi() {
    if (widget.pessoa.tipoPessoa == "Colaborador") {
      return Container();
    } else {
      return Container(
              padding: EdgeInsets.only(top: 40,left: 20, right: 20),
              child: TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Insira uma matrícula válida!';
                  } else {
                    return null;
                  }
                },
                onSaved: (input) =>
                    _informeMatriculaController.text = input,
                    controller: _informeMatriculaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    labelText: 'Matrícula*',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    )),
              ));
    }
  }

  // Future<Null> calculaIdade(BuildContext context) async {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(1970),
  //           lastDate: DateTime(2222))
  //       .then((date) {
  //     setState(() {
  //       idade = 0;
  //       DateTime nascimento = date;
  //       DateTime dataAtual = DateTime.now();
  //       int days = dataAtual.difference(nascimento).inDays;
  //       int aux = 0;
  //       for (var i = 0; i < days; i++) {
  //         if (aux == 365) {
  //           aux = 0;
  //           idade++;
  //         }
  //         aux++;
  //       }
  //     });
  //   });
  // }
}
