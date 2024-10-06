import 'package:flutter/material.dart';
import 'package:fastlocation/src/modules/home/model/address_model.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:geolocator/geolocator.dart';

class LastAddressComponent extends StatelessWidget {
  final Address address;

  const LastAddressComponent({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Último Endereço Consultado:'),
        Text('${address.logradouro}, ${address.localidade} - ${address.uf}'),
        Text('CEP: ${address.cep}'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () async {
            Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high,
            );
            final isAvailable =
                await MapLauncher.isMapAvailable(MapType.google);
            if (isAvailable != null && isAvailable) {
              await MapLauncher.showDirections(
                mapType: MapType.google,
                origin: Coords(position.latitude, position.longitude),
                destinationTitle:
                    '${address.logradouro}, ${address.localidade}',
                destination: Coords(-23.550520, -46.633308),
              );
            }
          },
          child: const Text('Traçar Rota'),
        ),
      ],
    );
  }
}
