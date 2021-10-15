import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:control_gastos/pages/ajustes_page.dart';
import 'package:control_gastos/pages/compras_page.dart';
import 'package:control_gastos/pages/estadisticas_page.dart';
import 'package:control_gastos/pages/estrategias_page.dart';
import 'package:control_gastos/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final pages = [
    ComprasPage(),
    EstadisticasPage(),
    EstrategiasPage(),
    AjustesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: AppColors.primario,
        heroTag: 'add',
        child: Icon(Icons.add, color: AppColors.blanco),
        onPressed: () {
          Navigator.pushNamed(context, 'nuevaCo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: AppColors.blanco,
        unselectedItemColor: AppColors.cafe,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: AppColors.primario,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.creditCard),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartBar),
            label: 'Estadísticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartPie),
            label: 'Estrategias',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            label: 'Ajustes',
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.blanco,
      elevation: 0,
      title: Container(
        // margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
                height: 45,
                width: 45,
                // margin: EdgeInsets.only(left: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/avatar.jpeg'))),
            SizedBox(width: 10),
            Text('Hola, David!',
                style: TextStyle(
                  color: AppColors.texto,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
      actions: [
        IconButton(
          color: AppColors.primario,
          icon: Icon(Icons.search),
          iconSize: 30,
          onPressed: () {},
        )
      ],
    );
  }
}
