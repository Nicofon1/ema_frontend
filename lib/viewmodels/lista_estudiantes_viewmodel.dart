import 'package:flutter/material.dart';
import '../models/estudiante_model.dart';
import '../services/estudiante_service.dart'; 

class ListaEstudiantesViewModel extends ChangeNotifier {
  
  final EstudianteService _estudianteService = EstudianteService();


  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Estudiante> _estudiantes = [];
  List<Estudiante> get estudiantes => _estudiantes;


  ListaEstudiantesViewModel() {
    cargarEstudiantes();
  }
  
  Future<void> cargarEstudiantes() async {
    _isLoading = true;
    notifyListeners(); 

    try {
      _estudiantes = await _estudianteService.obtenerTodosLosEstudiantes();
    } catch (e) {
      print(e); 
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}