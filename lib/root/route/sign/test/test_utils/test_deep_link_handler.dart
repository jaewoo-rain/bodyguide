import '../test_model/test_token.dart';

class DeepLinkHandler {
  // 딥링크 포맷 예시: yourapp://callback?accessToken=xxx&refreshToken=yyy
  static Token? parseTokenFromLink(String link) {
    try {
      Uri uri = Uri.parse(link);
      String? accessToken = uri.queryParameters['accessToken'];
      String? refreshToken = uri.queryParameters['refreshToken'];

      if (accessToken != null && refreshToken != null) {
        return Token(accessToken: accessToken, refreshToken: refreshToken);
      }
      return null;
    } catch (e) {
      print('Deep link parsing error: $e');
      return null;
    }
  }
}
