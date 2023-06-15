import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

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
            const SizedBox(height: 10), //adiciona espaço entre um botão e outro
            ElevatedButton(
              child: const Text("Resposta1"),
              onPressed: _adicionaMaisUm,
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10), //adiciona espaço entre um botão e outro
            ElevatedButton(
              child: const Text("Resposta2"),
              onPressed: _diminuiUm,
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10), //adiciona espaço entre um botão e outro
            ElevatedButton(
              child: const Text("Resposta3"),
              onPressed: () {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
