import 'package:json_annotation/json_annotation.dart';

enum Gender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
}

enum OnboardPage {
  nickName,
  gender,
  birth,
  spec,
  inflowSource,
  notification,
}

enum HomePage {
  idle,
  exercise,
  my,
  nutrient,
  // store,
}

enum ReviewDisplayType {
  grid,
  list,
}

enum PracticeAnalyticsInputPage {
  benchPress,
  squat,
  deadLift,
  overHeadPress,
  pushUp,
  pullUp,
}

enum NutrientAnalyticsInputPage {
  lifePattern,
  currentWeight,
  goalWeight,
  calorie,
  menuType,
  menuRatio,
  getUp,
  sleep,
}

enum CalendarEventType {
  memo,
  practice,
  intake,
  weight,
}

enum LifePattern {
  inactive,
  lowActive,
  active,
  highActive,
  extraActive,
}

enum MenuType {
  general,
  highProtein,
  lowCarbohydrate,
  lowFat,
  vegan,
}
