import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/skills.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({
    Key? key,
    required this.skill,
  }) : super(key: key);

  final Skill skill;

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      onHover: (hover) {
        setState(() {
          isHovered = hover;
        });
      },
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        side: CardSide.FRONT,
        back: SkillBack(
          description: widget.skill.description,
        ),
        front: SkillFront(isHovered: isHovered, widget: widget),
      ),
    );
  }
}

class SkillBack extends StatelessWidget {
  const SkillBack({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Text(description),
    );
  }
}

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
          SizedBox(
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
