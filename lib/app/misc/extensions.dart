import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/misc/enums.dart';

extension ListExtension<T> on List<T> {
  List<T> shift({
    required int amount,
  }) {
    final List<T> shiftedList = List<T>.from(this);

    for (int index = 0; index < length; index++) {
      shiftedList[(index + amount) % length] = this[index];
    }

    return shiftedList;
  }
}

extension GenderExtension on Gender {
  String get label => switch (this) {
        Gender.male => '남성',
        Gender.female => '여성',
      };
}

extension HomePageExtension on HomePage {
  String get label => switch (this) {
        HomePage.idle => '홈',
        HomePage.exercise => '운동기록',
        HomePage.my => '마이페이지',
        HomePage.nutrient => '운동분석',
        // HomePage.store => '스토어',
      };

  SvgGenImage get icon => switch (this) {
        HomePage.idle => Assets.icon.icHome,
        HomePage.exercise => Assets.icon.icChart,
        HomePage.my => Assets.icon.icProfileCircle,
        HomePage.nutrient => Assets.icon.icHealth,
        // HomePage.store => Assets.icon.icShop,
      };
}

extension CalendarEventTypeExtension on CalendarEventType {
  String get label => switch (this) {
        CalendarEventType.memo => '메모',
        CalendarEventType.practice => '운동기록',
        CalendarEventType.intake => '섭취기록',
        CalendarEventType.weight => '체중기록',
      };
}

extension LifePatternExtension on LifePattern {
  String get title => switch (this) {
        LifePattern.inactive => '비활동적',
        LifePattern.lowActive => '저활동적',
        LifePattern.active => '활동적',
        LifePattern.highActive => '고활동적',
        LifePattern.extraActive => '매우활동적',
      };

  String get subTitle => switch (this) {
        LifePattern.inactive => '휴식기에 비해 1.00-1.39 신체활동',
        LifePattern.lowActive => '휴식기에 비해 1.40-1.59 신체활동',
        LifePattern.active => '휴식기에 비해 1.60-1.89 신체활동',
        LifePattern.highActive => '휴식기에 비해 1.90-2.19 신체활동',
        LifePattern.extraActive => '휴식기에 비해 2.20-2.50 신체활동',
      };
}

extension MenuTypeExtension on MenuType {
  String get title => switch (this) {
        MenuType.general => '일반적 식단',
        MenuType.highProtein => '고단백 식단',
        MenuType.lowCarbohydrate => '저탄수화물 식단',
        MenuType.lowFat => '저지방 식단',
        MenuType.vegan => '비건 식단',
      };

  String get subTitle => switch (this) {
        MenuType.general => '일반적으로 균형잡힌 식단 구성',
        MenuType.highProtein => '근육량 증가를 위한 식단 구성',
        MenuType.lowCarbohydrate => '탄수화물의 비율을 줄인 식단 구성',
        MenuType.lowFat => '지방의 비율을 줄인 식단 구성',
        MenuType.vegan => '동물성 단백질을 제외한 식단 구성',
      };
}
