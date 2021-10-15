import 'package:control_gastos/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:control_gastos/models/estrategia.dart';

class Estrategias extends StatelessWidget {
  final estrategiasList = Estrategia.generateEstrategia();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          padding: EdgeInsets.only(bottom: 25),
          physics: BouncingScrollPhysics(),
          itemCount: estrategiasList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => estrategiasList[index].isLast
              ? _buildAddEstrategia()
              : _buildEstrategia(context, estrategiasList[index]),
        ));
  }

  Widget _buildAddEstrategia() {
    return Text('Agregar nueva');
  }

  Widget _buildEstrategia(BuildContext context, Estrategia estrategia) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: estrategia.bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              estrategia.iconData,
              color: AppColors.blanco,
              size: 35,
            ),
            SizedBox(height: 30),
            Text(
              estrategia.title!,
              style: TextStyle(
                color: estrategia.titleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
