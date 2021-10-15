import 'package:control_gastos/utils/colors.dart';
import 'package:flutter/material.dart';

class NuevaCompraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blanco,
      body: Center(
        child: Text('Nueva Compra Page'),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.neutro,
          heroTag: 'add',
          child: Icon(Icons.save),
          onPressed: () {
            Navigator.pop(context);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
