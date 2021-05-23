import 'package:flutter/material.dart';
import '../controler/app_controler.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    //reconstrutor modo escuro
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return Scaffold(
              appBar: AppBar(
                //titulo da pagina
                title: Text("Configurações"),
              ),
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    //Switch modo escuro
                    child: Switch(
                        value: AppController.instance.isDarkTheme,
                        onChanged: (value) {
                          AppController.instance.changeTheme();
                        }),
                  ),
                  //Texto lateral do Switch
                  Text("Modo Escuro")
                ],
              ));
        });
  }
}
