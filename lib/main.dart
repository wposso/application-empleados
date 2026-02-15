import 'package:application/screens/empleados/empleados_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empleados',
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      home: const EmpleadosScreen(),
    );
  }
}
