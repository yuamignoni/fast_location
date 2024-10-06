import 'package:flutter/material.dart';

class AddressListComponent extends StatelessWidget {
  final List<Map<String, dynamic>> addresses;

  const AddressListComponent({super.key, required this.addresses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addresses.length,
      itemBuilder: (context, index) {
        final address = addresses[index];
        return ListTile(
          title: Text(address['logradouro']),
          subtitle: Text('CEP: ${address['cep']}'),
        );
      },
    );
  }
}
