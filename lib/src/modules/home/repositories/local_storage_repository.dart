import 'package:hive/hive.dart';

class LocalStorageRepository {
  Box get _box => Hive.box('addresses');

  void saveAddress(String key, Map<String, dynamic> address) {
    _box.put(key, address);
  }

  Map<String, dynamic>? getAddress(String key) {
    return _box.get(key);
  }

  List<Map<String, dynamic>> getAllAddresses() {
    return _box.values.cast<Map<String, dynamic>>().toList();
  }
}
