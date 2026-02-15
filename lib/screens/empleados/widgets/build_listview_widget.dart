import 'package:application/data/empleados_lista.dart';
import 'package:application/screens/empleados/widgets/build_employes_widget.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/spacer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuildListviewWidget extends StatelessWidget {
  const BuildListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final empleados = ListaEmpleados.instance.empleadoLista;
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final i = empleados[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: BuildEmployesWidget(
              nombre: i.nombres,
              documento: i.correo,
              tag: i.estado.name,
              estado: i.estado,
            ),
          );
        },
        separatorBuilder: (context, i) =>
            Divider(color: GreyColors.greyColorShade1),
        itemCount: empleados.length,
      ),
    );
  }
}
