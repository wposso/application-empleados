import 'package:application/data/empleados_lista.dart';
import 'package:application/screens/empleados_screen/widgets/build_employes_widget.dart';
import 'package:application/theme/colors/global_colors.dart';
import 'package:application/theme/helpers/borderadius_global.dart';
import 'package:application/theme/helpers/spacer_box.dart';
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
          return BuildEmployesWidget(nombre: i.nombre, documento: i.documento);
        },
        separatorBuilder: (context, i) => SpacerVerticalBox.verticalMinBox,
        itemCount: empleados.length,
      ),
    );
  }
}
