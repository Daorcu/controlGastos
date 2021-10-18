import 'package:control_gastos/utils/colors.dart';
import 'package:control_gastos/widgets/cardBoxCompras.dart';
import 'package:control_gastos/widgets/gastosAnteriores.dart';
import 'package:flutter/material.dart';

class ComprasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blanco,
        body: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('\$3,285.74',
                      style: TextStyle(
                        color: AppColors.texto,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      )),
                  Text(
                    'Gastos del mes',
                    style: TextStyle(
                      color: AppColors.textoTenue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: CardsBoxCompras(),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  GastosAnteriores(),
                ]),
          ),
        ));
  }
}
