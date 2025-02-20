import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/widget/summary_tile.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NutrientHistoryPage extends StatelessWidget {
  const NutrientHistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: App.instance.overlay.relativeScreenWidth(
                    20,
                  ),
                ),
                children: [
                  SummaryTile(
                    dateTime: DateTime.now().subtract(
                      const Duration(
                        days: 1,
                      ),
                    ),
                    totalSet: 1,
                    practiceList: [],
                    practiceSet: [],
                    prevBestReps: [],
                    prevBestWeights: [],
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: SafeArea(
        //   child: BysonAspectRatio.padding(
        //     designWidth: designWidth,
        //     designHeight: 16 + 60 + 16,
        //     designPadding: const EdgeInsets.only(
        //       top: 16,
        //       left: 20,
        //       right: 20,
        //       bottom: 16,
        //     ),
        //     builder: (converter) => BysonCupertinoButton.solid(
        //       onPressed: () => App.instance.navigator
        //           .push(
        //         Routes.practiceRecord.path,
        //       )
        //           .then(
        //         (value) {
        //           if ((value != null) && (value is Set<Nutrient>)) {
        //             App.instance.navigator.push(
        //               Routes.practiceDo.path,
        //               extra: value.toList(),
        //             );
        //           }
        //         },
        //       ),
        //       color: const Color(
        //         0xFF303F9F,
        //       ),
        //       borderRadius: BorderRadius.all(
        //         converter.radius(
        //           12,
        //         ),
        //       ),
        //       child: Center(
        //         child: Text(
        //           '운동 기록하기',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             // height: 1.5,
        //             fontSize: converter.h(
        //               18,
        //             ),
        //             color: Colors.white,
        //             fontWeight: FontWeightAlias.regular,
        //             letterSpacing: converter.lt(
        //               fontSize: 18,
        //               percent: -2,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      );
}
