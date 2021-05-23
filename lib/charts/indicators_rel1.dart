import 'package:flutter/material.dart';

import '../data/pie_data.dart';

class IndicatorsRel1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Rel1Data.rel1data
            .map(
              (data) => Container(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: buildIndicator(
                    color: data.color,
                    text: data.name,
                    // isSquare: true,
                  )),
            )
            .toList(),
      );

  Widget buildIndicator({
    //texto e cor obrigatórios
    @required Color color,
    @required String text,
    //desabilita contorno,
    bool isSquare = false,
    //tamanho indicador,
    double size = 16,
  }) =>
      Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              //parametros de cor herdam do Data
              color: color,
            ),
          ),
          //tamanho da caixa,
          const SizedBox(width: 8),
          Text(
            text,
            //Parametros do texto descritivo
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
}
