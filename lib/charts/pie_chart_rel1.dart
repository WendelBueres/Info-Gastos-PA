import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/pie_data.dart';

List<PieChartSectionData> getSections(int touchedIndex) => Rel1Data.rel1data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final isTouched = index == touchedIndex;
      //tamanho fonte chart (destacada : normal)
      final double fontSize = isTouched ? 20 : 12;
      //tamanho do raio do chart (destacada : normal)
      final double radius = isTouched ? 80 : 70;

      //Parametros herdam de data
      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '${data.percent}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );

      return MapEntry(index, value);
    })
    .values
    .toList();
