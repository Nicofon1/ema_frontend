import '../models/plantilla_pregunta_model.dart';
import '../repositories/sondeo_repository.dart';


class SondeoService {
  final ISondeoRepository _repository = SondeoRepository();

  Future<List<PlantillaPregunta>> obtenerPlantilla(int edad) {
    return _repository.getPlantillaPorEdad(edad);
  }
}