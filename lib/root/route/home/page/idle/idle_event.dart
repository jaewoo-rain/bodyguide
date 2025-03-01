part of 'idle_bloc.dart';

@freezed
class IdleEvent with _$IdleEvent {
  const factory IdleEvent.mock() = _mock;
  const factory IdleEvent.loadState() = _loadState;
  const factory IdleEvent.updateWeight(double weight) =
      _UpdateWeight; // 추가된 이벤트
}
