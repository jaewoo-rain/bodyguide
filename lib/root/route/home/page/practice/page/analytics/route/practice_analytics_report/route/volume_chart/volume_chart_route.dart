import 'package:app/app/constant/system.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'volume_chart_bloc.dart';
import 'volume_chart_state.dart';

// class VolumeChartRoute extends StatelessWidget {
//   const VolumeChartRoute({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           VolumeChartBloc()..add(const VolumeChartEvent.load()),
//       child: Scaffold(
//         appBar: AppBar(title: const Text("운동 볼륨 그래프")),
//         body: const VolumeChartView(),
//       ),
//     );
//   }
// }

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
    return BlocBuilder<VolumeChartBloc, VolumeChartState>(
      builder: (context, state) {
        if (state.status == VolumeChartStateStatus.loading ||
            state.status == VolumeChartStateStatus.initial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == VolumeChartStateStatus.error) {
          return Center(child: Text("Error: ${state.errorMessage}"));
        }
        // 상태가 loaded인 경우
        return BysonAspectRatio(
            designWidth: 295,
            designHeight: 520,
            builder: (converter) {
              return Container(
                height: converter.h(520),
                width: designWidth,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
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
                          color: Color(0xFF3D5DD3),
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
                        width: converter.w(295),
                        height: converter.h(342),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9F9F9),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 5,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: SizedBox(
                          height: converter.h(342),
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              // 탭 1: 요약 기록
                              CustomGraph(
                                data: state.summaryData,
                                labels: state.summaryLabels,
                              ),
                              // 탭 2: 매주 단위
                              CustomGraph(
                                data: state.weeklyData,
                                labels: state.weeklyLabels,
                              ),
                              // 탭 3: 매월 단위
                              CustomGraph(
                                data: state.monthlyData,
                                labels: state.monthlyLabels,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}

/// CustomGraph 위젯 (원본 코드와 동일)
class CustomGraph extends StatefulWidget {
  final List<int> data;
  final List<String> labels;

  const CustomGraph({Key? key, required this.data, required this.labels})
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
    // 위젯 빌드 완료 후, 스크롤을 오른쪽 끝으로 이동
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
        (widget.data.length * 75).toDouble().clamp(300.0, 2000.0);

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
            data: widget.data,
            labels: widget.labels,
          ),
        ),
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  final List<int> data;
  final List<String> labels;

  GraphPainter({required this.data, required this.labels});

  @override
  void paint(Canvas canvas, Size size) {
    // 파란색 그래프 선
    final Paint linePaint = Paint()
      ..color = Color(0xFF3D5DD3)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // 데이터 점 (흰색 내부)
    final Paint dotFillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // 데이터 점 (파란색 테두리)
    final Paint dotOutlinePaint = Paint()
      ..color = Color(0xFF3D5DD3)
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

    double minX = 0;
    double maxX = data.length - 1;
    double minY = data.reduce((a, b) => a < b ? a : b).toDouble();
    double maxY = data.reduce((a, b) => a > b ? a : b).toDouble();

    if (minY == maxY) {
      minY -= 1;
      maxY += 1;
    }

    // 상하 10%의 여유 추가
    final range = maxY - minY;
    final extraMargin = range * 0.1;
    minY -= extraMargin;
    maxY += extraMargin;

    // 데이터 포인트 좌표 계산
    List<Offset> points = [];
    for (int i = 0; i < data.length; i++) {
      final x = padding + (i / maxX) * graphWidth;
      final y = size.height -
          padding -
          ((data[i] - minY) / (maxY - minY)) * graphHeight;
      points.add(Offset(x, y));
    }

    // (1) 세로 점선
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
    final path = Path();
    for (int i = 0; i < points.length; i++) {
      if (i == 0) {
        path.moveTo(points[i].dx, points[i].dy);
      } else {
        path.lineTo(points[i].dx, points[i].dy);
      }
    }
    canvas.drawPath(path, linePaint);

    // (4) 데이터 점 (원)
    for (final point in points) {
      canvas.drawCircle(point, 5, dotFillPaint);
      canvas.drawCircle(point, 5, dotOutlinePaint);
    }

    // (5) 데이터 값 텍스트
    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final value = data[i];

      final textPainter = TextPainter(
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

    // (6) X축 라벨
    final labelPainter = TextPainter(
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
    return oldDelegate.data != data || oldDelegate.labels != labels;
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
      final nextY = currentY + dashLength;
      final drawEndY = nextY < bottom ? nextY : bottom;
      canvas.drawLine(
        Offset(xPosition, currentY),
        Offset(xPosition, drawEndY),
        paint,
      );
      currentY = drawEndY + gapLength;
    }
  }
}
