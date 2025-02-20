library byson_switcher;

import 'package:flutter/widgets.dart';

typedef BysonSwitcherBuilder<T> = Widget Function(T value);

const Duration _defaultAnimationDuration = Duration(milliseconds: 500);

Widget _defaultTransitionBuilder(Widget child, Animation<double> animation) => FadeTransition(
  opacity: animation,
  child: child,
);

class BysonSwitcher<T> extends AnimatedSwitcher {
  BysonSwitcher({
    super.key,
    super.duration = _defaultAnimationDuration,
    super.reverseDuration = _defaultAnimationDuration,
    super.switchInCurve = Curves.easeInOut,
    super.switchOutCurve = Curves.easeInOut,
    super.layoutBuilder = AnimatedSwitcher.defaultLayoutBuilder,
    super.transitionBuilder = _defaultTransitionBuilder,
    required BysonSwitcherBuilder<T> builder,
    required T Function() keys,
  }) : super(
    child: () {

      final ValueKey<T> key = ValueKey<T>(
        keys(),
      );

      return KeyedSubtree(
        key: key,
        child: builder(
          key.value,
        ),
      );
    } (),
  );
}