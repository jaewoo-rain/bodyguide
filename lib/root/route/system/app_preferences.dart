import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String _firstRunKey = "IS_FIRST_RUN";

  // 앱이 처음 실행된 것인지 확인하는 메서드
  Future<bool> isFirstRun() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isFirst = prefs.getBool(_firstRunKey);
    return isFirst == null || isFirst; // 값이 없으면 처음 실행
  }

  // 앱이 처음 실행되었음을 저장
  Future<void> setFirstRunCompleted() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_firstRunKey, false);
  }
}
