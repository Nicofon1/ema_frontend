import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/plantilla_pregunta_model.dart';

abstract class ISondeoRepository {
  Future<List<PlantillaPregunta>> getPlantillaPorEdad(int edad);
}

class SondeoRepository implements ISondeoRepository {
  final String _baseUrl = "http://localhost:8000/api";

  Future<List<PlantillaPregunta>> getPlantillaPorEdad(int edad) async {
    final response = await http.get(Uri.parse('$_baseUrl/plantilla-sondeo?edad=$edad'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => PlantillaPregunta.fromJson(json)).toList();
    } else {
      throw Exception('Falló al cargar la plantilla del sondeo');
    }
  }
}