import 'package:flutter/material.dart';
import 'package:my_portfolio/app/models/projects.dart';
import 'package:my_portfolio/app/widgets/bottom_bar.dart';

import '../widgets/navbar.dart';
import '../widgets/project_card_horizontal.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
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
            ListView.separated(
              shrinkWrap: true,
              primary: true,
              padding: const EdgeInsets.fromLTRB(200, 20, 200, 50),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return ProjectCardHorizontal(project: projects[index]);
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 20.0), // Adjust the height as needed
            ),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
