// lib/main.dart
import 'package:ema_frontend/viewmodels/lista_estudiantes_viewmodel.dart';
import 'package:ema_frontend/views/dashboard_view.dart';
import 'package:ema_frontend/views/lista_estudiantes_view.dart';
import 'package:ema_frontend/views/sondeo_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ListaEstudiantesViewModel(),
      child: const EmaApp(),
    ),
  );
}

class EmaApp extends StatelessWidget {
  const EmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMA App',
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/listaEstudiantes': (context) => const ListaEstudiantesView(),
        '/nuevoSondeo': (context) => const SondeoView(),
      },
    );
  }
}