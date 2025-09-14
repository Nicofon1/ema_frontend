import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/estudiante_model.dart';

abstract class IEstudianteRepository {
  Future<List<Estudiante>> getEstudiantes();
}
class EstudianteRepository implements IEstudianteRepository {

  final String _baseUrl = "http://localhost:8000/api";

  Future<List<Estudiante>> getEstudiantes() async {
    final response = await http.get(Uri.parse('$_baseUrl/estudiantes'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Estudiante.fromJson(json)).toList();
    } else {
      throw Exception('Falló al cargar los estudiantes');
    }
  }
}