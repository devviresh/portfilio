import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/services.dart';
import 'package:my_portfolio/app/models/skills.dart';
import 'package:my_portfolio/app/screens/project_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/projects.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/nav/navbar.dart';
import '../widgets/project/project_card.dart';
import '../widgets/service_card.dart';
import '../widgets/skill/skill_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Heading
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding:
                  const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Profile
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: AppColors.primaryDark,
                    child: CircleAvatar(
                      radius: 148,
                      backgroundColor: AppColors.secondary,
                      child: CircleAvatar(
                        radius: 146,
                        child: Image.asset('./assets/image/profile.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),

                  /// Introduction
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'I\'m Viresh Dev',
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'A self-taught Full stack and a Flutter Developer based in Vaishali (IN).\nI love building apps and websites that can solve real-world problems, \nand add value to society.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: [
                            /// Resume
                            FilledButton(
                                onPressed: () async {
                                  await launchUrl(Uri.parse(
                                      "https://docs.google.com/document/d/1tdOiWysK3fz6yYDX1QZC-4UPZAzSXpiwaPffWyuYvec/edit?usp=sharing"));
                                },
                                child: const Text('View Resume')),
                            const SizedBox(
                              width: 10,
                            ),

                            /// Contact form
                            FilledButton.tonal(
                                onPressed: () {},
                                child: const Text('Get in Touch')),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Skills
            Container(
              color: AppColors.blueAccent,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1150),
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Tech Skills',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GridView(
                          shrinkWrap: true,
                          primary: false,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  childAspectRatio: 0.85,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  maxCrossAxisExtent: 170),
                          children: [
                            for (int i = 0; i < skills.length; i++)
                              SkillCard(
                                skill: skills[i],
                              ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),

            /// Projects
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Projects',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            // childAspectRatio: 0.7,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 30,
                            mainAxisExtent: 480,
                            maxCrossAxisExtent: 340),
                    itemBuilder: (context, index) =>
                        ProjectCard(project: projects[index]),
                    itemCount: 6,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProjectScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 130),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.blueBorder),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text('View More'),
                    ),
                  )
                ],
              ),
            ),

            /// Services
            Container(
              color: AppColors.blueAccent,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1150),
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GridView(
                          shrinkWrap: true,
                          primary: false,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  childAspectRatio: 0.9,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 30,
                                  maxCrossAxisExtent: 360),
                          children: [
                            for (int i = 0; i < services.length; i++)
                              ServiceCard(
                                service: services[i],
                              )
                          ]),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// Bottom bar
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
