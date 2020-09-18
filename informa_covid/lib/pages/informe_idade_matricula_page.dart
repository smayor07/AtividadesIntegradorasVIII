import 'package:flutter/material.dart';

class InformeIdadeMatricula extends StatefulWidget {
  @override
  _InformeIdadeMatriculaState createState() => _InformeIdadeMatriculaState();
}

var _informeIdadeController = TextEditingController();
var _informeMatriculaController = TextEditingController();
int idade;

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
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              child: Text(
                'Informe sua idade',
                style: TextStyle(
                  fontSize: 40
                ),
              ),
            )
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Idade:${idade} anos',
                    style: TextStyle(
                      fontSize: 25
                    ),
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
                      }
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<Null> calculaIdade(BuildContext context) async {
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2001), 
      lastDate: DateTime(2222)
    ).then((date) {
      setState(() {
        DateTime nascimento = date;
        DateTime dataAtual = DateTime.now();
        int days = dataAtual.difference(nascimento).inDays;
        int aux;
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