import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_edit/practice_edit_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class PracticeEditRoute extends StatelessWidget {
  const PracticeEditRoute({
    required this.practices,
    super.key,
  });

  final List<PracticeRecord> practices;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeEditBloc(
          practices: practices,
        ),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              systemOverlayStyle: systemUiOverlayStyleDark,
              flexibleSpace: SafeArea(
                child: BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 56,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        bottom: 0,
                        width: converter.h(
                          56,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.pop(),
                          child: Center(
                            child: Icon(
                              IconsaxPlusLinear.arrow_left,
                              color: Colors.black,
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '나의 운동 기록',
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
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: BlocBuilder<PracticeEditBloc, PracticeEditState>(
              buildWhen: (previous, current) =>
                  (previous.practices != current.practices) ||
                  (previous.selections != current.selections),
              builder: (context, state) => Column(
                children: [
                  BysonAspectRatio.padding(
                    designWidth: designWidth,
                    designHeight: 109,
                    designPadding: const EdgeInsets.only(
                      top: 29,
                      left: 20,
                      right: 20,
                      bottom: 16,
                    ),
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: 0,
                          start: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Text(
                            DateFormat(
                              'MM월 dd일 EEEE',
                              'ko',
                            ).format(
                              DateTime.now(),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                20,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.semiBold,
                              letterSpacing: converter.lt(
                                fontSize: 20,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 0,
                          start: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '총 수행세트',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.transparent,
                                width: converter.w(
                                  4,
                                ),
                                thickness: 0,
                              ),
                              Text(
                                '${practices.fold(0, (total, record) => total + record.sets.length)}세트',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 0,
                          end: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '총 수행볼륨',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.transparent,
                                width: converter.w(
                                  4,
                                ),
                                thickness: 0,
                              ),
                              Text(
                                '${practices.expand((record) => record.sets).fold(0.0, (total, set) => total + (double.tryParse(set.weight) ?? 0.0))}kg',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const BysonSeparator(
                        designWidth: designWidth,
                        designHeight: 8,
                      ),
                      itemBuilder: (context, index) => BysonAspectRatio.padding(
                        designWidth: designWidth,
                        designHeight: 92,
                        designPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        builder: (converter) =>
                            BysonCupertinoButton.outlinedSolid(
                          onPressed: () => context.read<PracticeEditBloc>().add(
                                PracticeEditEvent.toggle(
                                  value: index,
                                ),
                              ),
                          borderRadius: BorderRadius.all(
                            converter.radius(
                              12,
                            ),
                          ),
                          border: switch (state.selections.contains(index)) {
                            true => Border.all(
                                color: const Color(
                                  0xFF3D5DD3,
                                ),
                                width: converter.h(
                                  1,
                                ),
                              ),
                            false => Border.all(
                                color: const Color(
                                  0xFFE5E5EC,
                                ),
                                width: converter.h(
                                  1,
                                ),
                              ),
                          },
                          color: switch (state.selections.contains(index)) {
                            true => const Color(
                                0xFFF1F5FD,
                              ),
                            false => Colors.white,
                          },
                          child: Stack(
                            children: [
                              PositionedDirectional(
                                top: converter.h(
                                  16,
                                ),
                                start: converter.w(
                                  16,
                                ),
                                width: converter.w(
                                  60,
                                ),
                                height: converter.h(
                                  60,
                                ),
                                child: Assets.image.imgPractice.image(
                                  width: converter.w(
                                    60,
                                  ),
                                  height: converter.h(
                                    60,
                                  ),
                                  alignment: Alignment.center,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              PositionedDirectional(
                                top: converter.h(
                                  32.5,
                                ),
                                start: converter.w(
                                  92,
                                ),
                                end: converter.w(
                                  16,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.practices[index].name,
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
                                        letterSpacing: converter.lt(
                                          fontSize: 18,
                                          percent: -2,
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: Colors.transparent,
                                      width: converter.w(
                                        8,
                                      ),
                                      thickness: 0,
                                    ),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: const Color(
                                          0xFFC7D7F6,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          converter.radius(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: converter.w(
                                            6,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            state.practices[index].category,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                12,
                                              ),
                                              color: const Color(
                                                0xFF3D5DD3,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.regular,
                                              letterSpacing: converter.lt(
                                                fontSize: 12,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              PositionedDirectional(
                                top: converter.vcy(
                                  32,
                                ),
                                end: converter.w(
                                  16,
                                ),
                                width: converter.w(
                                  28,
                                ),
                                height: converter.h(
                                  28,
                                ),
                                child: BysonSwitcher(
                                  keys: () => state.selections.contains(index),
                                  builder: (value) => Checkbox(
                                    checkColor: switch (value) {
                                      true => Colors.white,
                                      false => const Color(
                                          0xFF4F4F4F,
                                        ),
                                    },
                                    activeColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    onChanged: (value) =>
                                        context.read<PracticeEditBloc>().add(
                                              PracticeEditEvent.toggle(
                                                value: index,
                                              ),
                                            ),
                                    value: value,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: practices.length,
                      shrinkWrap: true,
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: BysonAspectRatio.padding(
                designWidth: designWidth,
                designHeight: 16 + 60 + 16,
                designPadding: const EdgeInsets.only(
                  top: 16,
                  left: 20,
                  right: 20,
                  bottom: 16,
                ),
                builder: (converter) =>
                    BlocBuilder<PracticeEditBloc, PracticeEditState>(
                  buildWhen: (previous, current) =>
                      (previous.selections != current.selections),
                  builder: (context, state) => BysonSwitcher(
                    keys: () => state.selections.isEmpty,
                    builder: (value) => BysonCupertinoButton.solid(
                      onPressed: () => switch (value) {
                        true => null,
                        false => App.instance.navigator.pop(
                            state.selections,
                          ),
                      },
                      color: switch (value) {
                        true => const Color(
                            0xFF303F9F,
                          ).withOpacity(
                            0.5,
                          ),
                        false => const Color(
                            0xFF303F9F,
                          ),
                      },
                      borderRadius: BorderRadius.all(
                        converter.radius(
                          12,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '종목 선택 완료',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // height: 1.5,
                            fontSize: converter.h(
                              18,
                            ),
                            color: Colors.white,
                            fontWeight: FontWeightAlias.regular,
                            letterSpacing: converter.lt(
                              fontSize: 18,
                              percent: -2,
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
      );
}
