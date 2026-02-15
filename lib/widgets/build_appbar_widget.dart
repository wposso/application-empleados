import 'package:application/model/empleados_model.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/fontsize_global.dart';
import 'package:application/theme/helpers/spacer_box.dart';
import 'package:application/widgets/build_buttonback_widget.dart';
import 'package:flutter/material.dart';

class BuildAppbarWidget extends StatelessWidget {
  final Widget buildWidget;
  const BuildAppbarWidget({super.key, required this.buildWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      useDefaultSemanticsOrder: false,
      backgroundColor: BlueColors.blueColorShade2,
      elevation: 0,
      foregroundColor: WhiteColors.whiteColor,
      flexibleSpace: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(child: BuildButtonbackWidget()),
              SizedBox(
                child: Row(
                  children: [
                    Text(
                      'estado ${EstadoEmpleado.activo.name}',
                      style: TextStyle(
                        color: WhiteColors.whiteColor,
                        fontSize: MaxSizeFont.maxSizeFont3,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.9,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: _buildDropdownButton(context),
                    ),
                  ],
                ),
              ),
              SizedBox(child: buildWidget),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton(BuildContext context) {
    return PopupMenuButton<EstadoEmpleado>(
      padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20),
      elevation: 1,
      borderRadius: MinRadius.radiusMin3,
      menuPadding: EdgeInsets.only(top: 6, bottom: 6, left: 12, right: 12),
      position: PopupMenuPosition.under,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Colors.white,
        size: 27,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      onSelected: (EstadoEmpleado value) {},
      itemBuilder: (context) => EstadoEmpleado.values.map((estado) {
        return PopupMenuItem(
          value: estado,
          child: Text('Estados: ${estado.name}'),
        );
      }).toList(),
    );
  }
}
