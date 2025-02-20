import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    required this.read,
    required this.title,
    required this.subTitle,
    required this.createdAt,
    super.key,
  });

  final bool read;
  final String title;
  final String subTitle;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: defaultAnimationDuration,
        curve: defaultAnimationCurve,
        color: switch (read) {
          true => Colors.transparent,
          false => const Color(
              0xFFF1F5FD,
            ),
        },
        padding: EdgeInsets.symmetric(
          vertical: App.instance.overlay.relativeScreenHeight(
            24,
          ),
          horizontal: App.instance.overlay.relativeScreenWidth(
            20,
          ),
        ),
        // child: Flex(
        //   direction: Axis.horizontal,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Flexible(
        //       flex: 40,
        //       fit: FlexFit.tight,
        //       child: Align(
        //         alignment: Alignment.centerLeft,
        //         child: Container(
        //           width: App.instance.overlay.relativeScreenWidth(
        //             40,
        //           ),
        //           height: App.instance.overlay.relativeScreenHeight(
        //             40,
        //           ),
        //           decoration: const BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Color(
        //               0xFFDDDDDD,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     const Flexible(
        //       flex: 16,
        //       fit: FlexFit.tight,
        //       child: SizedBox(),
        //     ),
        //     Flexible(
        //       flex: 191,
        //       fit: FlexFit.tight,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             title,
        //             textAlign: TextAlign.start,
        //             style: TextStyle(
        //               height: 1.5,
        //               fontSize: App.instance.overlay.relativeScreenHeight(
        //                 16,
        //               ),
        //               color: const Color(
        //                 0xFF111111,
        //               ),
        //               fontWeight: FontWeightAlias.semiBold,
        //               letterSpacing: App.instance.overlay.relativeScreenWidth(
        //                 -0.32,
        //               ),
        //             ),
        //           ),
        //           Text(
        //             subTitle,
        //             textAlign: TextAlign.start,
        //             style: TextStyle(
        //               height: 1.5,
        //               fontSize: App.instance.overlay.relativeScreenHeight(
        //                 14,
        //               ),
        //               color: const Color(
        //                 0xFF888888,
        //               ),
        //               fontWeight: FontWeightAlias.regular,
        //               letterSpacing: App.instance.overlay.relativeScreenWidth(
        //                 -0.28,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     const Flexible(
        //       flex: 16,
        //       fit: FlexFit.tight,
        //       child: SizedBox(),
        //     ),
        //     Flexible(
        //       flex: 72,
        //       fit: FlexFit.tight,
        //       child: Align(
        //         alignment: Alignment.topRight,
        //         child: Text(
        //           DateFormat('MM월 dd일').format(
        //             createdAt,
        //           ),
        //           textAlign: TextAlign.end,
        //           style: TextStyle(
        //             height: 1.5,
        //             fontSize: App.instance.overlay.relativeScreenHeight(
        //               14,
        //             ),
        //             color: const Color(
        //               0xFF888888,
        //             ),
        //             fontWeight: FontWeightAlias.regular,
        //             letterSpacing: App.instance.overlay.relativeScreenWidth(
        //               -0.28,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: App.instance.overlay.relativeScreenWidth(
                  40,
                ),
                height: App.instance.overlay.relativeScreenHeight(
                  40,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFDDDDDD,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: App.instance.overlay.relativeScreenWidth(
                  76 - 20,
                ),
                right: App.instance.overlay.relativeScreenWidth(
                  108 - 20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: App.instance.overlay.relativeScreenHeight(
                        16,
                      ),
                      color: const Color(
                        0xFF111111,
                      ),
                      fontWeight: FontWeightAlias.semiBold,
                      letterSpacing: App.instance.overlay.relativeScreenWidth(
                        -0.32,
                      ),
                    ),
                  ),
                  Text(
                    subTitle,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: App.instance.overlay.relativeScreenHeight(
                        14,
                      ),
                      color: const Color(
                        0xFF888888,
                      ),
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: App.instance.overlay.relativeScreenWidth(
                        -0.28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                DateFormat('MM월 dd일').format(
                  createdAt,
                ),
                textAlign: TextAlign.end,
                style: TextStyle(
                  height: 1.5,
                  fontSize: App.instance.overlay.relativeScreenHeight(
                    14,
                  ),
                  color: const Color(
                    0xFF888888,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: App.instance.overlay.relativeScreenWidth(
                    -0.28,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
