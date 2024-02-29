import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/opensource.dart';

class OpenSourceCard extends StatelessWidget {
  const OpenSourceCard({
    super.key,
    required this.project,
  });

  final OpenSource project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blueAccent,
          border: Border.all(color: AppColors.blueBorder),
          boxShadow: const [
            BoxShadow(
              color: AppColors.background,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image.asset(
                project.imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SBW10(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    project.title,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SBH5(),
                  Text(
                    project.description,
                    maxLines: 3,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
