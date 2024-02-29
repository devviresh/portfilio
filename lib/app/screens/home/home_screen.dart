import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/constants/responsive.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/opensource.dart';
import 'package:my_portfolio/app/models/services.dart';
import 'package:my_portfolio/app/models/skills.dart';
import 'package:my_portfolio/app/screens/project/project_screen.dart';
import '../../models/projects.dart';
import '../../common_widgets/bottom_bar.dart';
import '../../common_widgets/nav/nav_drawer.dart';
import '../../common_widgets/nav/navbar.dart';
import '../../common_widgets/open_source_card.dart';
import '../../common_widgets/project/project_card.dart';
import '../../common_widgets/service_card.dart';
import '../../common_widgets/skill/skill_card.dart';
import 'widgets/intro_widget.dart';
import 'widgets/profile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      endDrawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Heading
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: EdgeInsets.symmetric(
                vertical: Screen.isWeb(context) ? 100 : 50,
                horizontal: 30,
              ),
              child: Flex(
                direction:
                    Screen.isWeb(context) ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Profile
                  Screen.isWeb(context)
                      ? const Flexible(
                          child: ProfileWidget(
                            size: 150,
                          ),
                        )
                      : const ProfileWidget(
                          size: 120,
                        ),

                  Screen.isWeb(context) ? const SBW50() : const SBH50(),

                  /// Introduction
                  Screen.isWeb(context)
                      ? const Flexible(
                          flex: 2,
                          child: IntroWidget(),
                        )
                      : const IntroWidget()
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

            /// Open source
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                children: [
                  const SBH20(),
                  const Text(
                    'Open Source / Freelance',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  GridView.builder(
                    itemCount: opensources.length,
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Screen.isWeb(context)
                          ? 3
                          : Screen.isTablet(context)
                              ? 2
                              : 1,
                      childAspectRatio: 3,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                    ),
                    itemBuilder: (context, index) {
                      return OpenSourceCard(
                        project: opensources[index],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
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
