import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() => runApp(SplashScreenPage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
