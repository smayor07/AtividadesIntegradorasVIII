import 'package:flutter/material.dart';

class AgradecimentoPage extends StatelessWidget {
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
              width: 240,
              height: 150,
              color: Colors.transparent,
              child: Text(
                'Agradecemos '
                'sua colaboração '
                'e desejamos '
                'boas aulas!!! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 260,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tchau.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF7dcadb),
                image: DecorationImage(
                  image: AssetImage('assets/white-logo-unifenas.png'),
                  fit: BoxFit.contain,
                )),
          )
        ],
      ),
    );
  }
}
