import 'package:control_gastos/pages/detalles_page.dart';
import 'package:control_gastos/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:control_gastos/models/cardBox.dart';

class CardsBoxCompras extends StatelessWidget {
  final cardBoxList = CardBox.generateCardBoxCompras();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          padding: EdgeInsets.only(bottom: 20),
          physics: BouncingScrollPhysics(),
          itemCount: cardBoxList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) =>
              _buildCardBox(context, cardBoxList[index]),
        ));
  }

  Widget _buildCardBox(BuildContext context, CardBox card) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetallesPage(
                  cardBox: card,
                )));
      },
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: card.bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    card.iconData,
                    color: AppColors.blanco,
                    size: 20,
                  ),
                  SizedBox(width: 25),
                  Text(
                    card.percent.toString(),
                    style: TextStyle(
                      color: card.titleColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  card.title!,
                  style: TextStyle(
                    color: card.titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  card.total.toString(),
                  style: TextStyle(
                    color: card.titleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
