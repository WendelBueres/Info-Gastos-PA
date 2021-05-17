import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
    ));
  }
}
