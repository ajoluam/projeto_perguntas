import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() {
  runApp(_PerguntasApp());
}

class _PerguntasApp extends StatefulWidget {
  @override
  State<_PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<_PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _adicionaMaisUm() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  void _diminuiUm() {
    setState(() {
      _perguntaSelecionada--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];

    String question = perguntas[_perguntaSelecionada];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas e Respostas"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Questao(question),
            const SizedBox(height: 10),
            Resposta("Resposta1", _adicionaMaisUm),
            //adiciona espaço entre um botão e outro
            const SizedBox(height: 10),
            //adiciona espaço entre um botão e outro
            Resposta("Resposta2", _diminuiUm),
            const SizedBox(height: 10),
            //adiciona espaço entre um botão e outro
            Resposta("Resposta3", _adicionaMaisUm),
          ],
        ),
      ),
    );
  }
}
