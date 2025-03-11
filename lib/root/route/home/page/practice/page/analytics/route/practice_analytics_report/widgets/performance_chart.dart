import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/models/dashed_line_painter.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';

/// 수행능력 비교 그래프 위젯 (예: 벤치프레스 그래프)
class PerformanceChart extends StatelessWidget {
  /// 운동명 (예: '벤치프레스')
  final String exerciseName;

  /// 0~100 사이의 그래프 퍼센트 값 (예: 75면 75% 길이)
  final double graphPercentage;
  final double standard;

  const PerformanceChart({
    Key? key,
    required this.exerciseName,
    required this.graphPercentage,
    required this.standard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BysonAspectRatio(
      designWidth: 295,
      designHeight: 36,
      builder: (converter) => Stack(
        children: [
          // 빈 Container (필요에 따라 배경색 등 설정)
          Container(),
          // 운동 이름 텍스트
          PositionedDirectional(
            top: converter.h(9),
            child: Text(
              exerciseName,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: App.instance.overlay.relativeScreenHeight(12),
                color: const Color(0xFF111111),
                fontWeight: FontWeightAlias.regular,
                letterSpacing: 0,
              ),
            ),
          ),
          // 회색 배경 바 (전체 길이 대비 배경)
          PositionedDirectional(
            top: converter.h(4),
            start: converter.w(88),
            width: ((295 - converter.w(88 + 32)) / 100) * standard,
            height: converter.h(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(converter.radius(4)),
                color: const Color(0xFF9EA3B2),
              ),
            ),
          ),
          // 점선 Divider
          Align(
            alignment: Alignment.center,
            child: DashedDivider(
              indent: converter.w(88),
              endIndent: converter.w(3),
              color: const Color(0xFFE5E5EC),
              thickness: converter.h(2),
              dashWidth: converter.w(4),
              dashGap: converter.w(2),
            ),
          ),
          // 빨간색 전경 바 (실제 수행능력을 나타내는 값)
          PositionedDirectional(
            top: converter.h(22),
            start: converter.w(88),
            width: ((295 - converter.w(88 + 32)) / 100) * graphPercentage,
            height: converter.h(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(converter.radius(4)),
                color: const Color(0xFFDE6E6A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
