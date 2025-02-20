import 'dart:async';
import 'dart:convert';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:jwt_decoder/jwt_decoder.dart'; // ★ 추가

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  /// OAuth2 요청할 URL (Spring Boot 서버에서 Google OAuth2 인증을 시작하는 경로)
  final String googleLoginUrl =
      'https://api.bodyguide.co.kr/oauth2/authorization/google';

  /// URI 스킴 (bodyguide://)
  final String redirectScheme = 'bodyguide';

  // AppLinks 구독 관련
  StreamSubscription<Uri>? _linkSubscription;
  late AppLinks _appLinks;

  @override
  void initState() {
    super.initState();
    _initializeAppLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  /// AppLinks 초기화
  Future<void> _initializeAppLinks() async {
    _appLinks = AppLinks();

    _linkSubscription = _appLinks.uriLinkStream.listen(
          (Uri? uri) {
        if (uri != null) {
          print('Received URI: $uri');
          _handleRedirectUri(uri);
        } else {
          print('No URI received.');
        }
      },
      onError: (error) {
        print('AppLinks Error: $error');
      },
    );
  }

  /// 딥링크로 들어온 URI 처리
  void _handleRedirectUri(Uri uri) {
    print('Received URI: $uri');
    print('Scheme: ${uri.scheme}');
    print('Host: ${uri.host}');
    print('Path: ${uri.path}');
    print('Query: ${uri.query}');

    if (uri.scheme == 'bodyguide' && uri.host == 'oauth2redirect') {
      print('===== SCHEME/HOST MATCHED! PARSING TOKEN... =====');

      final jsonPayload = uri.queryParameters['jsonPayload'];
      print('JSON Payload: $jsonPayload');

      if (jsonPayload != null) {
        try {
          final Map<String, dynamic> tokenData = jsonDecode(jsonPayload);

          final accessToken = tokenData['accessToken'];
          final refreshToken = tokenData['refreshToken'];

          print('Access Token: $accessToken');
          print('Refresh Token: $refreshToken');

          // === 여기서 jwt_decoder 이용해서 AccessToken 내용 확인하기 ===
          if (accessToken != null && accessToken is String) {
            // 1. Payload 디코드
            Map<String, dynamic> decodedAccess = JwtDecoder.decode(accessToken);

            // 2. 만료 여부
            bool isExpired = JwtDecoder.isExpired(accessToken);

            // 3. 토큰의 만료 시간 (DateTime)
            DateTime expirationDate = JwtDecoder.getExpirationDate(accessToken);

            // 4. 토큰 발급 후 지난 시간
            Duration tokenUsedTime = JwtDecoder.getTokenTime(accessToken);

            print('Decoded Access Token Payload: $decodedAccess');
            print('IsExpired: $isExpired');
            print('ExpirationDate: $expirationDate');
            print('TokenUsedTime: $tokenUsedTime');

            // (예) payload 중 sub(사용자 식별자), exp(만료 시각), iat(발급 시각) 등
            final userId = decodedAccess['sub'];
            final issuedAt = decodedAccess['iat'];
            final expiresAt = decodedAccess['exp'];

            // UI로 보여주기 (AlertDialog)
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('토큰 분석 결과'),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('AccessToken Payload: $decodedAccess'),
                      const SizedBox(height: 12),
                      Text('만료 여부: $isExpired'),
                      Text('만료 시각(DateTime): $expirationDate'),
                      Text('Token 발급 후 경과 시간: $tokenUsedTime'),
                      const SizedBox(height: 12),
                      Text('User ID(sub): $userId'),
                      Text('issuedAt(iat): $issuedAt'),
                      Text('expiresAt(exp): $expiresAt'),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('확인'),
                  ),
                ],
              ),
            );
          }

          // 추가적으로 Refresh Token도 같은 방식으로 decode 가능
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Login Successful!')),
          );
        } catch (e) {
          print('Error decoding JSON: $e');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to parse JSON Payload')),
          );
        }
      } else {
        print('No JSON Payload found.');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login Failed: Missing JSON Payload')),
        );
      }
    } else {
      print('===== SCHEME/HOST NOT MATCHED! =====');
      print('Unrecognized URI Scheme or Host.');
    }
  }

  /// 구글 로그인 URL 열기
  Future<void> _launchGoogleLogin() async {
    try {
      await launchUrl(
        Uri.parse(googleLoginUrl),
        customTabsOptions: CustomTabsOptions(
          colorSchemes: CustomTabsColorSchemes.defaults(
            toolbarColor: Theme.of(context).colorScheme.surface,
          ),
          showTitle: true,
        ),
        safariVCOptions: SafariViewControllerOptions(
          preferredBarTintColor: Theme.of(context).colorScheme.surface,
          preferredControlTintColor: Theme.of(context).colorScheme.onSurface,
        ),
      );
    } catch (e) {
      print('Could not launch Google login: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open login page.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Google Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchGoogleLogin,
          child: const Text('Login with Google'),
        ),
      ),
    );
  }
}
