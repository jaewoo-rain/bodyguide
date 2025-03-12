import 'package:app/app/app.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/model/system/custom_route.dart';
import 'package:app/root/root_route.dart';
import 'package:app/root/route/home/home_route.dart';
import 'package:app/root/route/home/page/my/route/app_setting/app_setting_route.dart';
import 'package:app/root/route/home/page/my/route/my_edit/my_edit_bloc.dart';
import 'package:app/root/route/home/page/my/route/my_edit/my_edit_route.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/my_weight/my_weight_route.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_choice_route.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_input/nutrient_analytics_input_route.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_report/nutrient_analytics_report_route.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_record_history/nutrient_record_history_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_choice_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_input/practice_analytics_input_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/recommendation/recommendation_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/three_practice/three_practice.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_route.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_edit/practice_edit_route.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_history/practice_record_history_route.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_record/practice_record_route.dart';
import 'package:app/root/route/home/route/calendar/calendar_route.dart';
import 'package:app/root/route/home/route/notification/notification_route.dart';
import 'package:app/root/route/onboard/onboard_route.dart';
import 'package:app/root/route/sign/page/login/login_page.dart';
import 'package:app/root/route/sign/sign_route.dart';
import 'package:app/root/route/system/error/error_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

class _NavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final String path = '/${route.settings.name}';
    if ((path == Routes.sign.path) ||
        (path == Routes.onboard.path) ||
        (path == Routes.home.path)) {
      App.instance.overlay.cover(on: false);
      FlutterNativeSplash.remove();
    }
  }
}

class Routes {
  static const CustomRoute root = CustomRoute(
    parent: null,
    endpoint: '',
  );

  static const CustomRoute sign = CustomRoute(
    parent: null,
    endpoint: 'sign',
  );

  static const CustomRoute onboard = CustomRoute(
    parent: null,
    endpoint: 'onboard',
  );

  static const CustomRoute home = CustomRoute(
    parent: null,
    endpoint: 'home',
  );

  static const CustomRoute login = CustomRoute(
    parent: null,
    endpoint: 'login',
  );

  static const CustomRoute notification = CustomRoute(
    parent: home,
    endpoint: 'notification',
  );
  static const CustomRoute calendar = CustomRoute(
    parent: home,
    endpoint: 'calendar',
  );
  static const CustomRoute practiceRecord = CustomRoute(
    parent: home,
    endpoint: 'practice_record',
  );
  static const CustomRoute practiceRecordHistory = CustomRoute(
    parent: home,
    endpoint: 'practice_record_history',
  );
  static const CustomRoute practiceDo = CustomRoute(
    parent: home,
    endpoint: 'practice_do',
  );
  static const CustomRoute practiceEdit = CustomRoute(
    parent: home,
    endpoint: 'practice_edit',
  );
  static const CustomRoute threePractice = CustomRoute(
    parent: home,
    endpoint: 'three_practice',
  );
  static const CustomRoute recommendation = CustomRoute(
    parent: home,
    endpoint: 'recommendation',
  );
  static const CustomRoute practiceAnalyticsChoice = CustomRoute(
    parent: home,
    endpoint: 'practice_analytics_choice',
  );
  static const CustomRoute practiceAnalyticsInput = CustomRoute(
    parent: home,
    endpoint: 'practice_analytics_input',
  );
  static const CustomRoute practiceAnalyticsReport = CustomRoute(
    parent: home,
    endpoint: 'practice_analytics_report',
  );

  static const CustomRoute appSetting = CustomRoute(
    parent: home,
    endpoint: 'app_setting',
  );
  static const CustomRoute myEdit = CustomRoute(
    parent: home,
    endpoint: 'my_edit',
  );
  // static const CustomRoute myWeight = CustomRoute(
  //   parent: home,
  //   endpoint: 'my_weight',
  // );

  static const CustomRoute nutrientAnalyticsChoice = CustomRoute(
    parent: home,
    endpoint: 'nutrient_analytics_choice',
  );
  static const CustomRoute nutrientAnalyticsInput = CustomRoute(
    parent: home,
    endpoint: 'nutrient_analytics_input',
  );
  static const CustomRoute nutrientAnalyticsReport = CustomRoute(
    parent: home,
    endpoint: 'nutrient_analytics_report',
  );

  static const CustomRoute nutrientRecordHistory = CustomRoute(
    parent: home,
    endpoint: 'nutrient_record_history',
  );
}

class NavigatorCore {
  NavigatorCore() : key = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> key;

  late GoRouter _router;

  GoRouter get router => _router;

  void pop<T extends Object?>([T? result]) => key.currentContext?.pop(result);
  void go(String location, {Object? extra}) =>
      key.currentContext?.go(location, extra: extra);
  Future<T?> push<T extends Object?>(String location, {Object? extra}) async =>
      await key.currentContext?.push<T?>(location, extra: extra);

  Future<void> initialize() async {
    _router = GoRouter(
      initialLocation: '/',
      navigatorKey: key,
      observers: <NavigatorObserver>[
        _NavigatorObserver(),
        BotToastNavigatorObserver(),
      ],
      redirect: (context, state) {
        if (state.uri.path == '/') {
          print('리다이렉트 / ');
          return null;
        } else {
          if (App.instance.secondaryInitialized == null) {
            print('리다이렉트 null');
            return '/';
          } else {
            return null;
          }
        }
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => CupertinoPage<void>(
            name: 'root',
            key: state.pageKey,
            child: RootRoute(
              key: state.pageKey,
            ),
          ),
        ),
        GoRoute(
          path: '/sign',
          pageBuilder: (context, state) => CupertinoPage<void>(
            name: 'sign',
            key: state.pageKey,
            child: SignRoute(
              // child: RootRoute(
              key: state.pageKey,
            ),
          ),
        ),
        GoRoute(
          path: '/onboard',
          pageBuilder: (context, state) => CupertinoPage<void>(
            name: 'onboard',
            key: state.pageKey,
            child: OnboardRoute(
              key: state.pageKey,
            ),
          ),
        ),
        GoRoute(
          path: '/login',
          pageBuilder: (context, state) => CupertinoPage<void>(
            name: 'login',
            key: state.pageKey,
            child: LoginPage(
              key: state.pageKey,
            ),
          ),
        ),
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => CupertinoPage<void>(
            name: 'home',
            key: state.pageKey,
            child: HomeRoute(
              key: state.pageKey,
            ),
          ),
          routes: [
            GoRoute(
              path: 'notification',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'notification',
                key: state.pageKey,
                child: NotificationRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'calendar',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'calendar',
                key: state.pageKey,
                child: CalendarRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_record',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'practice_record',
                key: state.pageKey,
                child: PracticeRecordRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_record_history',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'practice_record_history',
                key: state.pageKey,
                child: PracticeRecordHistoryRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_do',
              pageBuilder: (context, state) {
                try {
                  return CupertinoPage<void>(
                    name: 'practice_do',
                    key: state.pageKey,
                    child: PracticeDoRoute(
                      key: state.pageKey,
                      practices: state.extra as List<Practice>,
                    ),
                  );
                } catch (exception) {
                  return CupertinoPage<void>(
                    name: 'practice_do',
                    key: state.pageKey,
                    child: ErrorRoute(
                      key: state.pageKey,
                    ),
                  );
                }
              },
            ),
            GoRoute(
              path: 'practice_edit',
              pageBuilder: (context, state) {
                try {
                  return CupertinoPage<void>(
                    name: 'practice_edit',
                    key: state.pageKey,
                    child: PracticeEditRoute(
                      key: state.pageKey,
                      practices: state.extra as List<PracticeRecord>,
                    ),
                  );
                } catch (exception) {
                  return CupertinoPage<void>(
                    name: 'practice_edit',
                    key: state.pageKey,
                    child: ErrorRoute(
                      key: state.pageKey,
                    ),
                  );
                }
              },
            ),
            GoRoute(
              path: 'three_practice',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'three_practice',
                key: state.pageKey,
                child: ThreePracticeRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'recommendation',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'recommendation',
                key: state.pageKey,
                child: RecommendationRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_analytics_input',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'practice_analytics_input',
                key: state.pageKey,
                child: PracticeAnalyticsInputRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_analytics_report',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'practice_analytics_report',
                key: state.pageKey,
                child: PracticeAnalyticsReportRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'practice_analytics_choice',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'practice_analytics_choice',
                key: state.pageKey,
                child: PracticeAnalyticsChoiceRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'app_setting',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'app_setting',
                key: state.pageKey,
                child: AppSettingRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'my_edit',
              pageBuilder: (context, state) {
                // extra 데이터를 받아옵니다.
                final extraData = state.extra as Map<String, dynamic>? ?? {};
                final initialNickName =
                    extraData['initialNickName'] as String? ?? '';
                final initialIntroText =
                    extraData['initialIntroText'] as String? ?? '';
                // final initialProfileImg =
                //     extraData['initialProfileImg'] as String? ?? '';

                return CupertinoPage<void>(
                  name: 'my_edit',
                  key: state.pageKey,
                  child: BlocProvider(
                    create: (_) => MyEditBloc(
                      initialNickName: initialNickName,
                      initialIntroText: initialIntroText,
                    ),
                    child: MyEditRoute(key: state.pageKey),
                  ),
                );
              },
            ),
            // GoRoute(
            //   path: 'my_weight',
            //   pageBuilder: (context, state) => CupertinoPage<void>(
            //     name: 'my_weight',
            //     key: state.pageKey,
            //     child: MyWeightRoute(
            //       key: state.pageKey,
            //     ),
            //   ),
            // ),
            GoRoute(
              path: 'nutrient_analytics_input',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'nutrient_analytics_input',
                key: state.pageKey,
                child: NutrientAnalyticsInputRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'nutrient_analytics_report',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'nutrient_analytics_report',
                key: state.pageKey,
                child: NutrientAnalyticsReportRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'nutrient_analytics_choice',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'nutrient_analytics_choice',
                key: state.pageKey,
                child: NutrientAnalyticsChoiceRoute(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: 'nutrient_record_history',
              pageBuilder: (context, state) => CupertinoPage<void>(
                name: 'nutrient_record_history',
                key: state.pageKey,
                child: NutrientRecordHistoryRoute(
                  key: state.pageKey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
