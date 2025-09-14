
class Estudiante {
  final int id;
  final String nombre;
  final String apellido;
  final String salon;
  final String genero;

  Estudiante({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.salon,
    required this.genero,
  });

  factory Estudiante.fromJson(Map<String, dynamic> json) {
    return Estudiante(
      id: json['id'],
      nombre: json['nombre'],
      apellido: json['apellido'],
      salon: json['salon'],
      genero: json['genero'],
    );
  }
}