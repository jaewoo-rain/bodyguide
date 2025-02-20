import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';

class ExerciseInfoWidget extends StatelessWidget {
  final String exercise;
  final Color color;
  final String type;
  final String count;
  // final dynamic converter;

  const ExerciseInfoWidget({
    Key? key,
    required this.exercise,
    required this.color,
    required this.type,
    required this.count,
    // required this.converter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BysonAspectRatio(
        designWidth: 295,
        designHeight: 32,
        builder: (converter) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  indent: converter.w(0),
                  endIndent: converter.w(0),
                  color: const Color(0xFFE5E5EC),
                  height: converter.h(1),
                  thickness: converter.h(1),
                ),
              ),
              PositionedDirectional(
                top: 0,
                start: 0,
                height: converter.h(24),
                child: Text(
                  exercise,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(16),
                    color: const Color(0xFF111111),
                    fontWeight: FontWeight.w500,
                    letterSpacing: converter.lt(fontSize: 21, percent: -2),
                  ),
                ),
              ),
              PositionedDirectional(
                top: 0,
                end: 0,
                width: converter.w(54),
                height: converter.h(24),
                child: Text(
                  '[$type]',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(16),
                    color: color,
                    fontWeight: FontWeight.w500,
                    letterSpacing: converter.lt(fontSize: 21, percent: -2),
                  ),
                ),
              ),
              PositionedDirectional(
                top: 0,
                end: converter.w(54 + 8),
                height: converter.h(24),
                child: Text(
                  count,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(16),
                    color: color,
                    fontWeight: FontWeight.w500,
                    letterSpacing: converter.lt(fontSize: 21, percent: -2),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
