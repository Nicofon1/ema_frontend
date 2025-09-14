// lib/views/lista_estudiantes_view.dart
import 'package:ema_frontend/viewmodels/lista_estudiantes_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListaEstudiantesView extends StatelessWidget {
  const ListaEstudiantesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListaEstudiantesViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Lista de Estudiantes (API)'),
          ),
          body: viewModel.isLoading
              ? const Center(child: CircularProgressIndicator()) 
              : ListView.builder(
                  itemCount: viewModel.estudiantes.length,
                  itemBuilder: (context, index) {
                    final estudiante = viewModel.estudiantes[index];
                    return ListTile(
                      title: Text('${estudiante.nombre} ${estudiante.apellido}'),
                      subtitle: Text('Salón: ${estudiante.salon}'),
                      leading: const Icon(Icons.person),
                    );
                  },
                ),
        );
      },
    );
  }
}