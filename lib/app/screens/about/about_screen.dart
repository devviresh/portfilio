import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/common_widgets/nav/navbar.dart';
import 'package:my_portfolio/app/models/achievements.dart';
import 'package:my_portfolio/app/models/timeline_data.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/responsive.dart';
import '../../constants/theme.dart';
import '../../common_widgets/bottom_bar.dart';
import '../../common_widgets/nav/nav_drawer.dart';
import 'widgets/achievement_card.dart';
import 'widgets/custom_timeline.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      endDrawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// About
            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: EdgeInsets.symmetric(
                vertical: Screen.isWeb(context) ? 100 : 50,
                horizontal: 30,
              ),
              child: Flex(
                direction:
                    Screen.isMobile(context) ? Axis.vertical : Axis.horizontal,
                children: [
                  /// Introduction
                  Expanded(
                    flex: Screen.isMobile(context) ? 0 : 2,
                    child: Column(
                      crossAxisAlignment: Screen.isMobile(context)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: Screen.isMobile(context),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SizedBox(
                              width: 250,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                      './assets/image/profileblack.jpeg')),
                            ),
                          ),
                        ),
                        const Text(
                          'Viresh Dev',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Software Engineer',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                            const SBW10(),
                            SizedBox(
                                height: 18,
                                width: 27,
                                child: SvgPicture.asset('./assets/svg/in.svg')),
                          ],
                        ),
                        const SBH10(),
                        const Text(
                          'Hey! I\'m Viresh Dev an emerging software craftsman with twelve moons of experience in the mystical arts of coding. From my recent journey as a graduate, I\'ve honed my skills in Full Stack Development (Flutter + MERN). \nEager to embark on new adventures, I bring youthful enthusiasm and a hunger for innovation to every project. With a blend of creativity and technical acumen, I\'m ready to contribute fresh perspectives and diligent work ethic to collaborative teams. \nI seek to immerse myself in dynamic environments where I can continue learning and making meaningful contributions to transformative projects.',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SBH30(),
                        Align(
                          alignment: Screen.isMobile(context)
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                SizedBox(
                                  height: 35.0,
                                  width: 115.0,
                                  child: FilledButton(
                                    onPressed: () async {
                                      await launchUrl(Uri.parse(
                                          'https://api.whatsapp.com/send?phone=+916206665898&text=Hello Viresh!'));
                                    },
                                    style: FilledButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: const Text('Say Hello!'),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: -30,
                                  child: SvgPicture.asset(
                                    './assets/svg/wp.svg',
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SBW50(),

                  /// Image
                  Visibility(
                    visible: !Screen.isMobile(context),
                    child: Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Image.asset('./assets/image/profileblack.jpg')),
                    ),
                  )
                ],
              ),
            ),
            const SBH30(),

            /// Education
            Container(
              color: AppColors.blueAccent,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1150),
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Journey',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const SBH30(),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: timelines.length,
                        itemBuilder: (context, index) => CustomTimeline(
                            isFirst: index == 0,
                            isLast: index == timelines.length - 1,
                            icon:
                                timelines[index].workType == WorkType.education
                                    ? Icons.school
                                    : Icons.work_history,
                            even: index % 2 == 0,
                            timeline: timelines[index]),
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// Interests
            // Container(
            //   constraints: const BoxConstraints(maxWidth: 1150),
            //   padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            //   child: const Text(
            //     'Interests',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            //   ),
            // ),

            Container(
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                children: [
                  const SBH20(),
                  const Text(
                    'Hall of Fame',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // GridView.builder(
                  //   itemCount: opensources.length,
                  //   shrinkWrap: true,
                  //   primary: false,
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: Screen.isWeb(context)
                  //         ? 3
                  //         : Screen.isTablet(context)
                  //             ? 2
                  //             : 1,
                  //     childAspectRatio: 3,
                  //     crossAxisSpacing: 30,
                  //     mainAxisSpacing: 30,
                  //   ),
                  //   itemBuilder: (context, index) {
                  //     return OpenSourceCard(
                  //       project: opensources[index],
                  //     );
                  //   },
                  // ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: achievements.length,
                    itemBuilder: (context, index) {
                      return AchievementCard(
                        achievement: achievements[index],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),

            /// Bottom Bar
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
