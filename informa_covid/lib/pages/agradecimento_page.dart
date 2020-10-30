import 'package:flutter/material.dart';
import 'package:informa_covid/classes/Pessoa.dart';
import 'package:informa_covid/pages/splash_screen.dart';
import 'package:informa_covid/repository/data_pessoa.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/logo_covid_widget.dart';
import 'package:informa_covid/widgets/rodape_widget.dart';

class AgradecimentoPage extends StatefulWidget {
  AgradecimentoPage({Key key, this.pessoa}) : super(key: key);

  final Pessoa pessoa;

  @override
  _AgradecimentoPageState createState() => _AgradecimentoPageState();
}

class _AgradecimentoPageState extends State<AgradecimentoPage> {
  PessoaRepository pessoaRepository = new PessoaRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoCovid(),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Expanded(
            child: Center(
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
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
                child: Row(
              children: [
                Container(
                  width: 260,
                  height: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/tchau.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CustonButton(
                  label: " Fim ",
                  onTap: () {
                    pessoaRepository.addPessoa(widget.pessoa);
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => SplashScreen())
                    );
                  },
                )
              ],
            )),
          ),
          Rodape()
        ],
      ),
    );
  }
}
