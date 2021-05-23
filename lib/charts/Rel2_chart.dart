import 'package:ads_project/charts/pie_chart_rel2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicators_rel2.dart';

class Rel2ChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Rel2ChartPageState();
}

class Rel2ChartPageState extends State {
  int index;

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PieChart(
                PieChartData(
                  //função que retira linha do grafico
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  //tamanho do grafico
                  centerSpaceRadius: 82,
                  sections: getSections(index),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: IndicatorsRel2Widget(),
                ),
              ],
            ),
          ],
        ),
      );
}
