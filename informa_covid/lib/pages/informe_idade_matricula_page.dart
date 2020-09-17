import 'package:flutter/material.dart';

class InformeIdadeMatricula extends StatefulWidget {
  @override
  _InformeIdadeMatriculaState createState() => _InformeIdadeMatriculaState();
}

var _informeIdadeController = TextEditingController();
var _informeMatriculaController = TextEditingController();
DateTime _dateTime;

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
                    'Informe sua idade:',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 25.0,
                    height: 40.0,
                    buttonColor: Color(0xFF005500),
                    child: RaisedButton(
                      child: Icon(
                        Icons.date_range,
                        color: Colors.white,
                      ),
                      onPressed: null
                    ),
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}