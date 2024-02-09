import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/theme.dart';

class SkillBack extends StatelessWidget {
  const SkillBack({super.key, required this.description, required this.url});

  final String description;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: AppColors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(1, 3),
                ),
              ]),

          /// 100 characters
          child: Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 8,
          ),
        ),
        if (url.isNotEmpty)
          Positioned(
              bottom: 5,
              right: 5,
              child: IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(url),
                  );
                },
                icon: const Icon(
                  Icons.arrow_circle_right_rounded,
                  color: AppColors.primaryDark,
                ),
              ))
      ],
    );
  }
}
