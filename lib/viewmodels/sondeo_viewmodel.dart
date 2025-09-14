import 'package:flutter/material.dart';
import '../models/plantilla_pregunta_model.dart';
import '../services/sondeo_service.dart';

class SondeoViewModel extends ChangeNotifier {
  
  final ISondeoService _sondeoService = SondeoService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  List<PlantillaPregunta> _plantilla = [];
  List<PlantillaPregunta> get plantilla => _plantilla;

  Future<void> cargarPlantilla(String edadStr) async {
    if (edadStr.isEmpty) return;

    final edad = int.tryParse(edadStr);
    if (edad == null) {
      _errorMessage = "Por favor, ingresa un número válido.";
      notifyListeners();
      return;
    }

    _isLoading = true;
    _errorMessage = null; 
    notifyListeners();

    try {
      _plantilla = await _sondeoService.obtenerPlantilla(edad);
      if (_plantilla.isEmpty) {
        _errorMessage = "No se encontró un cuestionario para la edad ingresada.";
      }
    } catch (e) {
      _errorMessage = "Ocurrió un error al cargar el cuestionario. Intenta de nuevo.";
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}