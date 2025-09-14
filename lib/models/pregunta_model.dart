class Pregunta {
  final int id;
  final String textoPregunta;
  final String tipoRespuesta;

  Pregunta({
    required this.id,
    required this.textoPregunta,
    required this.tipoRespuesta,
  });

  factory Pregunta.fromJson(Map<String, dynamic> json) {
    return Pregunta(
      id: json['id'],
      textoPregunta: json['texto_pregunta'],
      tipoRespuesta: json['tipo_respuesta'],
    );
  }
}