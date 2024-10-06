import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fastlocation/src/modules/history/controller/history_controller.dart';

class HistoryPage extends StatelessWidget {
  final HistoryController controller = HistoryController();

  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Carregar o histórico ao abrir a página
    controller.loadHistory();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.history.length,
            itemBuilder: (context, index) {
              // Acessar uma chave do Map, como 'logradouro' ou 'cep'
              final address = controller.history[index];
              final logradouro =
                  address['logradouro'] ?? 'Endereço desconhecido';
              final cep = address['cep'] ?? 'CEP não encontrado';

              return ListTile(
                title: Text(logradouro), // Exibir o logradouro ou outro campo
                subtitle:
                    Text('CEP: $cep'), // Opcional: Exibir o CEP como subtítulo
              );
            },
          );
        },
      ),
    );
  }
}
