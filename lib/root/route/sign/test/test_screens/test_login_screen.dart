import 'package:flutter/material.dart';

import '../test_model/test_token.dart';
import '../test_servises/test_auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();
  bool _isLoading = false;

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    try {
      Token token = await _authService.loginWithKakao();
      // 로그인 성공 후 홈 화면으로 이동 (토큰 정보를 함께 전달)
      Navigator.pushReplacementNamed(context, '/home', arguments: token);
    } catch (e) {
      print("로그인 에러: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('로그인 실패: $e')),
      );
      print("로그인 실패: $e");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kakao Login'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: _login,
                child: Text('Login with Kakao'),
              ),
      ),
    );
  }
}
