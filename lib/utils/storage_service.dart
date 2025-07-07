import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  // Private constructor to prevent external instantiation
  StorageService._privateConstructor();

  // The single instance of the class
  static final StorageService _instance = StorageService._privateConstructor();

  // Factory constructor to return the same instance
  factory StorageService() {
    return _instance;
  }

  final _storageKey = const FlutterSecureStorage();

  AndroidOptions _getAndroidOption() => const AndroidOptions(
       encryptedSharedPreferences: true,
      );

  IOSOptions _getIOSOption() => const IOSOptions(
        synchronizable: true,
      );

  Future<void> writeSecureData(String key, String value) async {
    await _storageKey.write(
      key: key,
      value: value,
      aOptions: _getAndroidOption(),
      iOptions: _getIOSOption(),
    );
  }

  Future<String?> readSecureStorage(String key) async {
    var data = await _storageKey.read(
      key: key,
      aOptions: _getAndroidOption(),
      iOptions: _getIOSOption(),
    );
    return data;
  }

  Future<void> deleteSecureStorage(String key) async {
    await _storageKey.delete(
      key: key,
      aOptions: _getAndroidOption(),
      iOptions: _getIOSOption(),
    );
  }
}

// Usage
final StorageService storageService = StorageService();
