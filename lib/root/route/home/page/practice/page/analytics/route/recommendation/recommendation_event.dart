part of 'recommendation_bloc.dart';

@freezed
class RecommendationEvent with _$RecommendationEvent {
  const factory RecommendationEvent.toggleGoal({
    required String value,
  }) = _toggleGoal;
}
