import 'pregunta_model.dart';

class PlantillaPregunta {
  final double peso;
  final Pregunta pregunta; 

  PlantillaPregunta({
    required this.peso,
    required this.pregunta,
  });

  factory PlantillaPregunta.fromJson(Map<String, dynamic> json) {
    return PlantillaPregunta(
      peso: json['peso'],
      pregunta: Pregunta.fromJson(json['pregunta']), 
    );
  }
}