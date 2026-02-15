import 'package:application/data/empleados_lista.dart';
import 'package:application/model/empleados_model.dart';
import 'package:application/screens/empleados_info/widgets/build_circleavatar_widget.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:flutter/material.dart';

class EmpleadosInfoScreen extends StatelessWidget {
  const EmpleadosInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final letra = ListaEmpleados.empList;
    return SafeArea(
      child: Scaffold(
        backgroundColor: WhiteColors.whiteColor,
        body: Column(children: []),
      ),
    );
  }
}
