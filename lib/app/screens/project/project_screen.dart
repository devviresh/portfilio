import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/models/projects.dart';
import 'package:my_portfolio/app/widgets/bottom_bar.dart';

import '../../widgets/nav/nav_drawer.dart';
import '../../widgets/nav/navbar.dart';
import '../../widgets/project/project_card_horizontal.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      endDrawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Projects',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              child: ListView.separated(
                shrinkWrap: true,
                // primary: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return ProjectCardHorizontal(project: projects[index]);
                },
                separatorBuilder: (context, index) =>
                    const SBH30(), // Adjust the height as needed
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
