import 'package:control_gastos/pages/detalles_page.dart';
import 'package:flutter/material.dart';

import 'package:control_gastos/pages/home_page.dart';
import 'package:control_gastos/pages/ajustes_page.dart';
import 'package:control_gastos/pages/compras_page.dart';
import 'package:control_gastos/pages/estadisticas_page.dart';
import 'package:control_gastos/pages/estrategias_page.dart';
import 'package:control_gastos/pages/nuevaCompra_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (_) => HomePage(),
  'compras': (_) => ComprasPage(),
  'estadis': (_) => EstadisticasPage(),
  'nuevaCo': (_) => NuevaCompraPage(),
  'estrate': (_) => EstrategiasPage(),
  'ajustes': (_) => AjustesPage(),
  'detalles': (_) => DetallesPage(),
};
