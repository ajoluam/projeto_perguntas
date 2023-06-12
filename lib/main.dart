
import 'dart:html';

import 'package:flutter/material.dart';

main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];

    String question = perguntas[0];
   return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas e Respostas"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
       body: Column(
         children: [
           Text(question),
           const SizedBox(height: 10), //adiciona espaço entre um botão e outro
           ElevatedButton(
             child: Text("Resposta1"),
             onPressed: () {question = perguntas[1]; print(question);},
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
             child: Text("Resposta2"),
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
           const SizedBox(height: 10), //adiciona espaço entre um botão e outro
           ElevatedButton(
             child: Text("Resposta3"),
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