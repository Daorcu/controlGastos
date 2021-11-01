import 'package:control_gastos/utils/colors.dart';
import 'package:control_gastos/widgets/cardBox_timeLine.dart';
import 'package:control_gastos/widgets/dateCardBox.dart';
import 'package:control_gastos/widgets/tituloDetalles.dart';
import 'package:flutter/material.dart';

import 'package:control_gastos/models/cardBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetallesPage extends StatelessWidget {
  final CardBox? cardBox;

  const DetallesPage({
    Key? key,
    this.cardBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detialList = cardBox!.desc;
    return Scaffold(
        backgroundColor: AppColors.primario,
        body: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.blanco,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DateCardBox(),
                    TituloDetalles(),
                  ],
                ),
              ),
            ),
            detialList == null
                ? SliverFillRemaining(
                    child: Container(
                      color: AppColors.blanco,
                      child: Center(
                          child: Text(
                        'No hay movimientos',
                        style: TextStyle(
                          color: AppColors.textoTenue,
                          fontSize: 18,
                        ),
                      )),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                    (_, index) => CardBoxTimeLine(detail: detialList[index]),
                    childCount: detialList.length,
                  ))
          ],
        ));
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: AppColors.primario,
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.arrowCircleLeft),
        iconSize: 25,
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detalles de ${cardBox!.title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text('Resumen de tus compras',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: AppColors.textoTenue))
          ],
        ),
      ),
    );
  }
}
