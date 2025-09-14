import '../models/plantilla_pregunta_model.dart';
import '../repositories/sondeo_repository.dart';

abstract class ISondeoService {
  Future<List<PlantillaPregunta>> obtenerPlantilla(int edad);
}

class SondeoService implements ISondeoService {
  final ISondeoRepository _repository = SondeoRepository();

  @override
  Future<List<PlantillaPregunta>> obtenerPlantilla(int edad) {
    return _repository.getPlantillaPorEdad(edad);
  }
}