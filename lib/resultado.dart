import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      //Caso não haja mais perguntas exibiremos uma tela parabenizando
      child: Text(texto, style: TextStyle(fontSize: 28)),
    );
  }
}
