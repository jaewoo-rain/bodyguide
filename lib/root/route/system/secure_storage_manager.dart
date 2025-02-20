import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  // Singleton 패턴 적용
  static final SecureStorageManager _instance =
      SecureStorageManager._internal();

  factory SecureStorageManager() {
    return _instance;
  }

  SecureStorageManager._internal();

  // FlutterSecureStorage 인스턴스
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  // 저장 키 정의
  static const String _accessTokenKey = 'ACCESS_TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';

  // AccessToken 저장
  Future<void> saveAccessToken(String accessToken) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
  }

  // RefreshToken 저장
  Future<void> saveRefreshToken(String refreshToken) async {
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
  }

  // AccessToken 불러오기
  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessTokenKey);
  }

  // RefreshToken 불러오기
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshTokenKey);
  }

  // AccessToken 삭제
  Future<void> deleteAccessToken() async {
    await _storage.delete(key: _accessTokenKey);
  }

  // RefreshToken 삭제
  Future<void> deleteRefreshToken() async {
    await _storage.delete(key: _refreshTokenKey);
  }

  // 모든 데이터 삭제
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
