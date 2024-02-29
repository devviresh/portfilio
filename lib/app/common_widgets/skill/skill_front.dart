import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/theme.dart';
import 'skill_card.dart';

class SkillFront extends StatelessWidget {
  const SkillFront({
    super.key,
    required this.isHovered,
    required this.widget,
  });

  final bool isHovered;
  final SkillCard widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      // transform: Matrix4.identity()..rotateY(isHovered ? 0.4 : 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: isHovered
            ? [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(1, 3),
                ),
              ]
            : [],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Transform.scale(
                scale: isHovered ? 1.05 : 1.0,
                child: SvgPicture.asset(
                  widget.skill.logoPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            height: isHovered ? 12 : 10,
          ),
          Text(
            widget.skill.name,
          ),
        ],
      ),
    );
  }
}
