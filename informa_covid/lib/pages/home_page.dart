import 'package:flutter/material.dart';
import 'package:informa_covid/pages/escolha_sexo_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:informa_covid/widgets/button_widget.dart';
import 'package:informa_covid/widgets/titulo_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text("Bem Vindo ao"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/logo-covid.svg",
                width: MediaQuery.of(context).size.width,
              ),
              Titulo(
                  label:
                      "Para sua melhor segurança e para a segurança de todos, responda o questionário de forma ética e responsável."),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: Color(0xFF0EBCA3).withOpacity(0.5),
                    value: checkbox,
                    onChanged: (value) {
                      setState(() {
                        if (checkbox)
                          checkbox = false;
                        else
                          checkbox = true;
                      });
                    },
                  ),
                  Text(
                    "Concordo",
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              CustonButton(
                label: "Continuar",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EscolhaSexoPage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
