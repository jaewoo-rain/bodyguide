import 'package:app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Launcher extends StatelessWidget {
  const Launcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: App.instance.navigator.router,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale(
          'ko',
        ),
        supportedLocales: const [
          Locale(
            'ko',
            'KR',
          ),
        ],
        theme: ThemeData(
          // colorScheme: Theme.of(context).colorScheme.copyWith(),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Pretendard',
        ),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: App.instance.overlay.initialize(
            context,
            child,
          ),
        ),
      );
}
