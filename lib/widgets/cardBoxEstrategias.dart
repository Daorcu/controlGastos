import 'package:control_gastos/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:control_gastos/models/cardBox.dart';

class CardBoxEstrategias extends StatelessWidget {
  final cardBoxList = CardBox.generateCardBoxEstrategias();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          padding: EdgeInsets.only(bottom: 25),
          physics: BouncingScrollPhysics(),
          itemCount: cardBoxList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) =>
              _buildCardBox(context, cardBoxList[index]),
        ));
  }

  Widget _buildCardBox(BuildContext context, CardBox card) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: card.bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              card.iconData,
              color: AppColors.blanco,
              size: 35,
            ),
            SizedBox(height: 30),
            Text(
              card.title!,
              style: TextStyle(
                color: card.titleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
