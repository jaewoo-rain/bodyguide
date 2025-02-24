import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

/// 전체 앱 구조를 위한 MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kakao Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

/// 홈 화면: 로그인 버튼이 있으며, 로그인 결과를 받아 처리
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 로그인 버튼을 중앙에 배치
    return Scaffold(
      appBar: AppBar(title: Text("Kakao Login Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const KakaoLoginWebView(),
              ),
            );

            // 전달받은 결과가 Map 형태인지 확인 후 토큰 또는 에러 처리
            if (result is Map) {
              if (result['accessToken'] != null &&
                  result['refreshToken'] != null) {
                final accessToken = result['accessToken'];
                final refreshToken = result['refreshToken'];
                print('카카오 로그인 성공: $accessToken, $refreshToken');

                // TODO: secure_storage 등에 저장하고 홈 화면으로 이동하는 등 추가 처리
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login Successful: $accessToken")),
                );
              } else if (result['error'] != null) {
                print('로그인 실패: ${result['error']}');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login Failed: ${result['error']}")),
                );
              }
            }
          },
          child: Text('카카오로 로그인 (서버처리 + WebView)'),
        ),
      ),
    );
  }
}

/// 카카오 로그인 WebView 화면
class KakaoLoginWebView extends StatefulWidget {
  const KakaoLoginWebView({Key? key}) : super(key: key);

  @override
  State<KakaoLoginWebView> createState() => _KakaoLoginWebViewState();
}

class _KakaoLoginWebViewState extends State<KakaoLoginWebView> {
  late final WebViewController _webViewController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    // WebViewController 초기화 및 설정
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          // 페이지 이동 요청 시 호출
          onNavigationRequest: (NavigationRequest request) {
            final url = request.url;

            // 최종 리다이렉트 URL을 감지합니다.
            // 예: https://api.bodyguide.co.kr/oauth2/redirect?accessToken=xxx&refreshToken=yyy
            if (url.startsWith('https://api.bodyguide.co.kr/oauth2/redirect')) {
              final uri = Uri.parse(url);
              final accessToken = uri.queryParameters['accessToken'];
              final refreshToken = uri.queryParameters['refreshToken'];

              // 토큰이 모두 있다면 결과로 전달 후 WebView 닫기
              if (accessToken != null && refreshToken != null) {
                Navigator.pop(context, {
                  'accessToken': accessToken,
                  'refreshToken': refreshToken,
                });
              } else {
                // 토큰이 없는 경우 에러 메시지 전달
                Navigator.pop(context, {'error': 'No token found'});
              }
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://api.bodyguide.co.kr/oauth2/authorization/kakao'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카카오 로그인'),
      ),
      body: Stack(
        children: [
          // WebView를 통해 카카오 로그인 페이지 로드
          WebViewWidget(controller: _webViewController),
          // 로딩 중이면 CircularProgressIndicator 표시
          if (_isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
