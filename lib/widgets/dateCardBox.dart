import 'package:flutter/material.dart';

import 'package:control_gastos/utils/colors.dart';

class DateCardBox extends StatefulWidget {
  @override
  _DateCardBoxState createState() => _DateCardBoxState();
}

class _DateCardBoxState extends State<DateCardBox> {
  final weekList = ['LUN', 'MAR', 'MIE', 'JUE', 'VIE', 'SAB', 'DOM'];
  final dayList = ['20', '21', '22', '23', '24', '25', '26'];
  var selected = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => setState(() => selected = index),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index
                    ? AppColors.primario.withOpacity(0.5)
                    : null,
              ),
              child: Column(
                children: [
                  Text(
                    weekList[index],
                    style: TextStyle(
                        color: selected == index
                            ? AppColors.texto
                            : AppColors.textoTenue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    dayList[index],
                    style: TextStyle(
                        fontSize: selected == index ? 16 : 11,
                        color: selected == index
                            ? AppColors.texto
                            : AppColors.textoTenue),
                  )
                ],
              ),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 5),
          itemCount: weekList.length,
        ));
  }
}
