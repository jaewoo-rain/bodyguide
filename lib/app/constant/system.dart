import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// iPhone 13 mini
const double designWidth = 375;
const double designHeight = 812;

const double defaultBottomPadding = kToolbarHeightDiv3;

const int daySeconds = 86400;

const kToolbarHeightDiv16 = kToolbarHeight / 16;
const kToolbarHeightDiv12 = kToolbarHeight / 12;
const kToolbarHeightDiv10 = kToolbarHeight / 10;
const kToolbarHeightDiv8 = kToolbarHeight / 8;
const kToolbarHeightDiv7 = kToolbarHeight / 7;
const kToolbarHeightDiv6 = kToolbarHeight / 6;
const kToolbarHeightDiv5 = kToolbarHeight / 5;
const kToolbarHeightDiv4 = kToolbarHeight / 4;
const kToolbarHeightDiv3 = kToolbarHeight / 3;
const kToolbarHeightDiv2 = kToolbarHeight / 2;
const kToolbarHeightMul1Dot5 = kToolbarHeight * 1.5;
const kToolbarHeightMul2 = kToolbarHeight * 2;

const Curve defaultAnimationCurve = Curves.easeInOut;
const Duration defaultAnimationDuration = Duration(milliseconds: 500);

const SystemUiOverlayStyle _systemUiOverlayStyleDark = SystemUiOverlayStyle(
  statusBarColor: Color(0x00FFFFFF),
  statusBarBrightness: Brightness.dark,
  systemStatusBarContrastEnforced: false,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.black,
  systemNavigationBarContrastEnforced: false,
  systemNavigationBarDividerColor: Colors.black,
  systemNavigationBarIconBrightness: Brightness.light,
);
const SystemUiOverlayStyle _systemUiOverlayStyleLight = SystemUiOverlayStyle(
  statusBarColor: Color(0x00FFFFFF),
  statusBarBrightness: Brightness.light,
  systemStatusBarContrastEnforced: false,
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarColor: Colors.black,
  systemNavigationBarContrastEnforced: false,
  systemNavigationBarDividerColor: Colors.black,
  systemNavigationBarIconBrightness: Brightness.light,
);

final SystemUiOverlayStyle systemUiOverlayStyleDark =
    Platform.isAndroid ? _systemUiOverlayStyleDark : _systemUiOverlayStyleLight;
final SystemUiOverlayStyle systemUiOverlayStyleLight =
    Platform.isAndroid ? _systemUiOverlayStyleLight : _systemUiOverlayStyleDark;

class FontWeightAlias {
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;

  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}
