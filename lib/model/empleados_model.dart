enum EstadoEmpleado { activo, inactivo, suspendido, archivado }

class Empleado {
  final int id;
  final String nombres;
  final String apellidos;
  final String documento;
  final DateTime fechaNacimiento;
  final String direccion;
  final String telefono;
  final String correo;
  final String cargo;
  final String departamento;
  final DateTime fechaIngreso;
  final double salario;
  final EstadoEmpleado estado;

  const Empleado({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.documento,
    required this.fechaNacimiento,
    required this.direccion,
    required this.telefono,
    required this.correo,
    required this.cargo,
    required this.departamento,
    required this.fechaIngreso,
    required this.salario,
    required this.estado,
  });

  int get edad {
    final hoy = DateTime.now();
    int edad = hoy.year - fechaNacimiento.year;
    if (hoy.month < fechaNacimiento.month ||
        (hoy.month == fechaNacimiento.month && hoy.day < fechaNacimiento.day)) {
      edad--;
    }
    return edad;
  }

  String get nombreCompleto => '$nombres $apellidos';

  Empleado copyWith({double? salario, EstadoEmpleado? estado}) {
    return Empleado(
      id: id,
      nombres: nombres,
      apellidos: apellidos,
      documento: documento,
      fechaNacimiento: fechaNacimiento,
      direccion: direccion,
      telefono: telefono,
      correo: correo,
      cargo: cargo,
      departamento: departamento,
      fechaIngreso: fechaIngreso,
      salario: salario ?? this.salario,
      estado: estado ?? this.estado,
    );
  }
}
