import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/system/secure_storage_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:dio/dio.dart';

class ApiRequestManager {
  final Dio dio;
  final TokenManager tokenManager;

  ApiRequestManager({
    required this.dio,
    required this.tokenManager,
  });

  /// API post 요청 함수
  Future<void> postRequest({
    required String url, // API URL
    required Map<String, dynamic> body, // 요청 바디
    required String path, // API 엔드포인트
    required String successRoute, // 성공 시 이동할 경로
    required String failRoute, // 실패 시 이동할 경로
  }) async {
    // 토큰 검사
    final validAccessToken = await tokenManager.getValidAccessToken();

    if (validAccessToken != null) {
      print('유효한 Access Token: $validAccessToken');

      try {
        final response = await dio.post(
          'https://$url/$path',
          options: Options(headers: {
            'authorization': 'Bearer $validAccessToken',
            'Content-Type': 'application/json',
          }),
          data: body,
        );

        // 통신 성공 처리
        print('응답 데이터: ${response.data}');

        // 성공 시 경로로 이동
        if (successRoute.isNotEmpty) {
          App.instance.navigator.go(successRoute);
        }
      } catch (e) {
        if (e is DioError) {
          print('통신 오류: ${e.response?.statusCode}');
          print('오류 메시지: ${e.message}');
        } else {
          print('알 수 없는 오류: $e');
        }

        // 실패 시 경로로 이동
        App.instance.navigator.go(failRoute);
      }
    } else {
      print('로그인이 필요합니다.');

      // 로그인이 필요한 경우 처리
      App.instance.navigator.go(Routes.sign.path);
    }
  }

  Future<Map<String, dynamic>> getRequest({
    required String url, // API URL
    required String path, // API 엔드포인트
    required Map<String, dynamic> params, // 쿼리 파라미터
    // required String successRoute, // 성공 시 이동할 경로
    required String failRoute, // 실패 시 이동할 경로
  }) async {
    // 토큰 검사
    final validAccessToken = await tokenManager.getValidAccessToken();

    if (validAccessToken != null) {
      print('유효한 Access Token: $validAccessToken');

      try {
        // GET 요청 수행
        print('getRequest 시도하기');
        final response = await dio.get(
          'https://$url/$path',
          options: Options(headers: {
            'authorization': 'Bearer $validAccessToken',
            'Content-Type': 'application/json',
          }),
          queryParameters: params, // GET 요청의 쿼리 파라미터
        );

        // 응답 처리
        print('응답 데이터: ${response.data}');

        // 성공 시 경로로 이동
        // App.instance.navigator.go(successRoute);

        // 응답 데이터 반환
        return response.data as Map<String, dynamic>;
      } catch (e) {
        if (e is DioError) {
          print('통신 오류: ${e.response?.statusCode}');
          print('오류 메시지: ${e.message}');
        } else {
          print('알 수 없는 오류: $e');
        }

        // 실패 시 경로로 이동
        App.instance.navigator.go(failRoute);

        // 빈 Map 반환
        return {'error': 'API 요청 실패', 'message': e.toString()};
      }
    } else {
      print('로그인이 필요합니다.');

      // 로그인이 필요한 경우 처리
      App.instance.navigator.go(Routes.sign.path);

      // 빈 Map 반환
      return {'error': '로그인이 필요합니다.'};
    }
  }

  Future<Map<String, dynamic>> multiGetRequest({
    required String url, // API URL
    required List<String> paths, // API 엔드포인트 리스트
    required List<Map<String, dynamic>> params, // 각 API 요청의 쿼리 파라미터 리스트
    // required String successRoute, // 성공 시 이동할 경로 (원한다면 추가)
    required String failRoute, // 실패 시 이동할 경로
  }) async {
    // 토큰 검사
    final validAccessToken = await tokenManager.getValidAccessToken();

    if (validAccessToken != null) {
      print('유효한 Access Token: $validAccessToken');

      try {
        print('multiGetRequest 시도하기');

        // 각 API 호출을 위한 Future들을 리스트에 추가
        final futures = <Future>[];
        for (int i = 0; i < paths.length; i++) {
          print('${paths[i]} 호출시도');

          futures.add(
            dio.get(
              'https://$url/${paths[i]}',
              options: Options(headers: {
                'authorization': 'Bearer $validAccessToken',
                'Content-Type': 'application/json',
              }),
              queryParameters: params[i],
            ),
          );
          print('${paths[i]} 호출성공');
        }

        // 모든 API 호출을 동시에 실행
        final responses = await Future.wait(futures);

        // 각 응답 데이터를 paths를 key로 하는 Map에 저장
        final results = <String, dynamic>{};
        for (int i = 0; i < responses.length; i++) {
          results[paths[i]] = responses[i].data;
          print('응답 for ${paths[i]}: ${responses[i].data}');
        }

        // 성공 시 원하는 동작(예: Navigator 이동)이 있다면 여기서 처리 가능
        // App.instance.navigator.go(successRoute);

        return results;
      } catch (e) {
        if (e is DioError) {
          print('통신 오류: ${e.response?.statusCode}');
          print('오류 메시지: ${e.message}');
        } else {
          print('알 수 없는 오류: $e');
        }
        // 실패 시 경로로 이동
        App.instance.navigator.go(failRoute);

        return {'error': 'API 요청 실패', 'message': e.toString()};
      }
    } else {
      print('로그인이 필요합니다.');
      App.instance.navigator.go(Routes.sign.path);
      return {'error': '로그인이 필요합니다.'};
    }
  }

  Future<Map<String, dynamic>> deleteRequest({
    required String url,
    required String path,
    Map<String, dynamic>? params,
    required String failRoute,
  }) async {
    final validAccessToken = await tokenManager.getValidAccessToken();

    if (validAccessToken != null) {
      print('✅ 유효한 Access Token: $validAccessToken');

      try {
        print('📡 deleteRequest 시도 중...');
        final response = await dio.delete(
          'https://$url/$path',
          options: Options(headers: {
            'Authorization': 'Bearer $validAccessToken',
            'Content-Type': 'application/json',
          }),
          queryParameters: params,
        );

        // 🔹 응답이 String이면 JSON 변환 시도
        dynamic responseData = response.data;

        if (responseData is String) {
          try {
            responseData = jsonDecode(responseData);
          } catch (e) {
            responseData = {'message': responseData};
          }
        }

        print('✅ 응답 데이터: $responseData');
        return responseData as Map<String, dynamic>;
      } on DioException catch (e) {
        print('❌ API 요청 실패: ${e.message}');

        if (e.response != null) {
          print('📡 서버 응답 코드: ${e.response?.statusCode}');
          print('📡 서버 응답 데이터: ${e.response?.data}');

          dynamic errorData = e.response?.data;
          if (errorData is String) {
            try {
              errorData = jsonDecode(errorData);
            } catch (e) {
              errorData = {'message': errorData};
            }
          }

          return {'error': true, 'message': errorData};
        }

        return {'error': true, 'message': e.toString()};
      }
    } else {
      print('🔒 로그인이 필요합니다.');
      App.instance.navigator.go(Routes.sign.path);
      return {'error': true, 'message': '로그인이 필요합니다.'};
    }
  }
}
