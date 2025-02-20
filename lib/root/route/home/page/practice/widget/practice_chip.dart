import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

// summary_tile 하단에 어떤 운동인지 알려주는 칩

class PracticeChip extends StatelessWidget {
  const PracticeChip({
    required this.text,
    required this.icon,
    super.key,
  });

  final String text;
  final AssetGenImage icon;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(
            0xFFF1F5FD,
          ),
          borderRadius: BorderRadius.circular(
            App.instance.overlay.relativeScreenHeight(
              4,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: App.instance.overlay.relativeScreenHeight(
              4,
            ),
            horizontal: App.instance.overlay.relativeScreenHeight(
              12,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon.image(
                alignment: Alignment.centerLeft,
                width: App.instance.overlay.relativeScreenWidth(
                  20,
                ),
                height: App.instance.overlay.relativeScreenHeight(
                  20,
                ),
              ),
              VerticalDivider(
                color: Colors.transparent,
                width: App.instance.overlay.relativeScreenWidth(
                  4,
                ),
                thickness: 0,
              ),
              Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: App.instance.overlay.relativeScreenHeight(
                    12,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
        ),
      );
}
