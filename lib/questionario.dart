import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final void Function(int) funcao;
  final int perguntaSelecionada;

  Questionario({
    required this.perguntas,
    required this.funcao,
    required this.perguntaSelecionada,
  });

  bool get aindaTemPerguntaParaResponder {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    String questao =
        perguntas.elementAt(perguntaSelecionada)["texto"].toString();

    List<Map<String, Object>> respostas = aindaTemPerguntaParaResponder
        ? perguntas.elementAt(perguntaSelecionada).cast()["respostas"]
        : []; //Se não tiver mais perguntas respostas é vazio assim evitamos erro

    List<Widget> widgets = respostas
        .map((e) =>
            Resposta(e.cast()["texto"], () => funcao(e.cast()["pontuacao"])))
        .toList();

    return Column(
      children: [Questao(questao), ...widgets],
    );
  }
}
