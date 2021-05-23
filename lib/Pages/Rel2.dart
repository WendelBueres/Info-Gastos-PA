import 'package:ads_project/charts/Rel2_chart.dart';
import 'package:flutter/material.dart';

class Rel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          //Titulo da pagina
          title: Text("Relatório Testes Diagnósticos"),
          centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(children: [
            Rel2ChartPage(),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(26),
                  //Texto de gasto total
                  child: Text("Gasto total: R\u0024 1.293.699,00",
                      //Estilo do texto
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(46),
                  child: Text(
                      //Texto relatório por período
                      "Relatório por período: \n\n2020\nR\u0024 20.000,00 \n\n2021\nR\u0024 1.273.699,50 \n\nÚltimos 3 meses\nR\u0024 1.273.699,50 \n\nÚltimo mês\nR\u0024 1.268.700,00",
                      //Estilo do texto
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ]),
        ),
      ));
}
