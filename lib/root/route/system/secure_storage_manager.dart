import 'dart:convert';

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

  // JWT 토큰 만료 여부 확인
  Future<bool> isTokenExpired() async {
    final String? accessToken = await getAccessToken();
    if (accessToken == null) return true; // 토큰이 없으면 만료 처리

    try {
      final parts = accessToken.split('.');
      if (parts.length != 3) return true;

      final payload = json.decode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );

      final exp = payload['exp'];
      if (exp == null) return true;

      final currentTime = DateTime.now().millisecondsSinceEpoch / 1000;
      const bufferTime = 10; // 만료 10초 전부터 만료 처리

      // Unix Timestamp를 DateTime으로 변환
      DateTime currentDateTime =
          DateTime.fromMillisecondsSinceEpoch((currentTime * 1000).toInt());
      DateTime expDateTime = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      DateTime bufferDateTime =
          DateTime.fromMillisecondsSinceEpoch((exp - bufferTime) * 1000);

      print('payload : $payload'); // exp : 1740652082
      print('현재 시간 (Unix): $currentTime');
      print('현재 시간 (DateTime): $currentDateTime');
      print('토큰 만료 시간 (Unix): $exp');
      print('토큰 만료 시간 (DateTime): $expDateTime');
      print('버퍼 포함 만료 시간 (DateTime): $bufferDateTime');
      print('결과: ${currentTime > (exp - bufferTime)}');

      return currentTime > (exp - bufferTime);
    } catch (e) {
      print('JWT 파싱 오류: $e');
      return true;
    }
  }
}
