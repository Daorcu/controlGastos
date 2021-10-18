import 'package:flutter/material.dart';

import 'package:control_gastos/utils/colors.dart';

class GastoAnterior extends StatelessWidget {
  final String mes;
  final String cantidad;
  final Color bgColor;

  const GastoAnterior({
    Key? key,
    required this.mes,
    required this.cantidad,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 6),
        height: 70,
        width: MediaQuery.of(context).size.width / 3.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: this.bgColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              this.mes,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blanco,
                fontSize: 17,
              ),
            ),
            Text(
              this.cantidad,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blanco,
                fontSize: 25,
              ),
            ),
          ],
        ));
  }
}
