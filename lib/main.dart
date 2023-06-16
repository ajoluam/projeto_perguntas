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

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual é a sua cor favorita?",
        "respostas": ["Preto", "Vermelho", "Verde", "Branco"]
      },
      {
        "texto": "Qual é o seu animal favorito?",
        "respostas": ["Coelho", "Cobra", "Elefante", "Leão"]
      },
      {
        "texto": "Qual é o seu instrutor favorito?",
        "respostas": ["Maria", "João", "Leo", "Pedro"]
      }
    ];

    String question =
        perguntas.elementAt(_perguntaSelecionada)["texto"].toString();

    List<String> respostas =
        perguntas.elementAt(_perguntaSelecionada).cast()["respostas"];
    List<Widget> widgets =
        respostas.map((e) => Resposta(e, _adicionaMaisUm)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas e Respostas"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [Questao(question), ...widgets],
        ),
      ),
    );
  }
}
