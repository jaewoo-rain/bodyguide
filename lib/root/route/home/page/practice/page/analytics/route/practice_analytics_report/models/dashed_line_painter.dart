import 'package:flutter/material.dart';

/// 점선 Divider를 그리는 CustomPainter
class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashGap;
  final double thickness;

  DashedLinePainter({
    required this.color,
    this.dashWidth = 4.0,
    this.dashGap = 2.0,
    this.thickness = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness;
    double startX = 0;
    final double y = size.height / 2;
    // 가로 길이 전체를 dash와 gap으로 채움
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, y),
        Offset(startX + dashWidth, y),
        paint,
      );
      startX += dashWidth + dashGap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// 점선 Divider 위젯 (Horizontal)
class DashedDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color color;
  final double dashWidth;
  final double dashGap;

  const DashedDivider({
    Key? key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color = const Color(0xFFE5E5EC),
    this.dashWidth = 4.0,
    this.dashGap = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Divider의 전체 높이를 지정하고, 가운데에 점선을 그리도록 함
    return SizedBox(
      height: height ?? 16.0,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: indent ?? 0.0,
          end: endIndent ?? 0.0,
        ),
        child: CustomPaint(
          painter: DashedLinePainter(
            color: color,
            dashWidth: dashWidth,
            dashGap: dashGap,
            thickness: thickness ?? 1.0,
          ),
          child: Container(),
        ),
      ),
    );
  }
}
