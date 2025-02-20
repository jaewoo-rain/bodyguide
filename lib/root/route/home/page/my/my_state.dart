part of 'my_bloc.dart';

@freezed
class MyState with _$MyState {
  const factory MyState({
    @Default(false) bool mock,
    @Default(const {}) Map<String, dynamic> userProfile,
    @Default(const {}) Map<String, dynamic> activityProfile,
    @Default(const {}) Map<String, dynamic> exercisePerformance,
    @Default(const {}) Map<String, dynamic> expProfile,
  }) = _MyState;
}

//{user/profile: {nickname: 뱔명, gender: M, height: 199.0, weight: 10.0, birthDate: 1999-11-11, profileImg: null, introText: null},
// activity/profile: {exerciseCount: 37, dietCount: 0, weightCount: 0},
// exercise/performance: {totalScore: 99.54833333333333, scoreUpdatedAt: 2025-01-28T17:52:11, exerciseLevel: 고급자, levelUpdatedAt: 2025-01-27T01:11:32, bigThree: 411.0, bigThreeUpdatedAt: 2025-01-28T17:33:43},
// exp/profile: {level: 4, currentExp: 25, requiredExp: 30}}

extension MyStateX on MyState {
  bool get isLoaded =>
      userProfile.isNotEmpty &&
      activityProfile.isNotEmpty &&
      exercisePerformance.isNotEmpty &&
      expProfile.isNotEmpty;
}
