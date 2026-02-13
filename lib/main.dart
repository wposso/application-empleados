import 'package:application/screens/empleados_screen/empleados_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empleados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const EmpleadosScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final colorA = Colors.grey.shade200;
//     final colorB = Colors.grey.shade500;
//     final colorC = Colors.grey.shade800;
//     final radiusA = BorderRadius.circular(10);
//     final radiusB = BorderRadius.circular(20);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(width: 1, color: colorB),
//                 borderRadius: radiusB,
//                 color: colorA,
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 12),
//               child: Row(
//                 children: [
//                   // Expanded(
//                   //   child: SearchBar(
//                   //     overlayColor: WidgetStatePropertyAll(Colors.transparent),
//                   //     elevation: WidgetStatePropertyAll(0),
//                   //     autoFocus: false,
//                   //     backgroundColor: WidgetStatePropertyAll(
//                   //       Colors.transparent,
//                   //     ),
//                   //     shape: WidgetStatePropertyAll(
//                   //       RoundedRectangleBorder(borderRadius: radiusA),
//                   //     ),
//                   //     leading: Icon(Icons.search_rounded, color: colorB),
//                   //     hintText: 'Buscar',
//                   //     hintStyle: WidgetStatePropertyAll(
//                   //       TextStyle(color: colorB),
//                   //     ),
//                   //   ),
//                   // ),
//                   // Container(
//                   //   child: Center(
//                   //     child: Icon(Icons.filter_list_rounded, color: colorB),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
//           //   child: Text(
//           //     'Lista de empleados',
//           //     style: TextStyle(
//           //       fontSize: 15,
//           //       fontWeight: FontWeight.w600,
//           //       letterSpacing: 0.3,
//           //       color: colorC,
//           //     ),
//           //   ),
//           // ),
//           // empList.isEmpty
//           //     ? Center(
//           //         heightFactor: 10,
//           //         child: Column(
//           //           children: [
//           //             Icon(Icons.warning_rounded),
//           //             SizedBox(height: 10),
//           //             Text('No hay datos dispónibles.'),
//           //           ],
//           //         ),
//           //       )
//           //     : Expanded(
//           //         child: ListView.separated(
//           //           itemBuilder: (context, index) {
//           //             final i = empList[index];
//           //             return Padding(
//           //               padding: const EdgeInsets.symmetric(horizontal: 12),
//           //               child: Container(
//           //                 decoration: BoxDecoration(
//           //                   color: colorA,
//           //                   borderRadius: radiusA,
//           //                 ),
//           //                 child: ListTile(
//           //                   onTap: () => showDialog(
//           //                     context: context,
//           //                     builder: (builder) {
//           //                       return EmpleadoInfo(
//           //                         nombre: i.nombre,
//           //                         documento: i.documento,
//           //                         salario: i.salario,
//           //                         contexto: context,
//           //                         id: i.id,
//           //                         empList: [],
//           //                       );
//           //                     },
//           //                   ),
//           //                   dense: false,
//           //                   leading: Container(
//           //                     width: 35,
//           //                     height: 35,
//           //                     decoration: BoxDecoration(
//           //                       color: Colors.blue.withOpacity(0.90),
//           //                       borderRadius: BorderRadius.circular(10),
//           //                     ),
//           //                     child: Center(
//           //                       child: Text(
//           //                         i.nombre.substring(0, 1),
//           //                         style: TextStyle(
//           //                           color: Colors.white,
//           //                           fontSize: 18,
//           //                         ),
//           //                       ),
//           //                     ),
//           //                   ),
//           //                   title: Text(
//           //                     i.nombre,
//           //                     style: TextStyle(
//           //                       fontSize: 16,
//           //                       letterSpacing: 0.8,
//           //                     ),
//           //                   ),
//           //                   subtitle: Text(
//           //                     i.documento,
//           //                     style: TextStyle(letterSpacing: 0.9),
//           //                   ),
//           //                   trailing: Icon(
//           //                     Icons.arrow_forward_ios_rounded,
//           //                     color: colorB,
//           //                   ),
//           //                 ),
//           //               ),
//           //             );
//           //           },
//           //           separatorBuilder: (context, index) => SizedBox(height: 10),
//           //           itemCount: empList.length,
//           //         ),
//           //       ),
//         ],
//       ),
//     );
//   }
// }

// class EmpleadoInfo extends StatefulWidget {
//   final String nombre;
//   final String documento;
//   final double salario;
//   final BuildContext contexto;
//   final int id;
//   final List<Empleado> empList;
//   const EmpleadoInfo({
//     super.key,
//     required this.nombre,
//     required this.documento,
//     required this.salario,
//     required this.contexto,
//     required this.id,
//     required this.empList,
//   });

//   @override
//   State<EmpleadoInfo> createState() => _EmpleadoInfoState();
// }

// class _EmpleadoInfoState extends State<EmpleadoInfo> {
//   void eliminarEmpleado() {
//     setState(() {
//       empList.removeAt(widget.id);
//       print('Se ha eliminado el empleado con éxito.');
//       Navigator.pop(context);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog.fullscreen(
//       backgroundColor: Colors.white,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(Icons.arrow_back),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           ClipOval(
//             child: CircleAvatar(
//               backgroundColor: Colors.blue.shade600,
//               radius: 60,
//               child: Text(
//                 widget.nombre.substring(0, 1),
//                 style: TextStyle(fontSize: 34, color: Colors.white),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
//             child: Divider(color: Colors.grey.shade400),
//           ),
//           SizedBox(height: 20),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildEmpleadoCard(
//                 Icons.person,
//                 'Nombre completo',
//                 widget.nombre,
//               ),
//               SizedBox(height: 10),
//               _buildEmpleadoCard(
//                 Icons.sim_card_download_rounded,
//                 'Documento',
//                 widget.documento,
//               ),
//               SizedBox(height: 10),
//               _buildEmpleadoCard(
//                 Icons.monetization_on_outlined,
//                 'Salario',
//                 widget.salario.toString().trim(),
//               ),
//             ],
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.3),
//           CustomButtom(text: 'Eliminar', onPress: eliminarEmpleado),
//         ],
//       ),
//     );
//   }

//   Widget _buildEmpleadoCard(IconData icon, String text, String label) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey.shade100,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: ListTile(
//           dense: false,
//           leading: Container(
//             width: 40,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Colors.blue.shade400,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(icon, color: Colors.white),
//           ),
//           title: Text(
//             label,
//             style: TextStyle(fontSize: 17, letterSpacing: 0.5),
//           ),
//           subtitle: Text(text),
//         ),
//       ),
//     );
//   }
// }

// class CustomButtom extends StatelessWidget {
//   final String text;
//   final Function() onPress;
//   const CustomButtom({super.key, required this.text, required this.onPress});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.8,
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.red.shade400,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(color: Colors.white, fontSize: 15),
//           ),
//         ),
//       ),
//     );
//   }
// }
