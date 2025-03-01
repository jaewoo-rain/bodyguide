import 'dart:convert';
import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/system/secure_storage_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenManager {
  // Singleton 패턴 적용
  static final TokenManager _instance = TokenManager._internal();

  factory TokenManager() {
    return _instance;
  }

  TokenManager._internal();

  final storageManager = SecureStorageManager();

  // API URL
  final String _refreshUrl = 'https://api.bodyguide.co.kr/auth/refresh';

  // // Access Token 만료 여부 확인
  // Future<bool> isAccessTokenExpired(String? accessToken) async {
  //   if (accessToken == null) return true;
  //
  //   try {
  //     // JWT 파싱
  //     print('Access Token 만료여부 확인');
  //     final parts = accessToken.split('.');
  //     if (parts.length != 3) return true;
  //
  //     final payload = json.decode(
  //       utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
  //     );
  //
  //     final exp = payload['exp'];
  //     if (exp == null) return true;
  //
  //     final currentTime = DateTime.now().millisecondsSinceEpoch / 1000;
  //     const bufferTime = 10; // 만료 시간을 10초 더 여유 있게 설정
  //     return currentTime > (exp - bufferTime); // 10초 전에 만료된 것으로 간주
  //   } catch (e) {
  //     print('JWT 파싱 오류: $e');
  //     return true;
  //   }
  // }

  // Access Token 갱신
  Future<bool> refreshAccessToken() async {
    final refreshToken = await storageManager.getRefreshToken();
    if (refreshToken == null) {
      print('Refresh Token이 없습니다. 로그인이 필요합니다.');
      App.instance.navigator.go(Routes.sign.path);
      return false;
    }
    if (await storageManager.isTokenExpired("refresh")) {
      print("refreshToken 만료");
      App.instance.navigator.go(Routes.sign.path);
      return false;
    }

    try {
      print('토큰갱신');
      final response = await Dio().post(
        _refreshUrl,
        data: {'refreshToken': refreshToken},
      );

      final newAccessToken = response.data['accessToken'];
      final newRefreshToken = response.data['refreshToken'];

      await storageManager.saveAccessToken(newAccessToken);
      await storageManager.saveRefreshToken(newRefreshToken);

      // 3. 토큰의 만료 시간 (DateTime)
      DateTime expirationDate = JwtDecoder.getExpirationDate(newAccessToken);
      debugPrint('ExpirationDate: $expirationDate');

      print('Access Token 갱신 성공 : $newAccessToken');
      return true;
    } catch (e) {
      print('Access Token 갱신 실패: $e');
      return false;
    }
  }

  // API 호출 전 Access Token 체크 및 갱신
  Future<String?> getValidAccessToken() async {
    if (await storageManager.isTokenExpired("access")) {
      print('엑세스 토큰 만료되어 갱신함');
      final success = await refreshAccessToken();
      if (!success) return null;
      return await storageManager.getAccessToken();
    }
    // 만료되지 않아서 그대로 리턴
    return await storageManager.getAccessToken();
  }
}
