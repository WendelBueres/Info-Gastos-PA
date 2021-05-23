import 'package:ads_project/data/rel2_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSections(int touchedIndex) => Rel2Data.rel2data
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
