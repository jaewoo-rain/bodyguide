import 'dart:math';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/models/exercise_analysis_report.dart';
import 'package:flutter/material.dart';

/// 레이더 차트를 그리는 CustomPainter
class RadarChartCustomPainter extends CustomPainter {
  /// 각 축(등, 하체, 팔, 코어, 어깨, 가슴)에 해당하는 값 (0 ~ maxValue)
  final List<double> data;

  /// 축에 표시할 라벨 (6개)
  final List<String> labels;

  /// 내부 그리드(원형)를 몇 단계로 나눌지
  final int tickCount;

  final double maxValue;

  /// 차트 배경(연한 원) 색상
  final Color chartBackgroundColor;

  /// 그리드(원형) 및 축(방사형) 선의 색상
  final Color gridColor;

  /// 폴리곤 내부 채움색 (기본 파란색)
  final Color fillColor;

  /// 폴리곤 테두리색
  final Color borderColor;

  /// 라벨(글자) 색상
  final Color labelColor;

  /// 생성자
  RadarChartCustomPainter({
    required this.data,
    required this.labels,
    this.tickCount = 5,
    this.maxValue = 5.0,
    this.chartBackgroundColor = const Color(0xFFF7F8FA),
    this.gridColor = const Color(0xFFE0E0E0),
    this.fillColor = const Color(0xFF4A79FA),
    this.borderColor = const Color(0xFF4A79FA),
    this.labelColor = Colors.black, // 기본 라벨 색: 검정
  }) : assert(data.length == labels.length, 'data와 labels의 길이는 같아야 합니다.');

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    // 차트가 들어갈 최대 반지름
    final radius = min(size.width, size.height) * 0.85 / 2;

    final count = labels.length; // 6개 (등, 하체, 팔, 코어, 어깨, 가슴)
    final angleStep = (2 * pi) / count;

    // --- 1) 차트 배경(연한 원) ---
    final Paint backgroundPaint = Paint()
      ..color = chartBackgroundColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, backgroundPaint);

    // --- 2) 내부 격자(원형) ---
    final Paint gridPaint = Paint()
      ..color = gridColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    // tickCount=5 → 5개의 동심원
    for (int i = 1; i <= tickCount; i++) {
      final r = radius * (i / tickCount);
      canvas.drawCircle(center, r, gridPaint);
    }

    // --- 3) 축(방사형) 선 ---
    for (int i = 0; i < count; i++) {
      final angle = i * angleStep - pi / 2;
      final endPoint = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
      canvas.drawLine(center, endPoint, gridPaint);
    }

    // --- 4) 데이터 폴리곤 ---
    final path = Path();
    for (int i = 0; i < count; i++) {
      final ratio = (data[i] / maxValue).clamp(0.0, 1.0);
      final r = ratio * radius;
      final angle = i * angleStep - pi / 2;
      final point = Offset(
        center.dx + r * cos(angle),
        center.dy + r * sin(angle),
      );
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }
    path.close();

    // 4-1) 내부 채우기
    final fillPaint = Paint()
      ..color = fillColor.withOpacity(0.3)
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, fillPaint);

    // 4-2) 폴리곤 테두리
    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawPath(path, borderPaint);

    // --- 5) 꼭짓점 점찍기 ---
    final dotPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.fill;
    for (int i = 0; i < count; i++) {
      final ratio = (data[i] / maxValue).clamp(0.0, 1.0);
      final r = ratio * radius;
      final angle = i * angleStep - pi / 2;
      final point = Offset(
        center.dx + r * cos(angle),
        center.dy + r * sin(angle),
      );
      canvas.drawCircle(point, 4, dotPaint);
    }

    // --- 6) 축 라벨(글자) ---
    final textStyle = TextStyle(fontSize: 14, color: labelColor);
    final labelOffset = 20.0; // 라벨이 축 밖으로 나가도록

    for (int i = 0; i < count; i++) {
      final angle = i * angleStep - pi / 2;
      final labelX = center.dx + (radius + labelOffset) * cos(angle);
      final labelY = center.dy + (radius + labelOffset) * sin(angle);

      final textSpan = TextSpan(text: labels[i], style: textStyle);
      final textPainter = TextPainter(
        text: textSpan,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();

      // 라벨을 중앙에 맞춰 그리기
      final dx = labelX - textPainter.width / 2;
      final dy = labelY - textPainter.height / 2;
      textPainter.paint(canvas, Offset(dx, dy));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

/// 실제로 위의 CustomPainter를 사용해 레이더 차트를 그리는 위젯
class CustomRadarChartWidget extends StatelessWidget {
  final ExerciseAnalysisReport report; // 필드 추가!

  const CustomRadarChartWidget({
    super.key,
    required this.report, // 이거랑 연결!
  });

  @override
  Widget build(BuildContext context) {
    final ability = report.ability;
    // final data = [70.0, 60.0, 80.0, 40.0, 100.0, 60.0];
    final data = [
      ability["back"]!.score,
      ability["lowerBody"]!.score,
      ability["arm"]!.score,
      ability["core"]!.score,
      ability["shoulder"]!.score,
      ability["chest"]!.score
    ];
    final labels = ['등', '하체', '팔', '코어', '어깨', '가슴'];

    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9), // 박스 배경
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: RadarChartCustomPainter(
              data: data,
              labels: labels,
              tickCount: 5,
              maxValue: 120.0, // 최고 점수 변경
              chartBackgroundColor: const Color(0xFFF9F9F9),
              gridColor: const Color(0xFFE0E0E0),
              fillColor: const Color(0xFF4A79FA),
              borderColor: const Color(0xFF4A79FA),
              labelColor: Color(0xFF303F9F), // 라벨(글자) 색상 변경 가능
            ),
          ),
        ),
      ),
    );
  }
}
