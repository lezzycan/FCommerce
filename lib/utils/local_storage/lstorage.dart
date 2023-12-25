import 'package:get_storage/get_storage.dart';

class LStorage {
  static final LStorage _instance = LStorage._internal();

  factory LStorage() {
    return _instance;
  }

  LStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to save data
  T? readData<T>(String key) {
    return _storage.read(key);
  }

  // Generic method to remove data

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generic method to remove data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
