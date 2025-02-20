part of 'recommendation_bloc.dart';

@freezed
class RecommendationState with _$RecommendationState {
  const factory RecommendationState({
    @Default({}) Set<String> goals,
  }) = _RecommendationState;
}
