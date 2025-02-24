import 'dart:async';
import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/system/secure_storage_manager.dart';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

/// 카카오 OAuth 및 딥링크 처리를 담당하는 서비스
class KakaoLoginService {
  /// Spring Boot 서버의 카카오 OAuth 시작점
  static const _kakaoLoginUrl =
      'https://api.bodyguide.co.kr/oauth2/authorization/kako';

  /// AppLinks 구독 스트림
  StreamSubscription<Uri>? _linkSubscription;

  /// Future 완료 통신을 위한 Completer
  /// - 성공: `Login Successful!`
  /// - 실패/에러: 그 외 에러 메시지 또는 null
  final _loginCompleter = Completer<String?>();

  /// 카카오 로그인을 시작 (Custom Tabs 열기 + 딥링크 수신)
  ///
  /// 모든 로직이 완료되면 `Future<String?>`로 결과를 반환:
  ///   - `"Login Successful!"` (성공)
  ///   - `null` 또는 에러 메시지 (예: `"Failed to parse JSON Payload"`)
  Future<String?> startKakaoLogin(BuildContext context) async {
    // 1) AppLinks 초기화 및 딥링크 스트림 구독
    final appLinks = AppLinks();
    _linkSubscription = appLinks.uriLinkStream.listen(
      (Uri? uri) => _handleRedirectUri(uri, context),
      onError: (error) {
        debugPrint('AppLinks Error (Kakao): $error');
        if (!_loginCompleter.isCompleted) {
          _loginCompleter.completeError('AppLinks Error (Kakao): $error');
        }
      },
    );

    // 2) Custom Tabs (크롬 또는 사파리 뷰) 열기
    try {
      await launchUrl(
        Uri.parse(_kakaoLoginUrl),
        customTabsOptions: CustomTabsOptions(
          showTitle: true,
        ),
        safariVCOptions: const SafariViewControllerOptions(
          preferredBarTintColor: Colors.white,
          preferredControlTintColor: Colors.black,
        ),
      );
    } catch (e) {
      // 브라우저 열기 실패
      debugPrint('Could not launch Kakao login: $e');
      _cancelSubscription(); // 스트림 구독 해제
      if (!_loginCompleter.isCompleted) {
        _loginCompleter.completeError('Could not launch Kakao login: $e');
      }
    }

    // 3) 결과값 반환 (Completer 완료 대기)
    return _loginCompleter.future.whenComplete(() {
      _cancelSubscription(); // 완료되면 구독 해제
    });
  }

  /// 딥링크가 들어왔을 때 처리 (예: bodyguide://oauth2redirect?jsonPayload=...)
  Future<void> _handleRedirectUri(Uri? uri, BuildContext context) async {
    if (uri == null) {
      if (!_loginCompleter.isCompleted) {
        _loginCompleter.complete('No URI received.');
      }
      return;
    }

    debugPrint('Received URI (Kakao): $uri');
    if (uri.scheme == 'bodyguide' && uri.host == 'oauth2redirect') {
      final jsonPayload = uri.queryParameters['jsonPayload'];
      if (jsonPayload != null) {
        try {
          // 1. Base64 디코딩
          final decodedString = utf8.decode(base64.decode(jsonPayload));
          debugPrint('Decoded String (Kakao): $decodedString');
          debugPrint('---------------------------');

          // 2. JSON 디코딩
          final Map<String, dynamic> tokenData = jsonDecode(decodedString);

          final accessToken = tokenData['accessToken'];
          final refreshToken = tokenData['refreshToken'];

          debugPrint('Access Token (Kakao): $accessToken');
          debugPrint('Refresh Token (Kakao): $refreshToken');

          // === JWT 디코딩 예시 ===
          if (accessToken is String) {
            final decoded = JwtDecoder.decode(accessToken);
            bool isExpired = JwtDecoder.isExpired(accessToken);
            DateTime expirationDate = JwtDecoder.getExpirationDate(accessToken);
            Duration tokenUsedTime = JwtDecoder.getTokenTime(accessToken);

            debugPrint('Decoded JWT (Kakao): $decoded');
            debugPrint('Role: ${decoded['role']}');
            debugPrint('IsExpired: $isExpired');
            debugPrint('ExpirationDate: $expirationDate');
            debugPrint('Token Used Time: $tokenUsedTime');

            // flutter_secure_storage에 토큰 저장
            final storageManager = SecureStorageManager();
            await storageManager.saveAccessToken(accessToken);
            await storageManager.saveRefreshToken(refreshToken);

            // 로그인 성공 처리 및 화면 이동
            if (!_loginCompleter.isCompleted) {
              if (decoded['role'] == 'ROLE_GUEST') {
                App.instance.navigator.go(Routes.onboard.path);
              } else if (decoded['role'] == 'ROLE_USER') {
                _loginCompleter.complete('Login Successful!');
                App.instance.navigator.go(Routes.home.path);
              } else {
                App.instance.navigator.go(Routes.sign.path);
              }
            }
          } else {
            if (!_loginCompleter.isCompleted) {
              _loginCompleter.complete('Invalid accessToken');
            }
          }
        } catch (e) {
          debugPrint('Error decoding JSON (Kakao): $e');
          if (!_loginCompleter.isCompleted) {
            _loginCompleter.complete('Failed to parse JSON Payload');
          }
        }
      } else {
        if (!_loginCompleter.isCompleted) {
          _loginCompleter.complete('Login Failed: Missing JSON Payload');
        }
      }
    } else {
      if (!_loginCompleter.isCompleted) {
        _loginCompleter.complete('Unrecognized URI Scheme or Host.');
      }
    }
  }

  /// 내부적으로 사용: 스트림 구독 해제
  void _cancelSubscription() {
    _linkSubscription?.cancel();
    _linkSubscription = null;
  }
}
