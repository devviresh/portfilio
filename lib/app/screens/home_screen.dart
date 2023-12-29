import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/app/models/skills.dart';

import '../models/projects.dart';
import '../widgets/project_card.dart';
import '../widgets/skill_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 240,
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
            )),
        elevation: 5.0,

        /// Logo
        leading: Row(
          children: [
            const SizedBox(
              width: 200,
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),

        /// Name
        title: const Text('Viresh Dev'),

        /// Pages
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('About'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Projects'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Blog'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contact'),
          ),
          const SizedBox(
            width: 200,
          ),
        ],
      ),
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
                  child: Image.asset('./assets/image/profile.png'),
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
                        'A self-taught Full stack and a Flutter Developer based in Vaishali (IN).\nI love building apps and websites that can solve real-world problems, and add value to society.',
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
                              onPressed: () {},
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
            color: Colors.deepOrange.withAlpha(10),
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
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 180),
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
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 350),
                    children: [
                      for (int i = 0; i < projects.length; i++)
                        ProjectCard(
                          project: projects[i],
                        ),
                    ]),
              ],
            ),
          ),

          /// Services

          /// Bottom bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 220),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 240, 208, 161),
                Color.fromARGB(255, 255, 185, 164),
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
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          './assets/svg/git.svg',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SvgPicture.asset(
                          './assets/svg/ig.svg',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SvgPicture.asset(
                          './assets/svg/ln.svg',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SvgPicture.asset(
                          './assets/svg/x.svg',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SvgPicture.asset(
                          './assets/svg/fb.svg',
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          /// Copyright
          AppBar()
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.connect_without_contact_rounded),
      //   onPressed: () {},
      // ),
    );
  }
}
