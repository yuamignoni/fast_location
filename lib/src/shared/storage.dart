import 'package:hive/hive.dart';

class StorageService {
  static late Box _box;

  static Future<void> init() async {
    _box = await Hive.openBox('addresses');
  }

  static Future<void> saveAddress(String key, Map<String, dynamic> data) async {
    await _box.put(key, data);
  }

  static Map<String, dynamic>? getAddress(String key) {
    return _box.get(key);
  }

  static List<Map<String, dynamic>> getAllAddresses() {
    return _box.values.cast<Map<String, dynamic>>().toList();
  }
}
