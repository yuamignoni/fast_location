import 'package:dio/dio.dart';
import 'package:fastlocation/src/modules/home/model/address_model.dart';

class AddressRepository {
  final Dio dio = Dio();

  Future<Address?> fetchAddressByCep(String cep) async {
    try {
      final response = await dio.get('https://viacep.com.br/ws/$cep/json/');
      if (response.statusCode == 200) {
        return Address.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print('Erro ao buscar endereço: $e');
      return null;
    }
  }
}
