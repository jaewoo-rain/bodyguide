library byson_hero;

import 'package:flutter/material.dart';

typedef TagBuilder = String? Function();

class BysonHero extends StatelessWidget {

  final Widget child;
  final TagBuilder tagBuilder;

  final CreateRectTween? createRectTween;
  final HeroFlightShuttleBuilder? flightShuttleBuilder;
  final HeroPlaceholderBuilder? placeholderBuilder;
  final bool transitionOnUserGestures;

  const BysonHero({
    super.key,
    required this.tagBuilder,
    this.createRectTween,
    this.flightShuttleBuilder,
    this.placeholderBuilder,
    this.transitionOnUserGestures = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final String? tag = tagBuilder.call();

    if (tag != null) {

      return Hero(
        key: key,
        tag: tag,
        createRectTween: createRectTween,
        flightShuttleBuilder: flightShuttleBuilder,
        placeholderBuilder: placeholderBuilder,
        transitionOnUserGestures: transitionOnUserGestures,
        child: child,
      );
    } else {

      return child;
    }
  }
}
