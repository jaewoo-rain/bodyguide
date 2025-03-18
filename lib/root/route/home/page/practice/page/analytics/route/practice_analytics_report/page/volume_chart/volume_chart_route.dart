import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// 원본 데이터가 [mostRecent, second, third, ...] 순서로 되어 있을 때,
/// 그래프는 왼쪽부터 오른쪽까지 시간순(오래된 값 → 최신 값)으로 배치되어야 하므로
/// 가장 최근 값(원본 index 0)이 오른쪽 끝에 오도록 리스트를 반전시킵니다.
/// 만약 리스트 길이가 7개 미만이면 왼쪽(오래된 부분)을 0으로 채워 총 7개가 되게 합니다.
List<int> processData(List<int> data) {
  if (data.length >= 7) {
    // 최근 7개를 취하고(원본의 앞부분 7개) 뒤집어서 (오래된 값부터 최신 순으로) 반환
    final recent7 = data.sublist(0, 7);
    return recent7.reversed.toList();
  } else {
    return List<int>.filled(7 - data.length, 0) + data.reversed.toList();
  }
}

/// 라벨도 동일하게 처리 (값이 없는 부분은 빈 문자열)
List<String> processLabels(List<String> labels) {
  if (labels.length >= 7) {
    final recent7 = labels.sublist(0, 7);
    return recent7.reversed.toList();
  } else {
    return List<String>.filled(7 - labels.length, "") +
        labels.reversed.toList();
  }
}

class VolumeChartView extends StatefulWidget {
  const VolumeChartView({Key? key}) : super(key: key);

  @override
  _VolumeChartViewState createState() => _VolumeChartViewState();
}

class _VolumeChartViewState extends State<VolumeChartView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 탭 3개이므로 length: 3
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BysonAspectRatio(
      designWidth: designWidth,
      designHeight: 520,
      builder: (converter) {
        return Container(
          height: converter.h(520),
          width: designWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// ────── TabBar ──────
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: const Color(0xFF3D5DD3),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: '요약 기록'),
                    Tab(text: '매주 단위'),
                    Tab(text: '매월 단위'),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              /// ────── 그래프 Container ──────
              Center(
                child: Container(
                  width: converter.w(400),
                  height: converter.h(402),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: BlocBuilder<PracticeAnalyticsReportBloc,
                      PracticeAnalyticsReportState>(
                    builder: (context, state) {
                      if (state.dailyVolume == null ||
                          state.weekVolume == null ||
                          state.monthlyVolume == null) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return SizedBox(
                        height: converter.h(342),
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // 1일씩
                            CustomGraph(
                              volumes: processData(
                                state.dailyVolume!.volumes
                                    .map((volume) => volume.volume.toInt())
                                    .toList(),
                              ),
                              labels: processLabels(
                                state.dailyVolume!.volumes
                                    .map((volume) => "${volume.date}"
                                        .toString()
                                        .substring(5, 10))
                                    .toList(),
                              ),
                            ),
                            // 1주씩
                            CustomGraph(
                              volumes: processData(
                                state.weekVolume!.volumes
                                    .map((volume) => volume.volume.toInt())
                                    .toList(),
                              ),
                              labels: processLabels(
                                state.weekVolume!.volumes
                                    .map(
                                        (volume) => "${volume.week}".toString())
                                    .toList(),
                              ),
                            ),
                            // 한달씩
                            CustomGraph(
                              volumes: processData(
                                state.monthlyVolume!.volumes
                                    .map((volume) => volume.volume.toInt())
                                    .toList(),
                              ),
                              labels: processLabels(
                                state.monthlyVolume!.volumes
                                    .map((volume) => volume.month.toString())
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// CustomGraph 위젯
class CustomGraph extends StatefulWidget {
  final List<int> volumes;
  final List<String> labels;

  const CustomGraph({Key? key, required this.volumes, required this.labels})
      : super(key: key);

  @override
  _CustomGraphState createState() => _CustomGraphState();
}

class _CustomGraphState extends State<CustomGraph> {
  // 가로 스크롤 제어용
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // 위젯 빌드 완료 후, 스크롤을 오른쪽 끝(최신 값이 있는 위치)으로 이동
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 데이터 하나당 75픽셀로 가정
    final double chartWidth =
        (widget.volumes.length * 75).toDouble().clamp(300.0, 2000.0);

    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Container(
        width: chartWidth,
        height: 250,
        padding: const EdgeInsets.all(8),
        child: CustomPaint(
          size: Size(chartWidth, 250),
          painter: GraphPainter(
            volumes: widget.volumes,
            labels: widget.labels,
          ),
        ),
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  final List<int> volumes;
  final List<String> labels;

  GraphPainter({required this.volumes, required this.labels});

  @override
  void paint(Canvas canvas, Size size) {
    // 파란색 그래프 선
    final Paint linePaint = Paint()
      ..color = const Color(0xFF3D5DD3)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // 데이터 점 (흰색 내부)
    final Paint dotFillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // 데이터 점 (파란색 테두리)
    final Paint dotOutlinePaint = Paint()
      ..color = const Color(0xFF3D5DD3)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // 수직 점선
    final Paint verticalLinePaint = Paint()
      ..color = Colors.grey.withOpacity(0.7)
      ..strokeWidth = 1;

    // 하단 가로선
    final Paint horizontalLinePaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..strokeWidth = 1;

    final double padding = 20;
    final double graphWidth = size.width - padding * 2;
    final double graphHeight = size.height - padding * 2;

    double minY = volumes.reduce((a, b) => a < b ? a : b).toDouble();
    double maxY = volumes.reduce((a, b) => a > b ? a : b).toDouble();
    if (minY == maxY) {
      minY -= 1;
      maxY += 1;
    }
    // 상하 10% 여유
    final range = maxY - minY;
    final extraMargin = range * 0.1;
    minY -= extraMargin;
    maxY += extraMargin;

    // 데이터 포인트 좌표 계산 (왼쪽부터 오른쪽으로 배치)
    List<Offset> points = [];
    for (int i = 0; i < volumes.length; i++) {
      final double t = volumes.length > 1 ? (i / (volumes.length - 1)) : 0.5;
      final double x = padding + t * graphWidth;
      final double y = size.height -
          padding -
          ((volumes[i] - minY) / (maxY - minY)) * graphHeight;
      points.add(Offset(x, y));
    }

    // (1) 세로 점선 그리기
    for (final point in points) {
      _drawDashedVerticalLine(
        canvas: canvas,
        paint: verticalLinePaint,
        xPosition: point.dx,
        top: padding,
        bottom: size.height - padding,
        dashLength: 5,
        gapLength: 3,
      );
    }

    // (2) 하단 가로선
    final double bottomLineY = size.height - padding;
    canvas.drawLine(
      Offset(padding, bottomLineY),
      Offset(size.width - padding, bottomLineY),
      horizontalLinePaint,
    );

    // (3) 그래프 선 그리기
    final Path path = Path();
    for (int i = 0; i < points.length; i++) {
      if (i == 0) {
        path.moveTo(points[i].dx, points[i].dy);
      } else {
        path.lineTo(points[i].dx, points[i].dy);
      }
    }
    canvas.drawPath(path, linePaint);

    // (4) 데이터 점 그리기
    for (final point in points) {
      canvas.drawCircle(point, 5, dotFillPaint);
      canvas.drawCircle(point, 5, dotOutlinePaint);
    }

    // (5) 데이터 값 텍스트
    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final int value = volumes[i];

      final TextPainter textPainter = TextPainter(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.text = TextSpan(
        text: "${value}kg",
        style: const TextStyle(
          fontSize: 12,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(point.dx - textPainter.width / 2, point.dy - 25),
      );
    }

    // (6) X축 라벨 그리기
    final TextPainter labelPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    for (int i = 0; i < labels.length; i++) {
      final point = points[i];
      labelPainter.text = TextSpan(
        text: labels[i],
        style: const TextStyle(fontSize: 12, color: Colors.black),
      );
      labelPainter.layout();
      labelPainter.paint(
        canvas,
        Offset(point.dx - labelPainter.width / 2, size.height - padding + 8),
      );
    }
  }

  @override
  bool shouldRepaint(GraphPainter oldDelegate) {
    return oldDelegate.volumes != volumes || oldDelegate.labels != labels;
  }

  void _drawDashedVerticalLine({
    required Canvas canvas,
    required Paint paint,
    required double xPosition,
    required double top,
    required double bottom,
    required double dashLength,
    required double gapLength,
  }) {
    double currentY = top;
    while (currentY < bottom) {
      final double nextY = currentY + dashLength;
      final double drawEndY = nextY < bottom ? nextY : bottom;
      canvas.drawLine(
        Offset(xPosition, currentY),
        Offset(xPosition, drawEndY),
        paint,
      );
      currentY = drawEndY + gapLength;
    }
  }
}
