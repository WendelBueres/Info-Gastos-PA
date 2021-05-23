import 'package:flutter/material.dart';

import '../controler/app_controler.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Sobre este projeto"),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: Text(
                                "Este projeto foi densenvolvido pelos alunos da UNAMA:",
                                style: TextStyle(fontSize: 18, height: 1.5))),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                              child: Text("Wendel David Lobato Bueres",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue[700]))),
                        ),
                        Center(
                            child: Text("e", style: TextStyle(fontSize: 18))),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                              child: Text("Amanda Nunes Souza dos Santos",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.red[700],
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "como projeto de conclusão das disciplinas de Prática Profissional e Desenvolvimento Mobile.",
                              style: TextStyle(fontSize: 18, height: 1.5),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ])));
        });
  }
}
