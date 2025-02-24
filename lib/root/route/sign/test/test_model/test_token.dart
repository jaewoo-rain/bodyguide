class Token {
  final String accessToken;
  final String refreshToken;

  Token({required this.accessToken, required this.refreshToken});

  // 딥링크나 API 응답으로부터 Map을 통해 객체 생성
  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      accessToken: map['accessToken'] ?? '',
      refreshToken: map['refreshToken'] ?? '',
    );
  }
}
