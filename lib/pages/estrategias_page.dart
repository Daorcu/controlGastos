import 'package:control_gastos/utils/colors.dart';
import 'package:control_gastos/widgets/cardBoxEstrategias.dart';
import 'package:flutter/material.dart';

class EstrategiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
              color: Colors.transparent,
              margin: EdgeInsets.all(20),
              child: Text(
                'Estrategias',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.texto),
              )),
          Expanded(
            child: CardBoxEstrategias(),
          )
        ],
      ),
    );
  }
}
