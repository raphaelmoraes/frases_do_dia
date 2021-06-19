import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Aula',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  var _frases = [
    "Não são os grandes planos que dão certo. São os pequenos detalhes",
    "Grandes realizações não são feitas por impulso, mas por uma soma de pequenas realizações",
    "Com talento ganhamos partidas; com trabalho em equipe e inteligência ganhamos campeonatos",
    "Uma vez que você tenha aceitado suas falhas, ninguém poderá usá-las contra você",
    "A lógica pode levar de um ponto A a um ponto B. A imaginação pode levar a qualquer lugar",
    "Quando tudo parece estar indo contra você, lembre-se que o avião decola contra o vento, não a favor dele",
    "O sucesso não consiste em não errar, mas não cometer os mesmos equívocos mais de uma vez",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            //decoration: BoxDecoration(
            //    border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(_fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
                ElevatedButton(
                  onPressed: _gerarFrase,
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
