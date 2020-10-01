import 'package:flutter/material.dart';

class DialogWriterWidget extends StatefulWidget {
  @override
  _DialogWriterWidgetState createState() => _DialogWriterWidgetState();
}

class _DialogWriterWidgetState extends State<DialogWriterWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite aqui",
              ),
              onChanged: (text) => text,
            ),
          ),
        ],
      ),
    );
  }
}