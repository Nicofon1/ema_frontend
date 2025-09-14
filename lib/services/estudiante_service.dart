import '../models/estudiante_model.dart';
import '../repositories/estudiante_repository.dart';


class EstudianteService {
  final IEstudianteRepository _repository = EstudianteRepository();

  Future<List<Estudiante>> obtenerTodosLosEstudiantes() {
    return _repository.getEstudiantes();
  }
}