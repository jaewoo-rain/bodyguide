import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/route/volume_chart/volume_chart_event.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/route/volume_chart/volume_chart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VolumeChartBloc extends Bloc<VolumeChartEvent, VolumeChartState> {
  VolumeChartBloc() : super(VolumeChartState.initial()) {
    on<LoadVolumeChartEvent>(_onLoadExerciseStats);
  }

  Future<void> _onLoadExerciseStats(
      LoadVolumeChartEvent event, Emitter<VolumeChartState> emit) async {
    emit(state.copyWith(status: VolumeChartStateStatus.loading));
    try {
      // 실제 데이터 호출 대신 더미 데이터 예시 (repository 연동 가능)
      await Future.delayed(const Duration(milliseconds: 500));

      final summaryData = [6400, 6500, 7000, 7500, 7900, 8500, 8900, 9200];
      final summaryLabels = [
        "24.01",
        "24.02",
        "24.03",
        "24.04",
        "24.05",
        "24.06",
        "24.07",
        "24.08"
      ];
      final weeklyData = [6000, 6300, 6800, 7200, 7500, 8200, 7800];
      final weeklyLabels = ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"];
      final monthlyData = [5500, 6000, 7000, 8200, 7500, 9000, 8500];
      final monthlyLabels = [
        "23.05",
        "23.07",
        "23.08",
        "23.09",
        "23.10",
        "23.11",
        "23.12"
      ];

      emit(state.copyWith(
        status: VolumeChartStateStatus.loaded,
        summaryData: summaryData,
        summaryLabels: summaryLabels,
        weeklyData: weeklyData,
        weeklyLabels: weeklyLabels,
        monthlyData: monthlyData,
        monthlyLabels: monthlyLabels,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: VolumeChartStateStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
