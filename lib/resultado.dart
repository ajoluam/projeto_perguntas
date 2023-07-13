import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() deveReiniciarQuestionario;

  Resultado({required this.pontuacao, required this.deveReiniciarQuestionario});

  String get fraseResultado {
    if (pontuacao < 8)
      return "Parabéns!";
    else if (pontuacao < 12)
      return "Você é bom!";
    else if (pontuacao < 16)
      return "Impressionante!";
    else
      return "Nível Jedi";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          //Caso não haja mais perguntas exibiremos uma tela parabenizando
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: deveReiniciarQuestionario,
            child: const Text(
              "Reiniciar????",
              style: TextStyle(fontSize: 14),
            ))
      ],
    );
  }
}
