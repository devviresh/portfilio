import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/models/services.dart';
import 'package:my_portfolio/app/models/skills.dart';
import 'package:my_portfolio/app/models/socials.dart';
import 'package:my_portfolio/app/screens/project_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/projects.dart';
import '../widgets/navbar.dart';
import '../widgets/project_card.dart';
import '../widgets/service_card.dart';
import '../widgets/skill_card.dart';
import '../widgets/social_link.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 100),
        children: [
          /// Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
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
                              child: const Text('Contact me')),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),

          /// Skills
          Container(
            color: AppColors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            child: Column(
              children: [
                const Text(
                  'Skills',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
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
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),

          /// Projects
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
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
                GridView(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 30,
                            maxCrossAxisExtent: 360),
                    children: [
                      for (int i = 0; i < projects.length; i++)
                        ProjectCard(
                          project: projects[i],
                        ),
                    ]),
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
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            child: Column(
              children: [
                const Text(
                  'Services',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
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

          /// Bottom bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.secondary,
                AppColors.secondary,
              ],
            )),
            child: Row(
              children: [
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Viresh Dev',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('Vaishali, Bihar, India'),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email_rounded),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('vireshdev5e@gmail.com'),
                        ],
                      ),
                    ]),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Connect',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < socials.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: SocialLink(
                              social: socials[i],
                            ),
                          ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          /// Copyright
          AppBar(
            backgroundColor: AppColors.secondary,
            centerTitle: true,
            title: const Text('END OF THE ERA!'),
          )
        ],
      ),
    );
  }
}
