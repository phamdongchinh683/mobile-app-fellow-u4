import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
    print("Token saved: $token");
  }

  Future<String?> retrieveToken() async {
    final token = await _storage.read(key: 'token');
    print("Token retrieved: $token");
    return token;
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'token');
    print("Token deleted");
  }
}
