import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0XFFFFF4F6),
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
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
                scale: isHovered
                    ? 1.05
                    : 1.0, // Adjust the scaling factor as needed
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
      ),
    );
  }
}
