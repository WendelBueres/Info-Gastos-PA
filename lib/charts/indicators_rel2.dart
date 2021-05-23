import 'package:flutter/material.dart';

import '../data/rel2_data.dart';

class IndicatorsRel2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Rel2Data.rel2data
            .map(
              (data) => Container(
                  //espaçamento padding
                  padding: EdgeInsets.symmetric(vertical: 4),
                  //indicadores herdam de data.
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
    //tamanho indicador,
    double size = 20,
  }) =>
      Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //parametros de cor herdam do .data
              color: color,
            ),
          ),
          //tamanho da caixa,
          const SizedBox(width: 5),
          Text(
            text,
            //Parametros dos indicadores
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
}
