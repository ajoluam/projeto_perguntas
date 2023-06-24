import 'package:flutter/material.dart';
import 'package:projeto_perguntas/constants/constants.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(_PerguntasApp());
}

class _PerguntasApp extends StatefulWidget {
  @override
  State<_PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<_PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  void _adicionaMaisUm(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  bool get aindaTemPerguntaParaResponder {
    return _perguntaSelecionada < Constants.PERGUNTAS.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas e Respostas"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: aindaTemPerguntaParaResponder
            ? Questionario(
                perguntas: Constants.PERGUNTAS,
                funcao: _adicionaMaisUm,
                perguntaSelecionada: _perguntaSelecionada,
              )
            : Resultado(pontuacao: _pontuacaoTotal),
      ),
    );
  }
}
