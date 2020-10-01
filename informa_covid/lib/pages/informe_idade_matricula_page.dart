import 'package:flutter/material.dart';
import 'package:informa_covid/pages/utilizaMascara_page.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';

class InformeIdadeMatricula extends StatefulWidget {
  @override
  _InformeIdadeMatriculaState createState() => _InformeIdadeMatriculaState();
}

var _informeMatriculaController = TextEditingController();
int idade = 0;

class _InformeIdadeMatriculaState extends State<InformeIdadeMatricula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Center(
                    child: Container(
                  child: Text(
                    'Informe sua idade',
                    style: TextStyle(fontSize: 35),
                  ),
                )),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Idade: ${idade} anos',
                          style: TextStyle(fontSize: 25),
                        ),
                        ButtonTheme(
                          minWidth: 25.0,
                          height: 40.0,
                          buttonColor: Colors.grey,
                          child: RaisedButton(
                              child: Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                calculaIdade(context);
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
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
                      )),
                )
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: CustonButton(
            label: 'Continuar',
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => UtilizaMascaraPage())
              );
            },
          ),
          ),
          Rodape()
        ],
      ),
    );
  }

  Future<Null> calculaIdade(BuildContext context) async {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1970),
            lastDate: DateTime(2222))
        .then((date) {
      setState(() {
        idade = 0;
        DateTime nascimento = date;
        DateTime dataAtual = DateTime.now();
        int days = dataAtual.difference(nascimento).inDays;
        int aux = 0;
        for (var i = 0; i < days; i++) {
          if (aux == 365) {
            aux = 0;
            idade++;
          }
          aux++;
        }
      });
    });
  }
}
