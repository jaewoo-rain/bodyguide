import 'package:app/model/remote/body_guide_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_guide_event.dart';
part 'body_guide_state.dart';
part 'body_guide_bloc.freezed.dart';

class BodyGuideBloc extends Bloc<BodyGuideEvent, BodyGuideState> {
  BodyGuideBloc()
      : super(BodyGuideState(
          elements: [
            BodyGuideNotification(
              title: '신규 기능이 업데이트 되었어요',
              subTitle: '10초전',
              createdAt: DateTime.now(),
              read: false,
            ),
            BodyGuideNotification(
              title: '오늘의 뉴스 <다이어트에 도움되는 음식은> 을 읽어보세요!',
              subTitle: '10시간 전',
              createdAt: DateTime.now(),
              read: false,
            ),
          ],
        )) {
    on<BodyGuideEvent>((event, emit) async {
      await event.map(
        mock: (event) async {},
      );
    });
  }
}
