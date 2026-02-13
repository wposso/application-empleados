import 'package:application/screens/empleados_screen/widgets/build_listview_widget.dart';
import 'package:application/screens/empleados_screen/widgets/build_searchbar_widget.dart';
import 'package:flutter/material.dart';

class EmpleadosScreen extends StatelessWidget {
  const EmpleadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [BuildSearchbarWidget(), BuildListviewWidget()]),
      ),
    );
  }
}
