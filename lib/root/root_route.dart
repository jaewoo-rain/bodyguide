import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';

class RootRoute extends StatefulWidget {
  const RootRoute({super.key});

  @override
  State<StatefulWidget> createState() => _RootRoute();
}

class _RootRoute extends State<RootRoute> {
  _RootRoute();

  @override
  void initState() {
    super.initState();
    App.instance.initializeSecondary(context: context);
    print('루트페이지');
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('로딩'),
          ),
          body: BysonAspectRatio(
            designWidth: designWidth,
            designHeight: 400,
            builder: (converter) => Stack(
              children: [
                PositionedDirectional(
                  top: 200,
                  start: converter.hcx(
                    100,
                  ),
                  width: converter.w(
                    100,
                  ),
                  height: converter.h(
                    100,
                  ),
                  child: CircularProgressIndicator(
                    strokeWidth: converter.h(
                      8.5,
                    ),
                    strokeAlign: 6,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    '로딩중.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.2,
                      fontSize: converter.h(
                        24,
                      ),
                      color: const Color(
                        0xFF5D5D5D,
                      ),
                      fontWeight: FontWeightAlias.semiBold,
                      letterSpacing: converter.lt(
                        fontSize: 24,
                        percent: -2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
