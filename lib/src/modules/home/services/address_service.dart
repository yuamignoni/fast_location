import 'package:fastlocation/src/modules/home/repositories/address_repository.dart';
import 'package:fastlocation/src/modules/home/repositories/local_storage_repository.dart';
import 'package:fastlocation/src/modules/home/model/address_model.dart';

class AddressService {
  final AddressRepository addressRepository = AddressRepository();
  final LocalStorageRepository localStorageRepository =
      LocalStorageRepository();

  Future<Address?> searchAddress(String cep) async {
    Address? address = await addressRepository.fetchAddressByCep(cep);
    if (address != null) {
      localStorageRepository.saveAddress(cep, address.toJson());
    }
    return address;
  }

  List<Map<String, dynamic>> getAddressHistory() {
    return localStorageRepository.getAllAddresses();
  }
}
