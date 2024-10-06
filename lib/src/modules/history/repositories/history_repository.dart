import 'package:hive/hive.dart';

class HistoryRepository {
  Box get _box => Hive.box('addresses');

  List<String> fetchHistory() {
    return _box.keys.cast<String>().toList();
  }

  void saveToHistory(String key, Map<String, dynamic> address) {
    _box.put(key, address);
  }
}

