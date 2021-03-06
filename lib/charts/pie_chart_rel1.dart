import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/rel1_data.dart';

List<PieChartSectionData> getSections(int touchedIndex) => Rel1Data.rel1data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      //tamanho fonte chart
      final double fontSize = 10;
      //tamanho do raio do chart
      final double radius = 100;

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
