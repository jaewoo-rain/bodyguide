import 'package:animate_do/animate_do.dart';
import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/root/route/onboard/onboard_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardRoute extends StatelessWidget {
  const OnboardRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => OnboardBloc(),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white.withOpacity(
                0,
              ),
              surfaceTintColor: Colors.white.withOpacity(
                0,
              ),
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              systemOverlayStyle: systemUiOverlayStyleDark,
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: Column(
              children: [
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 56 + 16 + 8,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        start: 0,
                        end: 0,
                        top: converter.h(
                          14,
                        ),
                        height: converter.h(
                          28,
                        ),
                        child: Center(
                          child: Text(
                            '기본정보',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                20,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.w(
                                -0.4,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          8,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          color: const Color(
                            0xFFE5E5EC,
                          ),
                          surfaceTintColor: const Color(
                            0xFFE5E5EC,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          8,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          color: const Color(
                            0xFFE5E5EC,
                          ),
                          surfaceTintColor: const Color(
                            0xFFE5E5EC,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                          ),
                          child: BlocBuilder<OnboardBloc, OnboardState>(
                            buildWhen: (previous, current) =>
                                (previous.page != current.page),
                            builder: (context, state) => Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatedContainer(
                                duration: defaultAnimationDuration,
                                curve: defaultAnimationCurve,
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      16,
                                    ),
                                  ),
                                ),
                                width: converter.w(
                                  (335 *
                                          ((state.page.index + 1) /
                                              OnboardPage.values.length))
                                      .toDouble(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: context.read<OnboardBloc>().pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (value) => context.read<OnboardBloc>().add(
                          OnboardEvent.onPageChanged(
                            value: OnboardPage.values.elementAt(
                              value,
                            ),
                          ),
                        ),
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 124,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  34,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '당신의 별명은?',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -0.56,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.nickName != current.nickName),
                                  builder: (context, state) {
                                    final bool valid = context
                                        .read<OnboardBloc>()
                                        .isValidNickName(
                                          value: state.nickName,
                                        );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerNickName,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeNickName,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.text,
                                      placeholder: '5글자 내로 입력해주세요',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onNickNameChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          5,
                                        ),
                                        FilteringTextInputFormatter.deny(
                                          ' ',
                                        ),
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => context
                                            .read<OnboardBloc>()
                                            .pageController
                                            .nextPage(
                                              duration:
                                                  defaultAnimationDuration,
                                              curve: defaultAnimationCurve,
                                            ),
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeNickName
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        '${state.nickName.length}/5',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  34,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '당신의 별명은?',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -0.56,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 208,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  34,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '당신의 성별은?',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -0.56,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  50,
                                ),
                                height: converter.h(
                                  42,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 식단과 영양제 추천을 해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -0.28,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.h(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  60,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.gender != current.gender),
                                  builder: (context, state) =>
                                      _buildGenderButton(
                                    converter: converter,
                                    gender: Gender.male,
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.h(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  60,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.gender != current.gender),
                                  builder: (context, state) =>
                                      _buildGenderButton(
                                    converter: converter,
                                    gender: Gender.female,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 212,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: BlocBuilder<OnboardBloc, OnboardState>(
                                    buildWhen: (previous, current) =>
                                        (previous.nickName != current.nickName),
                                    builder: (context, state) => Text(
                                      '${state.nickName} 님의\n생일을 알려주세요',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          28,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.semiBold,
                                        letterSpacing: converter.w(
                                          -0.56,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  21,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -0.28,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.year != current.year),
                                  builder: (context, state) {
                                    final bool valid =
                                        context.read<OnboardBloc>().isValidYear(
                                              value: state.year,
                                            );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerYear,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeYear,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.number,
                                      placeholder: '2000',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onYearChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          4,
                                        ),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => context
                                            .read<OnboardBloc>()
                                            .focusNodeMonth
                                            .requestFocus(),
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeYear
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        '년',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: switch (valid) {
                                            true => const Color(
                                                0xFF111111,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              PositionedDirectional(
                                start: converter.w(
                                  180,
                                ),
                                end: converter.w(
                                  87.5,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.month != current.month),
                                  builder: (context, state) {
                                    final bool valid = context
                                        .read<OnboardBloc>()
                                        .isValidMonth(
                                          value: state.month,
                                        );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerMonth,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeMonth,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.number,
                                      placeholder: '1',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onMonthChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          2,
                                        ),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => context
                                            .read<OnboardBloc>()
                                            .focusNodeDay
                                            .requestFocus(),
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeMonth
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        '월',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: switch (valid) {
                                            true => const Color(
                                                0xFF111111,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  67.5,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.year != current.year) ||
                                      (previous.month != current.month) ||
                                      (previous.day != current.day),
                                  builder: (context, state) {
                                    final bool valid =
                                        context.read<OnboardBloc>().isValidDay(
                                              value: state.day,
                                            );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerDay,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeDay,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.number,
                                      placeholder: '1',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onDayChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          2,
                                        ),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => switch (context
                                              .read<OnboardBloc>()
                                              .isValidBirth(
                                                year: state.year,
                                                month: state.month,
                                                day: state.day,
                                              )) {
                                            true => context
                                                .read<OnboardBloc>()
                                                .pageController
                                                .nextPage(
                                                  duration:
                                                      defaultAnimationDuration,
                                                  curve: defaultAnimationCurve,
                                                ),
                                            false => context
                                                .read<OnboardBloc>()
                                                .focusNodeDay
                                                .requestFocus(),
                                          },
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeDay
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        '일',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: switch (valid) {
                                            true => const Color(
                                                0xFF111111,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 212,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: BlocBuilder<OnboardBloc, OnboardState>(
                                    buildWhen: (previous, current) =>
                                        (previous.nickName != current.nickName),
                                    builder: (context, state) => Text(
                                      '${state.nickName} 님의\n신체 정보를 알려주세요',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          28,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.semiBold,
                                        letterSpacing: converter.w(
                                          -0.56,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  21,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 식단과 영양제 추천을 해드려요 !',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -0.28,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.height != current.height),
                                  builder: (context, state) {
                                    final bool valid = context
                                        .read<OnboardBloc>()
                                        .isValidHeight(
                                          value: state.height,
                                        );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerHeight,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeHeight,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.number,
                                      placeholder: '170',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onHeightChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          3,
                                        ),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => context
                                            .read<OnboardBloc>()
                                            .focusNodeWeight
                                            .requestFocus(),
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeHeight
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        'cm',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: switch (valid) {
                                            true => const Color(
                                                0xFF111111,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<OnboardBloc, OnboardState>(
                                  buildWhen: (previous, current) =>
                                      (previous.height != current.height) ||
                                      (previous.weight != current.weight),
                                  builder: (context, state) {
                                    final bool valid = context
                                        .read<OnboardBloc>()
                                        .isValidWeight(
                                          value: state.weight,
                                        );

                                    return _buildTextField(
                                      textEditingController: context
                                          .read<OnboardBloc>()
                                          .textEditingControllerWeight,
                                      focusNode: context
                                          .read<OnboardBloc>()
                                          .focusNodeWeight,
                                      converter: converter,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.number,
                                      placeholder: '60',
                                      onChanged: (value) =>
                                          context.read<OnboardBloc>().add(
                                                OnboardEvent.onWeightChanged(
                                                  value: value,
                                                ),
                                              ),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                          3,
                                        ),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      valid: valid,
                                      onSubmitted: (value) => switch (valid) {
                                        true => switch (context
                                              .read<OnboardBloc>()
                                              .isValidSpec(
                                                height: state.height,
                                                weight: state.weight,
                                              )) {
                                            true => context
                                                .read<OnboardBloc>()
                                                .pageController
                                                .nextPage(
                                                  duration:
                                                      defaultAnimationDuration,
                                                  curve: defaultAnimationCurve,
                                                ),
                                            false => context
                                                .read<OnboardBloc>()
                                                .focusNodeWeight
                                                .requestFocus(),
                                          },
                                        false => context
                                            .read<OnboardBloc>()
                                            .focusNodeWeight
                                            .requestFocus(),
                                      },
                                      suffix: Text(
                                        'kg',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          height: 1.7,
                                          fontSize: converter.h(
                                            16,
                                          ),
                                          color: switch (valid) {
                                            true => const Color(
                                                0xFF111111,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.32,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 68,
                              designPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              builder: (converter) => Stack(
                                children: [
                                  PositionedDirectional(
                                    start: 0,
                                    end: 0,
                                    top: 0,
                                    height: converter.h(
                                      68,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '바디가이드를\n어떻게 알게 되셨나요?',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          height: 1.2,
                                          fontSize: converter.h(
                                            28,
                                          ),
                                          color: const Color(
                                            0xFF111111,
                                          ),
                                          fontWeight: FontWeightAlias.semiBold,
                                          letterSpacing: converter.w(
                                            -0.56,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SafeArea(
                              child: BlocBuilder<OnboardBloc, OnboardState>(
                                buildWhen: (previous, current) =>
                                    (previous.page != current.page),
                                builder: (context, state) => FadeInUp(
                                  curve: Curves.decelerate,
                                  duration: const Duration(
                                    milliseconds: 250,
                                  ),
                                  delay: const Duration(
                                    milliseconds: 750,
                                  ),
                                  child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    padding: EdgeInsets.only(
                                      bottom: App.instance.overlay
                                          .relativeScreenHeight(
                                        16,
                                      ),
                                    ),
                                    itemCount: inflowRoutes.length,
                                    separatorBuilder: (context, index) =>
                                        const BysonSeparator(
                                      designWidth: designWidth,
                                      designHeight: 8,
                                    ),
                                    itemBuilder: (context, index) =>
                                        BysonAspectRatio.padding(
                                      designWidth: designWidth,
                                      designHeight: 60,
                                      designPadding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      builder: (converter) =>
                                          BysonCupertinoButton.outlinedSolid(
                                        onPressed: () => context
                                            .read<OnboardBloc>()
                                            .add(
                                              OnboardEvent.onInflowRoutePressed(
                                                value: inflowRoutes[index],
                                              ),
                                            ),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color(
                                            0xFFE5E5EC,
                                          ),
                                          width: converter.h(
                                            1,
                                          ),
                                          style: BorderStyle.solid,
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          converter.radius(
                                            12,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            inflowRoutes[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                18,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.regular,
                                              letterSpacing: converter.w(
                                                -0.36,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 324,
                              designPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              builder: (converter) => Stack(
                                children: [
                                  PositionedDirectional(
                                    start: 0,
                                    end: 0,
                                    top: 0,
                                    height: converter.h(
                                      68,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '바디가이드는\n당신의 내일과 함께합니다.',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          height: 1.2,
                                          fontSize: converter.h(
                                            28,
                                          ),
                                          color: const Color(
                                            0xFF111111,
                                          ),
                                          fontWeight: FontWeightAlias.semiBold,
                                          letterSpacing: converter.w(
                                            -0.56,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  PositionedDirectional(
                                    start: converter.hcx(
                                      200,
                                    ),
                                    bottom: 0,
                                    width: converter.w(
                                      200,
                                    ),
                                    height: converter.h(
                                      200,
                                    ),
                                    child: Container(
                                      color: const Color(
                                        0xFFD9D9D9,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: MediaQuery.of(
                                  context,
                                ).viewInsets.bottom,
                              ),
                              child: BysonAspectRatio.padding(
                                designWidth: designWidth,
                                designHeight: 94 + 16,
                                designPadding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 16,
                                ),
                                builder: (converter) => Stack(
                                  children: [
                                    PositionedDirectional(
                                      top: 0,
                                      start: 0,
                                      end: 0,
                                      height: converter.h(
                                        18,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '언제든지 [My > 설정 > 알림] 에서 변경할 수 있어요.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.5,
                                            fontSize: converter.h(
                                              12,
                                            ),
                                            color: const Color(
                                              0xFF888888,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.w(
                                              -0.24,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      bottom: 0,
                                      start: 0,
                                      end: 0,
                                      height: converter.h(
                                        60,
                                      ),
                                      child: BysonCupertinoButton.solid(
                                        onPressed: () {
                                          context.read<OnboardBloc>().add(
                                                const OnboardEvent.submit(),
                                              );

                                          // App.instance.navigator
                                          //     .go(Routes.home.path);
                                        },
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          converter.radius(
                                            12,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '알림받고 바디가이드와 함께하기',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                18,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.regular,
                                              letterSpacing: converter.w(
                                                -0.36,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                        .map(
                          (element) => switch (element is Align) {
                            true => SingleChildScrollView(
                                padding: EdgeInsets.only(
                                  top:
                                      App.instance.overlay.relativeScreenHeight(
                                    // 76,
                                    60,
                                  ),
                                ),
                                child: element,
                              ),
                            false => Padding(
                                padding: EdgeInsets.only(
                                  top:
                                      App.instance.overlay.relativeScreenHeight(
                                    // 76,
                                    60,
                                  ),
                                ),
                                child: element,
                              ),
                          },
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SafeArea(
              child: BlocBuilder<OnboardBloc, OnboardState>(
                buildWhen: (previous, current) =>
                    (previous.page != current.page),
                builder: (context, state) => BysonSwitcher(
                  keys: () => state.page,
                  builder: (value) => switch (value) {
                    OnboardPage.nickName ||
                    OnboardPage.gender ||
                    OnboardPage.birth ||
                    OnboardPage.spec =>
                      Align(
                        alignment: Alignment.bottomCenter,
                        heightFactor: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(
                              context,
                            ).viewInsets.bottom,
                          ),
                          child: BysonAspectRatio.padding(
                            designWidth: designWidth,
                            designHeight: 60 + 16,
                            designPadding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 16,
                            ),
                            builder: (converter) =>
                                BlocBuilder<OnboardBloc, OnboardState>(
                              buildWhen: (previous, current) =>
                                  (previous.nickName != current.nickName) ||
                                  (previous.gender != current.gender) ||
                                  (previous.year != current.year) ||
                                  (previous.month != current.month) ||
                                  (previous.day != current.day) ||
                                  (previous.height != current.height) ||
                                  (previous.weight != current.weight),
                              builder: (context, state) {
                                return BysonSwitcher(
                                  keys: () => switch (value) {
                                    OnboardPage.nickName => context
                                        .read<OnboardBloc>()
                                        .isValidNickName(
                                          value: state.nickName,
                                        ),
                                    OnboardPage.gender =>
                                      context.read<OnboardBloc>().isValidGender(
                                            value: state.gender,
                                          ),
                                    OnboardPage.birth =>
                                      context.read<OnboardBloc>().isValidBirth(
                                            year: state.year,
                                            month: state.month,
                                            day: state.day,
                                          ),
                                    OnboardPage.spec =>
                                      context.read<OnboardBloc>().isValidSpec(
                                            height: state.height,
                                            weight: state.weight,
                                          ),
                                    _ => true,
                                  },
                                  builder: (value) =>
                                      BysonCupertinoButton.solid(
                                    onPressed: switch (value) {
                                      true => () => context
                                          .read<OnboardBloc>()
                                          .pageController
                                          .nextPage(
                                            duration: defaultAnimationDuration,
                                            curve: defaultAnimationCurve,
                                          ),
                                      false => null,
                                    },
                                    color: switch (value) {
                                      true => const Color(
                                          0xFF303F9F,
                                        ),
                                      false => const Color(
                                          0xFFE5E5EC,
                                        ),
                                    },
                                    borderRadius: BorderRadius.all(
                                      converter.radius(
                                        12,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '다음',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          // height: 1.5,
                                          fontSize: converter.h(
                                            18,
                                          ),
                                          color: switch (value) {
                                            true => Colors.white,
                                            false => const Color(
                                                0xFF4F4F4F,
                                              ),
                                          },
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.w(
                                            -0.36,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    _ => const SizedBox.shrink(),
                  },
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildTextField({
    required TextEditingController textEditingController,
    required FocusNode focusNode,
    required BysonConverter converter,
    required String placeholder,
    required void Function(String value) onChanged,
    required bool valid,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? textInputType,
    void Function(String value)? onSubmitted,
    bool readOnly = false,
    Widget? suffix,
  }) =>
      CupertinoTextField(
        controller: textEditingController,
        focusNode: focusNode,
        readOnly: readOnly,
        onChanged: onChanged,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        onSubmitted: onSubmitted,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: switch (valid) {
                true => const Color(
                    0xFF111111,
                  ),
                false => const Color(
                    0xFFB0B0B0,
                  ),
              },
              style: BorderStyle.solid,
              width: converter.h(
                1,
              ),
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
        inputFormatters: inputFormatters,
        cursorColor: const Color(
          0xFF303F9F,
        ),
        padding: EdgeInsets.zero,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        placeholder: placeholder,
        placeholderStyle: TextStyle(
          height: 1.2,
          fontSize: converter.h(
            28,
          ),
          color: const Color(
            0xFFB0B0B0,
          ),
          fontWeight: FontWeightAlias.regular,
          letterSpacing: converter.w(
            -0.56,
          ),
        ),
        style: TextStyle(
          height: 1.2,
          fontSize: converter.h(
            28,
          ),
          color: const Color(
            0xFF303F9F,
          ),
          fontWeight: FontWeightAlias.semiBold,
          letterSpacing: converter.w(
            -0.56,
          ),
        ),
        suffix: suffix,
      );

  Widget _buildGenderButton({
    required BysonConverter converter,
    required Gender gender,
  }) =>
      BlocBuilder<OnboardBloc, OnboardState>(
        buildWhen: (previous, current) => (previous.gender != current.gender),
        builder: (context, state) => BysonSwitcher(
          keys: () => state.gender == gender,
          builder: (value) => switch (value) {
            true => BysonCupertinoButton.solid(
                onPressed: () => context.read<OnboardBloc>().add(
                      OnboardEvent.onGenderChanged(
                        value: gender,
                      ),
                    ),
                color: const Color(
                  0xFF303F9F,
                ),
                borderRadius: BorderRadius.all(
                  converter.radius(
                    12,
                  ),
                ),
                child: Center(
                  child: Text(
                    gender.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // height: 1.5,
                      fontSize: converter.h(
                        18,
                      ),
                      color: Colors.white,
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: converter.w(
                        -0.36,
                      ),
                    ),
                  ),
                ),
              ),
            false => BysonCupertinoButton.outlinedSolid(
                key: key,
                onPressed: () => context.read<OnboardBloc>().add(
                      OnboardEvent.onGenderChanged(
                        value: gender,
                      ),
                    ),
                color: Colors.white,
                border: Border.all(
                  color: const Color(
                    0xFFE5E5EC,
                  ),
                  width: converter.h(
                    1,
                  ),
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
                borderRadius: BorderRadius.all(
                  converter.radius(
                    12,
                  ),
                ),
                child: Center(
                  child: Text(
                    gender.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // height: 1.5,
                      fontSize: converter.h(
                        18,
                      ),
                      color: const Color(
                        0xFF111111,
                      ),
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: converter.w(
                        -0.36,
                      ),
                    ),
                  ),
                ),
              ),
          },
        ),
      );
}
