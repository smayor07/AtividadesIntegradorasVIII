import 'package:flutter/material.dart';

class AlertDialogUsaMascara extends StatefulWidget {
  AlertDialogUsaMascara({Key key, this.mensagem}) : super (key:key);
  @override
  String mensagem;
  _AlertDialogUsaMascaraState createState() => _AlertDialogUsaMascaraState();
}

class _AlertDialogUsaMascaraState extends State<AlertDialogUsaMascara> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            child: Text(
              widget.mensagem
            ),
          )
        ],
      ),
    );
  }
}