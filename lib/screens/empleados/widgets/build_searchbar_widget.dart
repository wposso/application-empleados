import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:flutter/material.dart';

class BuildSearchbarWidget extends StatelessWidget {
  const BuildSearchbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      elevation: WidgetStatePropertyAll(0),
      autoFocus: false,
      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: MaxRadius.radiusMax3),
      ),
      leading: Icon(Icons.search_rounded, color: GreyColors.greyColorShade2),
      hintText: 'Buscar empleado',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(color: GreyColors.greyColorShade2),
      ),
    );
  }
}
