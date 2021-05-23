import 'package:flutter/material.dart';

class Rel1Data {
  static List<Data> rel1data = [
    Data(
        name: "Ticket (R\u0024: 14.282.284,80)",
        percent: 3.78,
        color: Colors.red),
    Data(
        name: 'Maxx Card (R\u0024: 60.573.602,50)',
        percent: 16.05,
        color: Colors.redAccent),
    Data(
        name: 'Meu Vale (R\u0024: 302.543.584,28)',
        percent: 80.17,
        color: Colors.lightBlue),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
