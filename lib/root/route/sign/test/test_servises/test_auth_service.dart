import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

import '../test_model/test_token.dart';

class AuthService {
  // Spring 서버에 정의된 카카오 로그인 엔드포인트
  final String kakaoAuthUrl =
      'https://api.bodyguide.co.kr/oauth2/authorization/kakao';
  final String callbackScheme = 'bodyguide';
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  /// 카카오 로그인 플로우 시작
  Future<Token> loginWithKakao() async {
    // FlutterWebAuth를 이용해 외부 브라우저에서 로그인 플로우 실행
    final result = await FlutterWebAuth.authenticate(
      url: kakaoAuthUrl,
      callbackUrlScheme: callbackScheme,
    );

    final uri = Uri.parse(result);
    final accessToken = uri.queryParameters['accessToken'];
    final refreshToken = uri.queryParameters['refreshToken'];

    if (accessToken == null || refreshToken == null) {
      throw Exception('토큰 정보를 가져올 수 없습니다.');
    }

    // (옵션) 토큰을 안전하게 저장
    await _secureStorage.write(key: 'accessToken', value: accessToken);
    await _secureStorage.write(key: 'refreshToken', value: refreshToken);

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }
}
