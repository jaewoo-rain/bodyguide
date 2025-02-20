import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_request.freezed.dart';
part 'exercise_request.g.dart';

// ExerciseSetRequest
@freezed
class ExerciseSetRequest with _$ExerciseSetRequest {
  const factory ExerciseSetRequest({
    required int set,
    required double weight,
    required int reps,
  }) = _ExerciseSetRequest;

  factory ExerciseSetRequest.fromJson(Map<String, Object?> json) =>
      _$ExerciseSetRequestFromJson(json);
}

// ExerciseRecordRequest
@freezed
class ExerciseRecordRequest with _$ExerciseRecordRequest {
  const factory ExerciseRecordRequest({
    required int exerciseId,
    required List<ExerciseSetRequest> sets,
  }) = _ExerciseRecordRequest;

  factory ExerciseRecordRequest.fromJson(Map<String, Object?> json) =>
      _$ExerciseRecordRequestFromJson(json);
}

// ExerciseRecordGroupRequest
@freezed
class ExerciseRecordGroupRequest with _$ExerciseRecordGroupRequest {
  const factory ExerciseRecordGroupRequest({
    required int groupId,
    required DateTime exerciseDate,
    required List<ExerciseRecordRequest> exercises,
  }) = _ExerciseRecordGroupRequest;

  factory ExerciseRecordGroupRequest.fromJson(Map<String, Object?> json) =>
      _$ExerciseRecordGroupRequestFromJson(json);
}
