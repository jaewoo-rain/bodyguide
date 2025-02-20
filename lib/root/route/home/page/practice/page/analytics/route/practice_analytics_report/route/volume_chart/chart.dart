// import 'package:flutter/material.dart';
//
// class ExerciseStatsWidget extends StatefulWidget {
//   @override
//   _ExerciseStatsWidgetState createState() => _ExerciseStatsWidgetState();
// }
//
// class _ExerciseStatsWidgetState extends State<ExerciseStatsWidget>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     // 탭이 3개이므로 length: 3
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           child: Text(
//             "운동 볼륨 그래프",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Text(
//             "최근 이용자가 기록한 운동 볼륨에 대한 그래프입니다.",
//             style: TextStyle(fontSize: 14, color: Colors.grey),
//           ),
//         ),
//         const SizedBox(height: 20),
//
//         /// ──────────────────── TabBar ────────────────────
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(25),
//           ),
//           child: TabBar(
//             controller: _tabController,
//             dividerColor: Colors.transparent,
//             indicatorColor: Colors.transparent,
//             indicator: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(25),
//             ),
//             indicatorSize: TabBarIndicatorSize.tab,
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.grey,
//             tabs: const [
//               Tab(text: '요약 기록'),
//               Tab(text: '매주 단위'),
//               Tab(text: '매월 단위'),
//             ],
//           ),
//         ),
//         const SizedBox(height: 15),
//
//         /// ──────────────────── 그래프 Container ────────────────────
//         Center(
//           child: Container(
//             width: 295,
//             height: 342,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.05),
//                   blurRadius: 5,
//                   spreadRadius: 2,
//                 )
//               ],
//             ),
//             child: SizedBox(
//               height: 350,
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   /// 탭1
//                   CustomGraph(
//                     data: [6400, 6500, 7000, 7500, 7900, 8500, 8900, 9200],
//                     labels: [
//                       "24.01",
//                       "24.02",
//                       "24.03",
//                       "24.04",
//                       "24.05",
//                       "24.06",
//                       "24.07",
//                       "24.08"
//                     ],
//                   ),
//
//                   /// 탭2
//                   CustomGraph(
//                     data: [6000, 6300, 6800, 7200, 7500, 8200, 7800],
//                     labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
//                   ),
//
//                   /// 탭3
//                   CustomGraph(
//                     data: [5500, 6000, 7000, 8200, 7500, 9000, 8500],
//                     labels: [
//                       "23.05",
//                       "23.07",
//                       "23.08",
//                       "23.09",
//                       "23.10",
//                       "23.11",
//                       "23.12"
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// ///
// /// CustomGraph를 StatefulWidget으로 만들어,
// /// 그래프가 최초 빌드된 후 스크롤을 오른쪽 끝으로 이동시킴.
// ///
// class CustomGraph extends StatefulWidget {
//   final List<int> data;
//   final List<String> labels;
//
//   const CustomGraph({required this.data, required this.labels});
//
//   @override
//   _CustomGraphState createState() => _CustomGraphState();
// }
//
// class _CustomGraphState extends State<CustomGraph> {
//   // 가로 스크롤 제어용
//   final ScrollController _scrollController = ScrollController();
//
//   @override
//   void initState() {
//     super.initState();
//     // 위젯 빌드가 완료된 뒤, 스크롤 위치를 오른쪽 끝(maxScrollExtent)으로 이동
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (_scrollController.hasClients) {
//         _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
//         // 부드럽게 이동하고 싶으면:
//         _scrollController.animateTo(
//           _scrollController.position.maxScrollExtent,
//           duration: Duration(milliseconds: 300),
//           curve: Curves.easeOut,
//         );
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // 데이터 하나당 60픽셀로 가정
//     final double chartWidth =
//         (widget.data.length * 75).toDouble().clamp(300.0, 2000.0);
//
//     return SingleChildScrollView(
//       controller: _scrollController,
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         width: chartWidth,
//         height: 250,
//         padding: const EdgeInsets.all(8),
//         child: CustomPaint(
//           size: Size(chartWidth, 250),
//           painter: GraphPainter(
//             data: widget.data,
//             labels: widget.labels,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class GraphPainter extends CustomPainter {
//   final List<int> data;
//   final List<String> labels;
//
//   GraphPainter({required this.data, required this.labels});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     // 파란색 그래프 선
//     final Paint linePaint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;
//
//     // 데이터 점 (흰색 내부)
//     final Paint dotFillPaint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//
//     // 데이터 점 (파란색 테두리)
//     final Paint dotOutlinePaint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;
//
//     // 수직점선 (조금 더 진하게)
//     final Paint verticalLinePaint = Paint()
//       ..color = Colors.grey.withOpacity(0.7)
//       ..strokeWidth = 1;
//
//     // 하단 가로선
//     final Paint horizontalLinePaint = Paint()
//       ..color = Colors.grey.withOpacity(0.3)
//       ..strokeWidth = 1;
//
//     final double padding = 20;
//     final double graphWidth = size.width - padding * 2;
//     final double graphHeight = size.height - padding * 2;
//
//     double minX = 0;
//     double maxX = data.length - 1;
//     double minY = data.reduce((a, b) => a < b ? a : b).toDouble();
//     double maxY = data.reduce((a, b) => a > b ? a : b).toDouble();
//
//     if (minY == maxY) {
//       minY -= 1;
//       maxY += 1;
//     }
//
//     // 그래프가 너무 아래 위에 붙지 않도록 범위 조금 확장
//     final range = maxY - minY;
//     final extraMargin = range * 0.1; // 10% 정도 상하 여유
//     minY -= extraMargin;
//     maxY += extraMargin;
//
//     // 데이터 포인트 좌표 계산
//     List<Offset> points = [];
//     for (int i = 0; i < data.length; i++) {
//       final x = padding + (i / maxX) * graphWidth;
//       final y = size.height -
//           padding -
//           ((data[i] - minY) / (maxY - minY)) * graphHeight;
//       points.add(Offset(x, y));
//     }
//
//     // (1) 세로 점선
//     for (final point in points) {
//       _drawDashedVerticalLine(
//         canvas: canvas,
//         paint: verticalLinePaint,
//         xPosition: point.dx,
//         top: padding,
//         bottom: size.height - padding,
//         dashLength: 5,
//         gapLength: 3,
//       );
//     }
//
//     // (2) 하단 가로선
//     final double bottomLineY = size.height - padding;
//     canvas.drawLine(
//       Offset(padding, bottomLineY),
//       Offset(size.width - padding, bottomLineY),
//       horizontalLinePaint,
//     );
//
//     // (3) 그래프 선
//     final path = Path();
//     for (int i = 0; i < points.length; i++) {
//       if (i == 0) {
//         path.moveTo(points[i].dx, points[i].dy);
//       } else {
//         path.lineTo(points[i].dx, points[i].dy);
//       }
//     }
//     canvas.drawPath(path, linePaint);
//
//     // (4) 데이터 점(원)
//     for (final point in points) {
//       canvas.drawCircle(point, 5, dotFillPaint);
//       canvas.drawCircle(point, 5, dotOutlinePaint);
//     }
//
//     // (5) 데이터 값 텍스트
//     for (int i = 0; i < points.length; i++) {
//       final point = points[i];
//       final value = data[i];
//
//       final textPainter = TextPainter(
//         textAlign: TextAlign.center,
//         textDirection: TextDirection.ltr,
//       );
//       textPainter.text = TextSpan(
//         text: "${value}kg",
//         style: const TextStyle(
//           fontSize: 12,
//           color: Colors.green,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//       textPainter.layout();
//       textPainter.paint(
//         canvas,
//         Offset(point.dx - textPainter.width / 2, point.dy - 25),
//       );
//     }
//
//     // (6) X축 라벨
//     final labelPainter = TextPainter(
//       textAlign: TextAlign.center,
//       textDirection: TextDirection.ltr,
//     );
//     for (int i = 0; i < labels.length; i++) {
//       final point = points[i];
//       labelPainter.text = TextSpan(
//         text: labels[i],
//         style: const TextStyle(fontSize: 12, color: Colors.black),
//       );
//       labelPainter.layout();
//       labelPainter.paint(
//         canvas,
//         Offset(point.dx - labelPainter.width / 2, size.height - padding + 8),
//       );
//     }
//   }
//
//   @override
//   bool shouldRepaint(GraphPainter oldDelegate) {
//     return oldDelegate.data != data || oldDelegate.labels != labels;
//   }
//
//   // 세로 점선(dashed line)을 그리는 함수
//   void _drawDashedVerticalLine({
//     required Canvas canvas,
//     required Paint paint,
//     required double xPosition,
//     required double top,
//     required double bottom,
//     required double dashLength,
//     required double gapLength,
//   }) {
//     double currentY = top;
//     while (currentY < bottom) {
//       final nextY = currentY + dashLength;
//       final drawEndY = (nextY < bottom) ? nextY : bottom;
//
//       canvas.drawLine(
//         Offset(xPosition, currentY),
//         Offset(xPosition, drawEndY),
//         paint,
//       );
//       currentY = drawEndY + gapLength;
//     }
//   }
// }
