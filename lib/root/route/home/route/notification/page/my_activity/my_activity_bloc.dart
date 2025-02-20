import 'package:app/model/remote/my_activity_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_activity_event.dart';
part 'my_activity_state.dart';
part 'my_activity_bloc.freezed.dart';

class MyActivityBloc extends Bloc<MyActivityEvent, MyActivityState> {
  MyActivityBloc()
      : super(MyActivityState(
          elements: [
            MyActivityNotification(
              title: '어제보다 0.4kg이 빠졌어요!',
              subTitle: '24.10.10. 07:30 기준',
              createdAt: DateTime.now(),
              read: false,
            ),
            MyActivityNotification(
              title: '어제보다 0.4kg이 빠졌어요!',
              subTitle: '24.10.10. 07:30 기준',
              createdAt: DateTime.now(),
              read: false,
            ),
            MyActivityNotification(
              title: '어제보다 0.4kg이 빠졌어요!',
              subTitle: '24.10.10. 07:30 기준',
              createdAt: DateTime.now(),
              read: true,
            ),
          ],
        )) {
    on<MyActivityEvent>((event, emit) async {
      await event.map(
        mock: (event) async {},
      );
    });
  }
}
