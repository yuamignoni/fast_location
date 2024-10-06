import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fastlocation/src/modules/home/controller/home_controller.dart';
import 'package:fastlocation/src/modules/home/components/last_address_component.dart';
import 'package:fastlocation/src/modules/home/components/address_list_component.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController cepController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar CEP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: cepController,
              decoration: const InputDecoration(labelText: 'Digite o CEP'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.searchAddress(cepController.text);
              },
              child: const Text('Buscar'),
            ),
            const SizedBox(height: 16),
            Observer(
              builder: (_) {
                if (controller.isLoading) {
                  return const CircularProgressIndicator();
                }

                if (controller.address != null) {
                  return LastAddressComponent(address: controller.address!);
                } else if (controller.errorMessage.isNotEmpty) {
                  return Text(
                    controller.errorMessage,
                    style: const TextStyle(color: Colors.red),
                  );
                }

                return Container();
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Observer(
                builder: (_) {
                  if (controller.addressHistory.isEmpty) {
                    return const Center(
                      child: Text('Nenhum histórico de consultas ainda.'),
                    );
                  }
                  return AddressListComponent(
                    addresses: controller.addressHistory,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
