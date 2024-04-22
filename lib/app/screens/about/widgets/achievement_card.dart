import 'package:flutter/material.dart';
import 'package:my_portfolio/app/models/achievements.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/theme.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
    required this.achievement,
  });

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blueAccent,
          border: Border.all(color: AppColors.blueBorder),
          boxShadow: const [
            BoxShadow(
              color: AppColors.background,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          Expanded(
            child: Text(
              achievement.description,
              style: TextStyle(fontSize: 15),
            ),
          ),
          IconButton(
              onPressed: () async {
                await launchUrl(Uri.parse(
                  achievement.link,
                ));
              },
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                color: AppColors.primaryDark,
              ))
        ],
      ),
    );
  }
}
