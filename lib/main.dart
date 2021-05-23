import 'package:ads_project/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/Rel1.dart';
import 'Pages/Rel2.dart';
import 'controler/app_controler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              //cores tema (? = escuro, : = claro)
                primaryColor: AppController.instance.isDarkTheme
                    ? Colors.blue[900]
                    : Colors.red,
              //cores tema (? = escuro, : = claro)
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            //função oculta faixa de debug
            debugShowCheckedModeBanner: false,
            //rotas
            routes: {
              "/": (context) => SplashScreenWidget(),
              "/Rel1": (context) => Rel1(),
              "/Rel2": (context) => Rel2(),
            },
          );
        }));
  });
}
