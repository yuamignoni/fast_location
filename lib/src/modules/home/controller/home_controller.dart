import 'package:mobx/mobx.dart';
import 'package:fastlocation/src/modules/home/services/address_service.dart';
import 'package:fastlocation/src/modules/home/model/address_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AddressService service = AddressService();

  @observable
  Address? address;

  @observable
  String errorMessage = '';

  @observable
  bool isLoading = false;

  @observable
  ObservableList<Map<String, dynamic>> addressHistory = ObservableList.of([]);

  @action
  Future<void> searchAddress(String cep) async {
    try {
      isLoading = true;
      final result = await service.searchAddress(cep);
      if (result != null) {
        address = result;
        addressHistory = ObservableList.of(service.getAddressHistory());
      } else {
        errorMessage = 'Endereço não encontrado';
      }
    } catch (e) {
      errorMessage = 'Erro ao buscar endereço';
    } finally {
      isLoading = false;
    }
  }
}
