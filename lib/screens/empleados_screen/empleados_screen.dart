import 'package:application/screens/empleados_screen/widgets/build_listview_widget.dart';
import 'package:application/screens/empleados_screen/widgets/build_searchbar_widget.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:flutter/material.dart';

class EmpleadosScreen extends StatelessWidget {
  const EmpleadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: WhiteColors.whiteColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: MinRadius.radiusMin3,
                  color: GreyColors.greyColorShade1,
                ),
                child: BuildSearchbarWidget(),
              ),
            ),
            BuildListviewWidget(),
          ],
        ),
      ),
    );
  }
}
