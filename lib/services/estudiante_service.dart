import '../models/estudiante_model.dart';
import '../repositories/estudiante_repository.dart';

abstract class IEstudianteService {
  Future<List<Estudiante>> obtenerTodosLosEstudiantes();
}

class EstudianteService implements IEstudianteService {
  final IEstudianteRepository _repository = EstudianteRepository();

  @override
  Future<List<Estudiante>> obtenerTodosLosEstudiantes() {
    return _repository.getEstudiantes();
  }
}