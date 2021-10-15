import 'package:control_gastos/routes/routes.dart';
import 'package:control_gastos/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // Color de área de notificaciones
    statusBarColor: Colors.transparent,
    // Color de barra
    systemNavigationBarColor: AppColors.primario,
    // Color de divisor
    systemNavigationBarDividerColor: Colors.transparent,
    // Color de iconos
    systemNavigationBarIconBrightness: Brightness.light,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control de Gastos',
      initialRoute: '/',
      routes: appRoutes,
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: AppColors.primario)),
    );
  }
}
