import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_route.freezed.dart';

@freezed
class CustomRoute with _$CustomRoute {
  const factory CustomRoute({
    @protected required CustomRoute? parent,
    @protected required String endpoint,
  }) = _CustomRoute;

  String get path => '${parent?.path ?? ''}/$endpoint';

  const CustomRoute._();
}
