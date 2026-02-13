import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/fontsize_global.dart';
import 'package:flutter/material.dart';

class BuildEmployesWidget extends StatelessWidget {
  final String nombre;
  final String documento;
  const BuildEmployesWidget({
    super.key,
    required this.nombre,
    required this.documento,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GreyColors.greyColorShade1,
        borderRadius: MinRadius.radiusMin3,
      ),
      child: ListTile(
        // onTap: () => showDialog(
        //   context: context,
        //   builder: (builder) {
        //     return EmpleadoInfo(
        //       nombre: i.nombre,
        //       documento: i.documento,
        //       salario: i.salario,
        //       contexto: context,
        //       id: i.id,
        //       empList: [],
        //     );
        //   },
        // ),
        dense: false,
        leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: BlueColors.blueColorShade3,
            borderRadius: MinRadius.radiusMin3,
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
        title: Text(
          nombre,
          style: TextStyle(
            fontSize: MediumSizeFont.medSizeFont4,
            letterSpacing: 0.8,
          ),
        ),
        subtitle: Text(documento, style: TextStyle(letterSpacing: 0.9)),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: GreyColors.greyColorShade2,
        ),
      ),
    );
  }
}
