import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/route/notification/page/body_guide/body_guide_bloc.dart';
import 'package:app/root/route/home/route/notification/page/my_activity/my_activity_bloc.dart';
import 'package:app/root/route/home/route/notification/widget/notification_list_tile.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class BodyGuidePage extends StatelessWidget {
  const BodyGuidePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => _buildContent(
        context: context,
      );

  Widget _buildContent({
    required BuildContext context,
  }) =>
      ColoredBox(
        color: Colors.white,
        child: BlocBuilder<BodyGuideBloc, BodyGuideState>(
          buildWhen: (previous, current) =>
              (previous.elements != current.elements),
          builder: (context, state) => ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.elements.length,
            physics: const ClampingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            itemBuilder: (context, index) => NotificationListTile(
              read: state.elements[index].read,
              title: state.elements[index].title,
              subTitle: state.elements[index].subTitle,
              createdAt: state.elements[index].createdAt,
            ),
          ),
        ),
      );

  Widget _buildEmpty({
    required BuildContext context,
  }) =>
      Center(
        child: BysonAspectRatio(
          designWidth: designWidth,
          designHeight: 109,
          builder: (converter) => Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  IconsaxPlusLinear.notification,
                  size: converter.h(
                    48,
                  ),
                  color: const Color(
                    0xFF999999,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '알림이 없어요.\n기록하고 알림을 받아보세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(
                      16,
                    ),
                    color: const Color(
                      0xFF999999,
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
      );
}
