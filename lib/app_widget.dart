import 'package:ads_project/splashscreen.dart';
import 'package:flutter/material.dart';

import 'app_controler.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primaryColor: AppController.instance.isDarkTheme
                    ? Colors.blue[900]
                    : Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: SplashScreenWidget(),
          );
        });
  }
}
