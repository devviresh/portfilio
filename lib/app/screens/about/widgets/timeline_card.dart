import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/constants/responsive.dart';
import 'package:my_portfolio/app/models/timeline_data.dart';

import '../../../constants/theme.dart';

class TimeLineCard extends StatelessWidget {
  const TimeLineCard({
    super.key,
    required this.timeline,
  });

  final TimeLineData timeline;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin:
          EdgeInsets.fromLTRB(20, 10, Screen.isMobile(context) ? 0 : 20, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: AppColors.blueBorder),
          boxShadow: const [
            BoxShadow(
              color: AppColors.background,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(children: [
        /// Image
        SizedBox(
          height: Screen.isWeb(context)
              ? 100
              : Screen.isTablet(context)
                  ? 80
                  : 60,
          width: Screen.isWeb(context)
              ? 100
              : Screen.isTablet(context)
                  ? 80
                  : 60,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.asset(
              timeline.imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),

        ///Details
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Title
                Text(
                  timeline.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),

                /// Company / College
                Text(
                  timeline.company,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),

                ///Location
                Text(
                  timeline.location,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const SBH5(),

                /// Period,other
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          size: 20,
                        ),
                        Text(
                          timeline.period,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     const Icon(Icons.workspace_premium_outlined),
                    //     Text(
                    //       timeline.achievement ?? '',
                    //       style: const TextStyle(fontWeight: FontWeight.w500),
                    //     ),
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
