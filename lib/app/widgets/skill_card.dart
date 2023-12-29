import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/models/skills.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skill,
  });

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      hoverColor: Colors.orange.withAlpha(15),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: SvgPicture.asset(
                skill.logoPath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(skill.name)
          ],
        ),
      ),
    );
  }
}
