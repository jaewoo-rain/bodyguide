import 'dart:ui';

import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class OverlayCore {
  OverlayCore();
  late Size _screenSize;

  CancelFunc? _coverCancelFunc;

  Size get screenSize => _screenSize;
  double relativeScreenWidth(double value) =>
      _screenSize.width * (value / designWidth);
  double relativeScreenHeight(double value) =>
      _screenSize.height * (value / designHeight);

  Widget initialize(BuildContext context, Widget? child) {
    _screenSize = MediaQuery.of(context).size;

    return BotToastInit()(
      context,
      child,
    );
  }

  void cover({
    // 터치 안되게
    required bool on,
    String? message,
  }) {
    if (on) {
      _coverCancelFunc ??= BotToast.showAnimationWidget(
        toastBuilder: (_) => Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: const Center(
                child: SizedBox.square(
                  dimension: kToolbarHeightDiv3,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
        allowClick: true,
        clickClose: false,
        enableKeyboardSafeArea: false,
        backgroundColor: Colors.black.withOpacity(0.5),
        animationDuration: defaultAnimationDuration,
        backButtonBehavior: BackButtonBehavior.ignore,
        animationReverseDuration: defaultAnimationDuration,
      );
    } else {
      _coverCancelFunc?.call();
      _coverCancelFunc = null;
    }

    if (message != null) {
      toast(message: message);
    }
  }

  void toast({
    // 화면 아래 메시지 표시
    required String message,
  }) =>
      BotToast.showCustomText(
        duration: const Duration(seconds: 2),
        align: Alignment.bottomCenter,
        useSafeArea: true,
        toastBuilder: (cancelFunc) => Card(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              App.instance.overlay.relativeScreenWidth(
                24,
              ),
            ),
          ),
          color: Colors.black,
          margin: EdgeInsets.symmetric(
            vertical: App.instance.overlay.relativeScreenHeight(
              24,
            ),
            horizontal: App.instance.overlay.relativeScreenWidth(
              24,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: App.instance.overlay.relativeScreenWidth(
                12,
              ),
              horizontal: App.instance.overlay.relativeScreenWidth(
                24,
              ),
            ),
            child: Text(
              message,
              textAlign: TextAlign.start,
              style: TextStyle(
                height: (22 / 15),
                color: Colors.white,
                fontWeight: FontWeightAlias.regular,
                fontSize: App.instance.overlay.relativeScreenWidth(
                  12,
                ),
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      );
}
