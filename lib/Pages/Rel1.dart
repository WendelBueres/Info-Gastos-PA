import 'package:ads_project/charts/Rel1_chart.dart';
import 'package:flutter/material.dart';

class Rel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Relatório Vale-Alimentação"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            children: [
              Rel1ChartPage(),
            ],
          ),
        ),
      );
}
