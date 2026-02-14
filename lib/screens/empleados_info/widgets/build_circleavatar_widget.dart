import 'package:application/theme/colors/global_colors.dart';
import 'package:flutter/material.dart';

class BuildCircleavatarWidget extends StatelessWidget {
  final String letra;
  const BuildCircleavatarWidget({super.key, required this.letra});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        backgroundColor: BlueColors.blueColorShade3,
        radius: 60,
        child: Text(
          letra.substring(0, 1),
          style: TextStyle(fontSize: 34, color: WhiteColors.whiteColor),
        ),
      ),
    );
  }
}
