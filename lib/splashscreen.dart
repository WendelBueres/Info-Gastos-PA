import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'bar.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenWidget(),
    );
  }
}

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //Tela de carregamento.
        SplashScreen(
          //duração da tela de carregamento.
          seconds: 8,
          //direcionando para tela principal após carregamento.
          navigateAfterSeconds: BarNavigation(),
          loaderColor: Colors.transparent,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          //posição do logo.
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  //chamando o logo.
                  image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.contain)),
            ),
          ),
          //posição da animação de carregamento.
          Center(
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  //chamando a animação.
                  child: FlareActor(
                    "assets/loading.flr",
                    animation: "loading",
                    fit: BoxFit.contain,
                  ),
                ),
                //Texto abaixo da animação de carregamento.
                Center(
                    child: Text(
                  "Carregando seus impostos...",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ))
              ],
            ),
          )
        ])
      ],
    );
  }
}
