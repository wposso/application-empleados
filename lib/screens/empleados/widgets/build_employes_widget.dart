import 'package:application/model/empleados_model.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/fontsize_global.dart';
import 'package:application/theme/helpers/spacer_box.dart';
import 'package:flutter/material.dart';

class BuildEmployesWidget extends StatelessWidget {
  final String nombre;
  final String documento;
  final String tag;
  final EstadoEmpleado estado;
  const BuildEmployesWidget({
    super.key,
    required this.nombre,
    required this.documento,
    required this.tag,
    required this.estado,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: ListTile(
        dense: false,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: BlueColors.blueColorShade3,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              nombre.substring(0, 1),
              style: TextStyle(
                color: WhiteColors.whiteColor,
                fontSize: MaxSizeFont.maxSizeFont2,
              ),
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              nombre,
              style: TextStyle(
                fontSize: MediumSizeFont.medSizeFont4,
                letterSpacing: 0.8,
                fontWeight: FontWeight.w600,
              ),
            ),
            SpacerHorizontalBox.horizontalMedBox,
            _buildStatusTag(tag, estado),
          ],
        ),
        subtitle: Text(documento, style: TextStyle(letterSpacing: 0.9)),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: GreyColors.greyColorShade3,
          size: 15,
        ),
      ),
    );
  }

  Widget _buildStatusTag(String tag, EstadoEmpleado estado) {
    Color backgroundColor;

    switch (estado) {
      case EstadoEmpleado.activo:
        backgroundColor = Colors.green.withOpacity(0.80);
        break;
      case EstadoEmpleado.inactivo:
        backgroundColor = Colors.grey.withOpacity(0.80);
        break;
      case EstadoEmpleado.suspendido:
        backgroundColor = Colors.redAccent.withOpacity(0.80);
        break;
      case EstadoEmpleado.archivado:
        backgroundColor = Colors.amberAccent.withOpacity(0.80);
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: MaxRadius.radiusMax3,
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          tag,
          style: TextStyle(
            color: WhiteColors.whiteColor,
            fontSize: MediumSizeFont.medSizeFont1,
          ),
        ),
      ),
    );
  }
}
