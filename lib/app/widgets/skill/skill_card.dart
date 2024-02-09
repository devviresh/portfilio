import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/models/skills.dart';

import 'skill_back.dart';
import 'skill_front.dart';

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
        // flipOnTouch: false,
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        side: CardSide.FRONT,
        back: SkillBack(
          description: widget.skill.description,
          url: widget.skill.url,
        ),
        front: SkillFront(isHovered: isHovered, widget: widget),
      ),
    );
  }
}
