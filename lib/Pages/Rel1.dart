import 'package:ads_project/charts/Rel1_chart.dart';
import 'package:flutter/material.dart';

class Rel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar:
      //titulo da pagina
          AppBar(title: Text("Relatório Vale-Alimentação"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(children: [
            Rel1ChartPage(),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(26),
                  //Texto de gasto total
                  child: Text("Gasto total: R\u0024 377.399.471,58",
                  //Estilo do texto
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(46),
                  //Texto relatório
                  child: Text(
                      "Relatório por período: \n\n2020\nR\u0024 205.543.288.50\n\n2021\nR\u0024 171.856.183,08 \n\nÚltimos 3 meses\nR\u0024 146.218.875,68\n\nÚltimo mês\nR\u0024 101.023.421,40",
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
