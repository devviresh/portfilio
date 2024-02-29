import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/responsive.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/timeline_data.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'timeline_card.dart';

class CustomTimeline extends StatelessWidget {
  const CustomTimeline({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.icon,
    required this.even,
    required this.timeline,
  });
  final bool isFirst;
  final bool isLast;
  final IconData icon;
  final bool even;
  final TimeLineData timeline;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment:
          Screen.isWeb(context) ? TimelineAlign.center : TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      endChild: Screen.isWeb(context)
          ? even
              ? TimeLineCard(
                  timeline: timeline,
                )
              : null
          : TimeLineCard(
              timeline: timeline,
            ),
      startChild: Screen.isWeb(context)
          ? even
              ? null
              : TimeLineCard(
                  timeline: timeline,
                )
          : null,
      indicatorStyle: IndicatorStyle(
          width: 30,
          height: 30,
          color: AppColors.darkPrimary,
          iconStyle: IconStyle(iconData: icon, color: Colors.white)),
      beforeLineStyle: const LineStyle(color: AppColors.darkPrimaryDark),
    );
  }
}
