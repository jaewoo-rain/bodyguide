import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';

class ThreeExercise extends StatelessWidget {
  final String name;
  final String bodyPart;
  final double weight;
  final int rep;

  const ThreeExercise(
      {super.key,
      required this.name,
      required this.bodyPart,
      required this.weight,
      required this.rep});

  @override
  Widget build(BuildContext context) {
    return BysonAspectRatio(
        designWidth: 295,
        designHeight: 111,
        builder: (converter) => Stack(children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(
                        0xFFE5E5EC,
                      ),
                      width: App.instance.overlay.relativeScreenHeight(
                        1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      App.instance.overlay.relativeScreenHeight(
                        12,
                      ),
                    ),
                  ),
                  child: BysonAspectRatio(
                      designWidth: 295,
                      designHeight: 111,
                      builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                top: converter.h(16),
                                start: converter.w(
                                  16,
                                ),
                                width: converter.w(
                                  60,
                                ),
                                height: converter.h(
                                  79,
                                ),
                                child: Container(
                                  color: const Color(
                                    0xFFD9D9D9,
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                top: converter.h(16),
                                start: converter.w(92),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(
                                              0xFFF1F5FD,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              App.instance.overlay
                                                  .relativeScreenHeight(
                                                4,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: App.instance.overlay
                                                  .relativeScreenHeight(
                                                4,
                                              ),
                                              horizontal: App.instance.overlay
                                                  .relativeScreenHeight(
                                                6,
                                              ),
                                            ),
                                            child: Text(
                                              '$bodyPart운동',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                // height: 1.5,
                                                fontSize: App.instance.overlay
                                                    .relativeScreenHeight(
                                                  12,
                                                ),
                                                color: const Color(
                                                  0xFF3D5DD3,
                                                ),
                                                fontWeight:
                                                    FontWeightAlias.regular,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.transparent,
                                          width: converter.w(
                                            4,
                                          ),
                                          thickness: 0,
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(
                                              0xFFE5E5EC,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              App.instance.overlay
                                                  .relativeScreenHeight(
                                                4,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: App.instance.overlay
                                                  .relativeScreenHeight(
                                                4,
                                              ),
                                              horizontal: App.instance.overlay
                                                  .relativeScreenHeight(
                                                6,
                                              ),
                                            ),
                                            child: Text(
                                              '덤벨',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                // height: 1.5,
                                                fontSize: App.instance.overlay
                                                    .relativeScreenHeight(
                                                  12,
                                                ),
                                                color: const Color(
                                                  0xFF454545,
                                                ),
                                                fontWeight:
                                                    FontWeightAlias.regular,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                      height: converter.h(
                                        4,
                                      ),
                                      thickness: 0,
                                    ),
                                    Text(
                                      name,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        // height: 1.5,
                                        fontSize: App.instance.overlay
                                            .relativeScreenHeight(
                                          18,
                                        ),
                                        color: const Color(
                                          0xFF454545,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                      height: converter.h(
                                        4,
                                      ),
                                      thickness: 0,
                                    ),
                                    Text(
                                      '이전 최고 수행 무게 ${weight}kg ${rep}회',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        // height: 1.5,
                                        fontSize: App.instance.overlay
                                            .relativeScreenHeight(
                                          12,
                                        ),
                                        color: const Color(
                                          0xFF454545,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: -1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )))
            ]));
  }
}
