// lib/views/sondeo_view.dart
import 'package:ema_frontend/viewmodels/sondeo_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SondeoView extends StatelessWidget {
  const SondeoView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController edadController = TextEditingController();

    return ChangeNotifierProvider(
      create: (context) => SondeoViewModel(),
      child: Consumer<SondeoViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Iniciar Nuevo Sondeo'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: edadController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Edad del Estudiante',
                      errorText: viewModel.errorMessage,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: viewModel.isLoading
                      ? null
                      : () {
                          viewModel.cargarPlantilla(edadController.text);
                        },
                    child: const Text('Cargar Cuestionario'),
                  ),
                  const SizedBox(height: 24),
                  
                  if (viewModel.isLoading)
                    const CircularProgressIndicator()
                  else
                    Expanded( 
                      child: ListView.builder(
                        itemCount: viewModel.plantilla.length,
                        itemBuilder: (context, index) {
                          final item = viewModel.plantilla[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListTile(
                              leading: CircleAvatar(child: Text('${index + 1}')),
                              title: Text(item.pregunta.textoPregunta),
                              subtitle: Text('Tipo: ${item.pregunta.tipoRespuesta} | Peso: ${item.peso}'),
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}