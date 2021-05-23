// main.dart
import 'package:ads_project/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                primaryColor: AppController.instance.isDarkTheme
                    ? Colors.blue[900]
                    : Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            debugShowCheckedModeBanner: false,
            routes: {
              "/": (context) => SplashScreenWidget(),
            },
          );
        }));
  });
}
