import 'package:control_gastos/utils/colors.dart';
import 'package:control_gastos/widgets/gastoAnterior.dart';
import 'package:flutter/material.dart';

class GastosAnteriores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 10),
          Text(
            'Gastos anteriores',
            style: TextStyle(
              color: AppColors.textoTenue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GastoAnterior(
                mes: 'Mes anterior',
                cantidad: '\$30 K',
                bgColor: AppColors.secundario.withOpacity(0.5),
              ),
              GastoAnterior(
                mes: 'Dos meses',
                cantidad: '\$10 K',
                bgColor: AppColors.cafe.withOpacity(0.5),
              ),
              GastoAnterior(
                mes: 'Tres meses',
                cantidad: '\$21 K',
                bgColor: AppColors.neutro,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
