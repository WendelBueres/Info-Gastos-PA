import 'package:flutter/material.dart';

class Rel2Data {
  static List<Data> rel2data = [
    //dados do relatorio 2
    Data(
        name: "M. B. LTDA \nR\u0024 1.268.700,00",
        percent: 98.42,
        color: Colors.lightBlue),
    Data(
        name: 'CEMAZA LTDA \nR\u0024 20.000,00',
        percent: 1.58,
        color: Colors.redAccent),
    Data(
        name: "AMARAL COSTA LTDA \nR\u0024 4.999,50",
        percent: 0.39,
        color: Colors.lightGreen)
  ];
}
//declarando tipo dos dados
class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
