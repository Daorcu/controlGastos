import 'package:flutter/material.dart';

import 'package:control_gastos/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBox {
  IconData? iconData;
  String? title;
  Color? titleColor;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  String? total;
  String? percent;

  bool isLast;

  CardBox({
    this.iconData,
    this.title,
    this.titleColor,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.total,
    this.percent,
    this.isLast = false,
  });

  static List<CardBox> generateCardBoxEstrategias() {
    return [
      CardBox(
        iconData: FontAwesomeIcons.dollarSign,
        title: 'Fondo de emergencia',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.creditCard,
        title: 'Tarjetas de crédito',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.chartLine,
        title: 'Inversiones',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.planeDeparture,
        title: 'Viajes',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.piggyBank,
        title: 'Ahorro',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.school,
        title: 'Colegiatura',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
      CardBox(
        iconData: FontAwesomeIcons.car,
        title: 'Auto',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario,
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '',
        percent: '',
      ),
    ];
  }

  static List<CardBox> generateCardBoxCompras() {
    return [
      CardBox(
        iconData: FontAwesomeIcons.dollarSign,
        title: 'Ingresos',
        titleColor: AppColors.blanco,
        bgColor: AppColors.cafe.withOpacity(0.5),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$30.4 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.creditCard,
        title: 'Hogar',
        titleColor: AppColors.blanco,
        bgColor: AppColors.verde.withOpacity(0.8),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$20.2 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.chartLine,
        title: 'Educación',
        titleColor: AppColors.blanco,
        bgColor: AppColors.textoTenue.withOpacity(0.3),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$1.15 M',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.planeDeparture,
        title: 'Vacaciones',
        titleColor: AppColors.blanco,
        bgColor: AppColors.secundario.withOpacity(0.5),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$53 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.piggyBank,
        title: 'Ahorro',
        titleColor: AppColors.blanco,
        bgColor: AppColors.primario.withOpacity(0.7),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$10.2 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.school,
        title: 'Ocio',
        titleColor: AppColors.blanco,
        bgColor: AppColors.neutro.withOpacity(0.5),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$9.23 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.car,
        title: 'Personal',
        titleColor: AppColors.blanco,
        bgColor: AppColors.textoTenue.withOpacity(0.3),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$1.4 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.school,
        title: 'Retiro',
        titleColor: AppColors.blanco,
        bgColor: AppColors.cafe.withOpacity(0.5),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$25.1 K',
        percent: '100%',
      ),
      CardBox(
        iconData: FontAwesomeIcons.car,
        title: 'Vestimenta',
        titleColor: AppColors.blanco,
        bgColor: AppColors.verde.withOpacity(0.8),
        iconColor: Colors.white,
        btnColor: AppColors.neutro,
        total: '\$4.18 K',
        percent: '100%',
      ),
    ];
  }
}
