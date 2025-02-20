library byson_cupertino_button;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _pressedOpacity = 0.85;

class BysonCupertinoButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color disabledColor;
  final VoidCallback? onPressed;
  final double? minSize;
  final double? pressedOpacity;
  final BorderRadius? borderRadius;
  final Border? border;
  final AlignmentGeometry alignment;

  const BysonCupertinoButton({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.color = Colors.transparent,
    this.disabledColor = Colors.transparent,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = _pressedOpacity,
    this.borderRadius = BorderRadius.zero,
    this.alignment = Alignment.center,
    required this.onPressed,
  })  : border = null,
        assert(pressedOpacity == null || (pressedOpacity >= 0.0 && pressedOpacity <= 1.0));

  const BysonCupertinoButton.solid({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.color = Colors.transparent,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = _pressedOpacity,
    this.borderRadius = BorderRadius.zero,
    this.alignment = Alignment.center,
    required this.onPressed,
  })  : border = null,
        disabledColor = color ?? Colors.transparent,
        assert(pressedOpacity == null || (pressedOpacity >= 0.0 && pressedOpacity <= 1.0));

  const BysonCupertinoButton.outlined({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.color = Colors.transparent,
    this.disabledColor = Colors.transparent,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = _pressedOpacity,
    this.borderRadius = BorderRadius.zero,
    this.border,
    this.alignment = Alignment.center,
    required this.onPressed,
  }) : assert(pressedOpacity == null || (pressedOpacity >= 0.0 && pressedOpacity <= 1.0));

  const BysonCupertinoButton.outlinedSolid({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.color = Colors.transparent,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = _pressedOpacity,
    this.borderRadius = BorderRadius.zero,
    this.border,
    this.alignment = Alignment.center,
    required this.onPressed,
  }) :  disabledColor = color ?? Colors.transparent,
        assert(pressedOpacity == null || (pressedOpacity >= 0.0 && pressedOpacity <= 1.0));

  @override
  Widget build(BuildContext context) {
    if (border != null) {
      return DecoratedBox(
        key: key,
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.transparent,
          border: border,
        ),
        child: CupertinoButton(
          key: key,
          padding: padding,
          color: color,
          borderRadius: borderRadius,
          disabledColor: disabledColor,
          minSize: minSize,
          pressedOpacity: pressedOpacity,
          alignment: alignment,
          onPressed: onPressed,
          child: child,
        ),
      );
    } else {
      return CupertinoButton(
        key: key,
        padding: padding,
        color: color,
        borderRadius: borderRadius,
        disabledColor: disabledColor,
        minSize: minSize,
        pressedOpacity: pressedOpacity,
        alignment: alignment,
        onPressed: onPressed,
        child: child,
      );
    }
  }
}
