import 'package:flutter/material.dart';

import 'package:control_gastos/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Estrategia {
  IconData? iconData;
  String? title;
  Color? titleColor;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;

  bool isLast;

  Estrategia({
    this.iconData,
    this.title,
    this.titleColor,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.isLast = false,
  });

  static List<Estrategia> generateEstrategia() {
    return [
      Estrategia(
        iconData: FontAwesomeIcons.dollarSign,
        title: 'Fondo de emergencia',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.creditCard,
        title: 'Tarjetas de crédito',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.chartLine,
        title: 'Inversiones',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.planeDeparture,
        title: 'Viajes',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.piggyBank,
        title: 'Ahorro',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.school,
        title: 'Colegiatura',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
      Estrategia(
        iconData: FontAwesomeIcons.car,
        title: 'Auto',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        left: 3,
        done: 1,
      ),
    ];
  }
}
