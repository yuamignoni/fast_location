import 'package:mobx/mobx.dart';
import 'package:fastlocation/src/shared/storage.dart';

part 'history_controller.g.dart';

class HistoryController = _HistoryControllerBase with _$HistoryController;

abstract class _HistoryControllerBase with Store {
  @observable
  List<Map<String, dynamic>> history = [];

  @action
  void loadHistory() {
    history = StorageService.getAllAddresses();  // Carregar todos os endereços
  }
}
