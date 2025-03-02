import 'package:freezed_annotation/freezed_annotation.dart';
part 'volume_chart_event.freezed.dart';

@freezed
class VolumeChartEvent with _$VolumeChartEvent {
  const factory VolumeChartEvent.load() = LoadVolumeChartEvent;
}
