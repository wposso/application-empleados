import 'dart:ui';

import 'package:application/screens/empleados/widgets/build_listview_widget.dart';
import 'package:application/screens/empleados/widgets/build_searchbar_widget.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/fontsize_global.dart';
import 'package:application/theme/helpers/spacer_box.dart';
import 'package:application/widgets/build_appbar_widget.dart';
import 'package:flutter/material.dart';

class EmpleadosScreen extends StatelessWidget {
  const EmpleadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BlueColors.blueColorShade2,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 90),
          child: BuildAppbarWidget(buildWidget: _buildAddButton(context)),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: WhiteColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 12,
                ),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: MaxRadius.radiusMax3,
                    color: GreyColors.greyColorShade1,
                  ),
                  child: BuildSearchbarWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Empleados',
                        style: TextStyle(
                          fontSize: MaxSizeFont.maxSizeFont1,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.9,
                        ),
                      ),
                      SpacerVerticalBox.verticalMinBox,
                      Text('Activos'),
                    ],
                  ),
                ),
              ),
              BuildListviewWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.15),
              border: Border.all(
                color: Colors.white.withOpacity(0.25),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Center(
              child: Icon(Icons.add, size: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
