// part of 'my_weight_bloc.dart';
//
// @freezed
// class MyWeightEvent with _$MyWeightEvent {
//   const factory MyWeightEvent.submit() = _submit;
//   const factory MyWeightEvent.delete({
//     required int index,
//   }) = _delete;
//   const factory MyWeightEvent.onInputChanged({
//     required String value,
//   }) = _onInputChanged;
// }
//
// class DeleteWeightRecordEvent with _$MyWeightEvent {
//   final WeightRecord record;
//
//   DeleteWeightRecordEvent(this.record);
// }

part of 'my_weight_bloc.dart';

@freezed
class MyWeightEvent with _$MyWeightEvent {
  const factory MyWeightEvent.submit() = _Submit;

  /// 삭제 이벤트 (WeightRecord 자체를 넘길 수도 있음)
  const factory MyWeightEvent.delete({
    required WeightRecord record,
  }) = _Delete;

  /// 입력값 변경 이벤트
  const factory MyWeightEvent.onInputChanged({
    required String value,
  }) = _OnInputChanged;
}
