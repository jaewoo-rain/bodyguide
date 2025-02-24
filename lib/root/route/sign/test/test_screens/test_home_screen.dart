import 'package:flutter/material.dart';

import '../test_model/test_token.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 로그인 후 전달된 토큰 정보를 Route arguments로 받음
    final Token token = ModalRoute.of(context)?.settings.arguments as Token;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Access Token:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(token.accessToken),
            SizedBox(height: 16),
            Text(
              'Refresh Token:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(token.refreshToken),
          ],
        ),
      ),
    );
  }
}
