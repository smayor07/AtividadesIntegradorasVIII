import 'package:flutter/material.dart';

class CheckBoxPerguntas {
  CheckBoxPerguntas({this.texto, this.checked = false});

  String texto;
  bool checked;
}

class CheckboxPerguntasWidget extends StatefulWidget {
  const CheckboxPerguntasWidget({Key key, this.item}) : super(key: key);

  final CheckBoxPerguntas item;

  @override
  _CheckboxWidgetPerguntasState createState() =>
      _CheckboxWidgetPerguntasState();
}

class _CheckboxWidgetPerguntasState extends State<CheckboxPerguntasWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      onChanged: (bool value) {
        setState(() {
          widget.item.checked = value;
        });
      },
    );
  }
}
