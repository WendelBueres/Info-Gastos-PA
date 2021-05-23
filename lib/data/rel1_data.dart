import 'package:flutter/material.dart';

class Rel1Data {
  static List<Data> rel1data = [
    // dados do relatorio 1
    Data(
        name: "Ticket \nR\u0024 14.282.284,80",
        percent: 3.78,
        color: Colors.red),
    Data(
        name: 'Maxx Card \nR\u0024 60.573.602,50',
        percent: 16.05,
        color: Colors.redAccent),
    Data(
        name: 'Meu Vale \nR\u0024 302.543.584,28',
        percent: 80.17,
        color: Colors.lightBlue),
  ];
}

//declaração dos dados
class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
