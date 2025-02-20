part of 'body_guide_bloc.dart';

@freezed
class BodyGuideState with _$BodyGuideState {
  const factory BodyGuideState({
    @Default([]) List<BodyGuideNotification> elements,
  }) = _BodyGuideState;
}
