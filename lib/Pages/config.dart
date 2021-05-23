import 'package:flutter/material.dart';
import '../controler/app_controler.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Configurações"),
              ),
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Switch(
                      value: AppController.instance.isDarkTheme,
                      onChanged: (value) {
                        AppController.instance.changeTheme();
                      }),
                  Text("Modo Escuro")
                ],
              ));
        });
  }
}
