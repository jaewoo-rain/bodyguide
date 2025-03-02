import 'package:freezed_annotation/freezed_annotation.dart';
part 'volume_chart_state.freezed.dart';

enum VolumeChartStateStatus { initial, loading, loaded, error }

@freezed
class VolumeChartState with _$VolumeChartState {
  const factory VolumeChartState({
    required VolumeChartStateStatus status,
    required List<int> summaryData,
    required List<String> summaryLabels,
    required List<int> weeklyData,
    required List<String> weeklyLabels,
    required List<int> monthlyData,
    required List<String> monthlyLabels,
    String? errorMessage,
  }) = _VolumeChartState;

  factory VolumeChartState.initial() => VolumeChartState(
        status: VolumeChartStateStatus.initial,
        summaryData: [],
        summaryLabels: [],
        weeklyData: [],
        weeklyLabels: [],
        monthlyData: [],
        monthlyLabels: [],
        errorMessage: null,
      );
}
